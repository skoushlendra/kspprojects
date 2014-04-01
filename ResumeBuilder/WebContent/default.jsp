<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Builder</title>
<link rel="icon" href="images/favicon.ico">
<link href="css/style.css" rel="Stylesheet" type="text/css">
</head>
<body>
	<s:div cssClass="short-header">
		<s:div cssClass="container">
			<s:div cssClass="left">
				<s:label>Resume Builder</s:label>
			</s:div>
			<s:div cssClass="right">
				<s:div cssClass="login">
					<s:a id="login-btn" href="#">Sign In</s:a>
					<s:a id="register-btn" href="#">Create Account</s:a>
				</s:div>
			</s:div>
		</s:div>
	</s:div>
	<s:div cssClass="body">
		<s:div cssClass="container">
			<s:div cssClass="smartview">
				<s:div cssClass="sv-logo left">logo</s:div>
				<s:div cssClass="sv-content right">Content</s:div>
			</s:div>
			<table class="overview">
				<tr>
					<td align="left"><s:div cssClass="job-seeker">
							<s:div cssClass="left"></s:div>
							<s:div cssClass="right"></s:div>
						</s:div></td>
					<td align="center"><s:div cssClass="create-resume">
							<s:div cssClass="left"></s:div>
							<s:div cssClass="right"></s:div>
						</s:div></td>
					<td align="right"><s:div cssClass="update-resume">
							<s:div cssClass="left"></s:div>
							<s:div cssClass="right"></s:div>
						</s:div>
					</td>
				</tr>
			</table>
		</s:div>
	</s:div>
	<s:div id="footer">
		<s:div cssClass="container">
			<div class="links pull-left"><a href="/about.html">About Us |</a><a href="#" class="contact-us-link">Contact Us |</a><a href="/terms.html">Terms &amp; Conditions |</a><a href="/blog">Blog |</a><a href="/help">Help &amp; Support</a></div>
		</s:div>
	</s:div>
</body>
</html>