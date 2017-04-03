<% If Session("rdLogonReturnURL") = "" 
	Session("rdLogonReturnURL") = "rdPage.aspx"
End If %>

<html>
	<head>
		<META name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>TMA Grain Portal</title>
		<style type="text/css">			
			BODY
			{
				font-family: Verdana, Arial, Helvetica, sans-serif;
				font-size: 14px;				
				margin:50px 0px; padding:0px;
				/*background-color: #F7F7F7;*/
				background: url("_SupportFiles/Wheat.jpg");
				-webkit-background-size: 100%; 
			    -moz-background-size: 100%; 
			    -o-background-size: 100%; 
			    background-size: 100%; 
			    -webkit-background-size: cover; 
			    -moz-background-size: cover; 
			    -o-background-size: cover; 
			    background-size: cover;		
			}	
			
			TABLE
			{
				font-family: Verdana, Arial, Helvetica, sans-serif;
				font-size: 12px;
			}

			#mobileHeader
			{
				display: none;
			}
			
			#rdUserName, #rdPassword
			{
				width: 15%px;
			}
			
			#mainTable
			{				
				margin: 0px;
				padding: 0px;
				width: 100%;
				height: 90%;
			}
			
			#mainCell
			{
				margin: 20px;
				padding-top: 80px;
				text-align: center;
			}
												
			#logonPanel
			{					
				width: 350px;
				margin: auto;
				background-color: #F7F7F7;
				border: solid #d9bc4a 1px;
				
				/* Rounding */
				-webkit-border-radius: 4px;
				-moz-border-radius: 4px;
				border-radius: 4px;
			}
			
			#logonPanel table
			{
				margin: 0px;
				padding: 0px;
				width: 100%;				
			}
						
			#logonHeaderCell
			{
				margin: 0px;
				padding: 6px;				
				background-color: #d9bc4a;
			}
			
			.LogonHeader
			{
				font-size: 14pt;
				font-weight: bold;
				color: #FFFFFF;				
			}
			
			#formCell
			{				
				padding: 20px 20px 5px 20px;				
			}
			
			.LabelCell
			{
				text-align: right;
			}
			
			#errorCell
			{
				text-align: center;
				padding-top: 5px;
				color: #790619;				
			}
			#footer
			{
				text-align: center;
				vertical-align: bottom;
				color: #ffffff;
			}
			@media only screen and (max-device-width: 480px) 
			{
				#mobileHeader
				{
					display: block;
					padding: 20px 20px 5px 20px;
				}

			}
			
		</style>	
	</head>
	<body onkeypress="if (event.keyCode==13){frmLogon.submit()}" onload="document.getElementById('rdUsername').focus()" >
		<div id="mobileHeader"><img src="_SupportFiles\TMA_LogoHorWht.png" class="img-responsive" /></div>
		<table id="mainTable" cellspacing="0" >
			<tr>
				<td id="mainCell" colspan="2" >					
					<div id="logonPanel" >
						<table cellspacing="0" >
							<tr>
								<td id="logonHeaderCell" ><span class="LogonHeader">Logon</span></td>
							</tr>
							<tr>
								<td id="formCell"> 
									<form id="frmLogon" action='<%=Session("rdLogonReturnUrl") %>' method="post">
										<table>
											<tr>
												<td class="LabelCell" >Username:</td>
												<td>
													<input id="rdUsername" type="text" name="rdUsername"/>
													<input id="rdFormLogon" type="hidden" name="rdFormLogon" value="True"/>
												</td>
											</tr>
											<tr>
												<td class="LabelCell" >Password:</td>
												<td><input id="rdPassword" type="password" name="rdPassword"/></td>
											</tr>
											<tr>
												<td></td>
												<td><input id="Submit1" type="submit" value="Logon" name="Submit1"/>
												</td>
											</tr>
											<tr>
												<td id="errorCell" colSpan="2" >&nbsp;<%=Session("rdLogonFailMessage") %></td>
											</tr>

																																	<tr>
												<td></td><td><a href="../Help/rdPage.aspx">Forgot Password?</a></td>
											</tr>
											<tr>
												<td></td><td><a href="../Help/rdPage.aspx?rdReport=LoginRequest" >Request Dashboard Account</a></td>

											</tr>																													</table>
									</form>
								</td>
							</tr>
						</table>						
					</div>
				</td>
			</tr>
			<tr>
				<td id="footer" colspan="2">
					<span>© Copyright 2016-2017 Team Marketing Alliance.<br> All rights reserved.</span>
				</td>
			</tr>
		</table>
	</body>
</html>
