<%@taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%@page import="com.ckeditor.CKEditorConfig"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String sb = request.getParameter("documentdata");
	String value = null;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ksp12190");
	PreparedStatement pstm = con.prepareCall("insert into checkdata values(?)");
	pstm.setString(1, sb);
	pstm.executeUpdate();
	
	pstm = con.prepareCall("select textarea from checkdata");
	ResultSet rs = pstm.executeQuery();
	
	while(rs.next())
	{
		out.print(sb);	
		value= rs.getString(1);
	}	
%>


<p>
			<label for="editor1">Editor 1:</label>
		</p>
		<p>
			<% 
				
				Map<String, String> attr = new HashMap<String, String>();
				attr.put("rows", "8");
				attr.put("cols", "50");
				
				CKEditorConfig settings = new CKEditorConfig();
				
				List<Object> toobarListSections = new ArrayList<Object>();
				
				HashMap<String, Object> clipboardMap = new HashMap<String, Object>();
				HashMap<String, Object> editingMap = new HashMap<String, Object>();
				HashMap<String, Object> linksMap = new HashMap<String, Object>();
				HashMap<String, Object> insertMap = new HashMap<String, Object>();
				HashMap<String, Object> basicstylesMap = new HashMap<String, Object>();
				HashMap<String, Object> paragraphMap = new HashMap<String, Object>();
				HashMap<String, Object> stylesMap = new HashMap<String, Object>();
				
				List<String> clipboard = new ArrayList<String>();
				List<String> editing = new ArrayList<String>();
				List<String> links = new ArrayList<String>();
				List<String> insert = new ArrayList<String>();
				List<String> basicstyles = new ArrayList<String>();
				List<String> paragraph = new ArrayList<String>();
				List<String> styles = new ArrayList<String>();
				
				clipboard.add("Cut");			
				clipboard.add("Copy");			
				clipboard.add("Paste");			
				clipboard.add("PasteText");
				clipboard.add("-");
				clipboard.add("Undo");			
				clipboard.add("Redo");
				clipboardMap.put("name", "clipboard");	
				clipboardMap.put("items", clipboard);
				
				editing.add("Scayt");	
				editingMap.put("name", "clipboard");	
				editingMap.put("items", editing);
			
				links.add("Link");			
				links.add("Unlink");		
				linksMap.put("name", "clipboard");	
				linksMap.put("items", links);
		
				insert.add("Image");			
				insert.add("Table");		
				insert.add("Specialchar");			
				insert.add("maximize");	
				insertMap.put("name", "clipboard");	
				insertMap.put("items", insert);	

				basicstyles.add("Bold");			
				basicstyles.add("Italic");			
				basicstyles.add("Strike");
				basicstyles.add("removeformat");	
				basicstylesMap.put("name", "clipboard");	
				basicstylesMap.put("items", basicstyles);
				
				paragraph.add("Numberedlist");			
				paragraph.add("Bulletedlist");
				paragraph.add("Outdent");			
				paragraph.add("Indent");	
				paragraph.add("Blockquote");	
				paragraphMap.put("name", "clipboard");	
				paragraphMap.put("items", paragraph);		
				
				styles.add("Styles");				
				styles.add("Format");		
				stylesMap.put("name", "clipboard");	
				stylesMap.put("items", styles);	

				toobarListSections.add(clipboardMap);		
				toobarListSections.add("-");
	
				toobarListSections.add(editingMap);		
				toobarListSections.add("-");
					
				toobarListSections.add(linksMap);		
				toobarListSections.add("-");
				
				toobarListSections.add(insertMap);		
				toobarListSections.add("/");
					
				toobarListSections.add(basicstylesMap);		
				toobarListSections.add("-");
					
				toobarListSections.add(paragraphMap);		
				toobarListSections.add("-");
				
				toobarListSections.add(stylesMap);		
				
				settings.addConfigValue("toolbar", toobarListSections);
			%>
			<ckeditor:editor textareaAttributes="<%=attr %>" basePath="ckeditor/" config="<%=settings %>" editor="documentdata" value="<%= value %>"></ckeditor:editor>
		</p>
</body>
</html>