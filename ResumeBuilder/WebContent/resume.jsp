<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Builder</title>

<link rel="icon" href="images/favicon.png">
<link href="css/style.css" rel="Stylesheet" type="text/css">
<link href="css/login-popup.css" rel="Stylesheet" type="text/css">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/default.js"></script>

</head>
<body>
	<s:include value="/login-popup.jsp"></s:include>	
	<s:div cssClass="short-header">
		<table class="container" style="height: 50px;">
			<tr>
				<td valign="middle"><img alt="Resume Builder" src="images/logo.png" height="50px"/></td>
				<td valign="middle" align="right">
					<s:div cssClass="login">
						<s:if test="#session.status">
							<s:a id="login-btn" cssClass="login-div">Welcome: <s:property value="#session.userData[4]"/></s:a>
						</s:if>
						<s:else>
							<s:a id="register-btn" cssClass="login-div" href="#signup">Create Account</s:a>
						</s:else>
						
						<s:if test="#session.status">
							<s:a id="login-btn" cssClass="login-div" href="logout">Sign Out</s:a>
						</s:if>
						<s:else>
							<s:a id="login-btn" cssClass="login-div" href="#signin">Sign In</s:a>
						</s:else>
						
					</s:div>
				</td>
			</tr>
		</table>
	</s:div>
	<s:div cssClass="body">
	<!-- breadcrumbs -->
		
		<s:div cssClass="breadcrumbs">
				<s:div cssClass="inner_breadcrumbs">Resume Builder - Career Objective</s:div>
		</s:div>
		<br/>
		
	<!-- resume_container -->
		
		<s:div cssClass="resume_div">
			<s:div cssClass="profile_div">
				<s:div cssClass="user_name">
						<b>User Name</b><br/>
						<span>Information</span>
			    </s:div>
			    
			    <s:div cssClass="user_image">
					<img src="images/user_image.png" height="150"/>
			    </s:div>
			    
			    <s:div cssClass="user_details">
					<h3>Profile</h3><br/>
					<table border="0" width="100%" height="200"> 
			<tr>
				<td valign="top" align="left" width="41%" ><b>Company :</b></td>
				<td valign="top" align="left"><i>Infogravity Solutions, Indore</i></td>
			</tr>
			<tr>
				<td valign="top" align="left" width="41%" ><b>Designation :</b></td>
				<td valign="top" align="left"><i>Web Developer</i></td>
			</tr>
			<tr>
				<td valign="top" align="left" width="41%" ><b>Technology :</b></td>
				<td valign="top" align="left"><i>HTML, CSS, Javascript</i></td>
			</tr>
			<tr>
				<td valign="top" align="left" width="41%" ><b>Working From :</b></td>
				<td valign="top" align="left"><i>2 Year</i></td>
			</tr>
			<tr>
				<td valign="top" align="left" width="41%" >&nbsp;</td>
				<td valign="bottom" align="right"><a href="#">+more</a></td>
			</tr>
		</table>			
			    </s:div>
			</s:div>
			
			<s:div cssClass="resume_container_div">
					<s:div cssClass="inner_resume_container">
							<h2>Career Objective :- </h2>
							<s:div cssClass="inner_resume_container"></s:div>
		    		</s:div>
		    </s:div>
		    
		    <s:div cssClass="navigator_div">
		       <s:div cssClass="navigator">
					<ul>
						<li><a href="">Career Objective</a></li>
						<li><a href="">Work Experience</a></li>
						<li><a href="">Skills</a></li>
						<li><a href="">Awards/Achievement</a></li>
						<li><a href="">Education</a></li>
						<li><a href="">Affiliations</a></li>
						<li><a href="">Volunteer Work</a></li>
						<li><a href="">Interests</a></li>
						<li><a href="">References</a></li>
						<li><a href="">Contact Informations</a></li>					
					
					</ul>
				</s:div>
		    </s:div>
		</s:div>
	</s:div>
	<s:div id="footer">
		<s:div cssClass="container">
			<table>
				<tr>
					<td align="center">
						<ul>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
						</ul>
					</td>
					<td align="center">
						<ul>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
						</ul>
					</td>
					<td align="center">
						<ul>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
							<li><s:a href="#">About Us</s:a></li>
						</ul>
					</td>
					<td align="center">
						<ul>
							<li><s:a href="#">Connect</s:a></li>
							<li><s:a href="#">Facebook</s:a></li>
							<li><s:a href="#">Linkedin</s:a></li>
							<li><s:a href="#">Twitter</s:a></li>
							<li><s:a href="#">Google+</s:a></li>
						</ul>
					</td>
				</tr>
			</table>
		</s:div>
	</s:div>
</body>
</html>