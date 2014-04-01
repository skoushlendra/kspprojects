<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Builder</title>

<link rel="icon" href="images/favicon.png">
<link href="css/style.css" rel="Stylesheet" type="text/css">
<link href="css/login-popup.css" rel="Stylesheet" type="text/css">
<style type="text/css">
	#map-container {
		padding: 30px;
		border: 1px double solid #ececec; 
	}
	
	#map {
		width: 400px;
		height: 300px;
	}
</style>
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
		<s:div cssClass="container">
			<s:div cssClass="smartview">
				<s:div cssClass="sv-logo left">logo</s:div>
				<s:div cssClass="sv-content right">Content</s:div>
			</s:div>
			<table class="overview">
				<tr>
					<td align="left" width="33%" height="100%" valign="top">
						<s:div cssClass="job-seeker">
							<s:div cssClass="top">
								<img src="images/job-icon.png" alt="Job Search" class="three-icons" />
							</s:div>
							<s:div cssClass="bottom">
								<p>
									Whether you're looking for your very first job, switching careers, or re-entering the job market after an extended absence, finding a job requires two main tasks: understanding yourself and understanding the job market. Presuming you've already chosen a career and are currently searching for jobs, here are several ways to actually get a job.
								</p>
							</s:div>
						</s:div>
					</td>
					<td align="center" width="34%" height="100%" valign="top">
						<s:div cssClass="create-resume">
							<s:div cssClass="top">
								<img src="images/edit-icon.png" alt="Create Resume" class="three-icons" />
							</s:div>
							<s:div cssClass="bottom">
								<p>
									A great resume is what will set you apart from the other candidates and ensure you have the best chance at getting offered a position with the company of your dreams. Luckily, creating a resume doesn’t have to be difficult. There are plenty of ways to create a unique and professional resume online so you’ll be prepared for your next employment application and interview. 
								</p>
							</s:div>
						</s:div>
					</td>
					<td align="right" width="33%" height="100%" valign="top">
						<s:div cssClass="update-resume">
							<s:div cssClass="top">
								<img src="images/show-icon.png" alt="Show Resume" class="three-icons" />
							</s:div>
							<s:div cssClass="bottom">
								<p>
									An outstanding resume is the holy grail of all job seekers – something that we all strive for but rarely attain. Hiring managers love to see them too, since they have to wade through a stack of uninspiring ones on a daily basis (and by "stack" I mean a digital stack, or a cluttered inbox rife with attachments). Try Resume Builder and get your smart resume.
								</p>
							</s:div>
						</s:div>
					</td>
				</tr>
			</table>
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