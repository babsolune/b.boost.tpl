# IF C_USER_NOTCONNECTED #
	<script>
	<!--
	function check_connect()
	{
		if( document.getElementById('login').value == "" )
		{
			alert("{L_REQUIRE_PSEUDO}");
			return false;
		}
		if( document.getElementById('password').value == "" )
		{
			alert("{L_REQUIRE_PASSWORD}");
			return false;
		   }
	}
	-->
	</script>
# ENDIF #
# IF C_VERTICAL #
	# IF C_USER_NOTCONNECTED #
		<div id="connect-menu" class="module-mini-container">
			<div class="module-mini-top">
				<h5 class="sub-title">{L_CONNECT}</h5>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-element">
					<label>{L_PSEUDO}<br /><input type="text" id="login" name="login" maxlength="25"></label>
					<label>{L_PASSWORD}<br /><input type="password" id="password" name="password" maxlength="30"></label>
					<label>{L_AUTOCONNECT} <input checked="checked" type="checkbox" name="auto"></label>
					<input type="hidden" name="redirect" value="{REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="connect" value="true" class="submit">{L_CONNECT}</button>
				</form>
				<div class="connect-register">
					# IF C_USER_REGISTER # 
					<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {L_REGISTER}</a> 
					# ENDIF #
					<br />
					<a class="small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle"></i> {L_FORGOT_PASS}</a>
				</div>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ELSE #
		<div id="connect-menu" class="module-mini-container">
			<div class="module-mini-top">
				<h5 class="sub-title">{L_PROFIL}</h5>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<ul class="connect-content">
					<li>
						<i class="fa fa-user"></i>
						<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {L_PRIVATE_PROFIL}</a>
					</li>
					<li>
						<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i>
						<a href="{U_USER_PM}" class="small"> {L_NBR_PM}</a>
					</li>
					# IF C_ADMIN_AUTH #
					<li>
						<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i> 
						<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> {L_ADMIN_PANEL}</a> 
					</li>
					# ENDIF #
					# IF C_MODERATOR_AUTH #
					<li>
						<i class="fa fa-legal"></i>
						<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> {L_MODO_PANEL}</a>
					</li>
					# ENDIF #	
					<li>
						<i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> {L_CONTRIBUTION_PANEL}</a>
					</li>
					<li>
						<i class="fa fa-sign-out"></i>
						<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {L_DISCONNECT}</a>
					</li>
				</ul>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ENDIF #
# ELSE #
	# IF C_USER_NOTCONNECTED #
	<div id="connect-menu">
		<div class="horizontal-fieldset">
			<ul class="connect-content">
                <li><a href="https://www.facebook.com"><i class="fa fa-facebook"></i><span>Facebook</span></a></li>
                <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i><span>Twitter</span></a></li>
                <li><a href="https://plus.google.com/"><i class="fa fa-google-plus"></i><span>Google+</span></a></li>
				<li><a href="${relative_url(UserUrlBuilder::connect())}" class="small"> <i class="fa fa-sign-in"></i> <span>{L_CONNECT}</span></a></li>
            
			# IF C_USER_REGISTER #
				<li><a href="${relative_url(UserUrlBuilder::registration())}" class="small"> <i class="fa fa-pencil"></i> <span>{L_REGISTER}</span></a></li>
			# ENDIF #
            </ul>
		</div>
	</div>
	# ELSE #
	<div id="connect-menu">
		<div class="horizontal-fieldset">
			<ul class="connect-content">
                <li><a href="https://www.facebook.com"><i class="fa fa-facebook"></i><span>Facebook</span></a></li>
                <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i><span>Twitter</span></a></li>
                <li><a href="https://plus.google.com/"><i class="fa fa-google-plus"></i><span>Google+</span></a></li>
				<li><a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> <i class="fa fa-user"></i> <span>{L_PRIVATE_PROFIL}</span></a></li>
				<li><a href="{U_USER_PM}" class="small"> <i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i><span>{L_NBR_PM}</span></a></li>
				# IF C_ADMIN_AUTH #
				<li><a href="${relative_url(UserUrlBuilder::administration())}" class="small"> <i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i> <span>{L_ADMIN_PANEL}# IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #</span></a></li>
				# ENDIF #
				# IF C_MODERATOR_AUTH #
				<li><a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> <i class="fa fa-legal"></i><span>{L_MODO_PANEL}</span></a></li>
				# ENDIF #	
				<li><a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> <i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i><span>{L_CONTRIBUTION_PANEL}# IF C_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #</span></a></li>
				<li><a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> <i class="fa fa-sign-out"></i><span>{L_DISCONNECT}</span></a></li>
			</ul>
		</div>
	</div>
	# ENDIF #
# ENDIF #