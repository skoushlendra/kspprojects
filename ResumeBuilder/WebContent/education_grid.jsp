<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Builder</title>

<link rel="icon" href="images/favicon.png">
<link href="css/resume_grid.css" rel="Stylesheet" type="text/css">


<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/default.js"></script>

</head>
<body>
	<s:div cssClass="resume_container_div">
		<s:div cssClass="inner_resume_container">
			<h2>Education :-</h2><br />

			<s:div cssClass="button_area">
				<s:a cssClass="grid_button" ><span id="nt_bt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;Next</s:a> 
				<s:a cssClass="grid_button" ><span id="sk_bt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;Skip</s:a> 
				<s:a cssClass="grid_button" ><span id="sv_bt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;Save</s:a> 
				<s:a cssClass="grid_button" ><span id="dt_bt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;Delete</s:a> 
				<s:a cssClass="grid_button" ><span id="add_bt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;Add</s:a>  	
			</s:div>

			<s:div cssClass="rich_text_box">
				<table>
					<thead>
						<tr>
							<th>S.No.</th>
							<th>Qualification Detail</th>
							<th>Board/University</th>
							<th>Passing Year</th>
							<th>Percentage</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>S.No.</td>
							<td>Qualification Detail</td>
							<td>Board/University</td>
							<td>Passing Year</td>
							<td>Percentage</td>
							<td>Delete</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td>S.No.</td>
							<td>Qualification Detail</td>
							<td>Board/University</td>
							<td>Passing Year</td>
							<td>Percentage</td>
							<td>Delete</td>
						</tr>
					</tfoot>
				</table>
			</s:div>
		</s:div>
	</s:div>
</body>
</html>