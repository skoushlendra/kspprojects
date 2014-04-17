<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
-->
<%@taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%@page import="com.ckeditor.CKEditorConfig"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Creating CKEditor Instances &mdash; CKEditor Sample</title>
	<meta content="text/html; charset=utf-8" http-equiv="content-type"/>
</head>
<body>
	<!-- This <div> holds alert messages to be display in the sample page. -->
	<div id="alerts">
		<noscript>
			<p>
				<strong>CKEditor requires JavaScript to run</strong>. In a browser with no JavaScript
				support, like yours, you should still see the contents (HTML data) and you should
				be able to edit it normally, without a rich editor interface.
			</p>
		</noscript>
	</div>
	<!-- This <fieldset> holds the HTML code that you will usually find in your pages. -->
	<form action="successfirst.jsp" method="post">
		<p>
			<label for="editor1">Editor 1:</label>
		</p>
		<p>
			<% 
				String value = "This is <strong>Resume Builder</strong> textarea.";
				
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
			<input type="submit" value="Submit"/>
		</p>
	</form>
</body>
</html>