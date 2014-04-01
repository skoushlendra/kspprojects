<%@ taglib uri="/struts-tags" prefix="s" %>
<s:div id="signin" cssClass="user">
	<s:div cssClass="popup_box">
		<s:div cssClass="close_login">
			<s:a href="#close"><img src="images/close_button.png"></s:a>
		</s:div>
		<ul class="nav_tabs">
			<li><a href="#signin">Sign In</a> <img class="arrow-filled" src="images/arrow_menu_filled.png"></li>
			<li><a href="#signup">New user? Create account.</a></li>
		</ul>
		<s:div cssClass="forms_div">
			<table id="signin_table" border="0">
				<tr>
					<td width="50%" valign="top" style="border-right: 1px solid #ccc;">
						<s:form action="login" id="login_form" theme="simple">
							<table width="80%" border="0" style="font-size: 12px; color: #555; font-family: OpenSans-Semibold, Arial, sans-serif;">
								<tr>
									<td valign="top"><span class="error1"></span></td>
								</tr>
								<tr>
									<td valign="top">Enter Your Email</td>
								</tr>
								<tr>
									<td valign="top">
										<s:textfield name="username" maxlength="15" /> 
										<span class="error">
											<s:fielderror fieldName="username" errorPosition="bottom"></s:fielderror>
										</span>
									</td>
								</tr>
								<tr>
									<td valign="top">Enter Your Password</td>
								</tr>
								<tr>
									<td valign="top">
										<s:password name="password" maxlength="15" />
										<span class="error"></span>
									</td>
								</tr>
								<tr>
									<td valign="top" align="right">
										<s:a href="#">Forgot password?</s:a>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<s:submit id="submit" value="Login" />
									</td>
								</tr>
							</table>
						</s:form>
					</td>
					<td width="50%" valign="top">
						<ul class="login_msg">
							<li>
								<b>Post signing in you will have<br> all new 
								<a href="#" target="_blank">Paytm Cash Wallet</a> Advantages
							</b><br> <br></li>
							<li>- Pay your bills using Paytm cash !</li>
							<li>- Instant Reusable Refunds for all Paytm services</li>
							<li>- Use Paytm Cash on other websites</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</table>
		</s:div>
	</s:div>
</s:div>
<s:div id="signup" cssClass="user">
	<s:div cssClass="popup_box">
		<s:div cssClass="close_login">
			<s:a href="#close"><img src="images/close_button.png"></s:a>
		</s:div>
		<ul class="nav_tabs">
			<li><a href="#signin">Sign In</a></li>
			<li><a href="#signup">New user? Create account.</a><img class="arrow-filled" src="images/arrow_menu_filled.png"></li>
		</ul>
		<s:div cssClass="forms_div">
			<table id="signup_table" border="0">
				<tr>
					<td width="50%" height="65%" valign="top"
						style="border-right: 1px solid #ccc;">
						<form name="" method="" id="login_form">
							<table width="80%" border="0" style="font-size: 12px; color: #555; font-family: OpenSans-Semibold, Arial, sans-serif;">
								<tr>
									<td valign="top"><span class="error1">Please
										enter valid Username and Password.</span></td>
								</tr>
								<tr>
									<td valign="top">Enter Your Mobile Number</td>
								</tr>
								<tr>
									<td valign="top"><input type="text"
										id="username" name="username" value=""> <span
											class="error">Please enter valid Username and
										Password.</span></td>
								</tr>
								<tr>
									<td valign="top">Enter Your Email</td>
								</tr>
								<tr>
									<td valign="top"><input type="text"
										id="username" name="username" value=""> <span
											class="error">Please enter valid Username and
										Password.</span></td>
								</tr>
								<tr>
									<td valign="top">Enter Your Password</td>
								</tr>
								<tr>
									<td valign="top"><input type="password"
										id="password" name="password" maxlength="15"> <span
											class="error">Please enter valid Username and
										Password.</span></td>
								</tr>
								<tr>
									<td valign="top"><input type="submit"
										id="submit" name="submit" value="Create Account"></td>
								</tr>
							</table>
						</form>
					</td>
					<td width="50%" height="65%" valign="top">
						<ul class="login_msg">
							<li><b>Post signing in you will have<br> all new <a
									href="#">Resume Builder</a> Advantages
							</b><br> <br></li>
							<li>- Pay your bills using Paytm cash !</li>
							<li>- Instant Reusable Refunds for all Paytm services</li>
							<li>- Use Paytm Cash on other websites</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</table>
		</s:div>
	</s:div>
</s:div>