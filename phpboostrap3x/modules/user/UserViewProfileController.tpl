<section id="user-profile">
	<header>
		<h1>{@profile}</h1>
	</header>
	<div class="row">
		# IF C_DISPLAY_EDIT_LINK #
			<label class="col-sm-4 control-label">{@profile.edit}</label>
			<div class="col-sm-8 mb15">
				<a href="{U_EDIT_PROFILE}" title="{@profile.edit}"><i class="fa fa-edit"></i></a>
			</div>
		# ENDIF #
			<label class="col-sm-4 control-label">{@display_name}</label>
			<div class="col-sm-8 mb15">
				{DISPLAY_NAME}
			</div>
			<label class="col-sm-4 control-label">{@level}</label>
			<div class="col-sm-8 mb15">
				<a class="{LEVEL_CLASS}"># IF NOT C_IS_BANNED #{LEVEL}# ELSE #{@banned}# ENDIF #</a>
			</div>
			<label class="col-sm-4 control-label">{@groups}</label>
			<div class="col-sm-8 mb15">
				# IF C_GROUPS #
				<ul class="no-list user-profil-groups-container">
					# START groups #
					<li>
						<a href="{groups.U_GROUP}" class="user-group # IF groups.C_PICTURE #user-group-img # ENDIF #user-group-{groups.ID}"># IF groups.C_PICTURE #<img src="{groups.U_GROUP_PICTURE}" alt="{groups.NAME}" title="{groups.NAME}" class="valign-middle" /># ELSE #{groups.NAME}# ENDIF #</a>
					</li>
					# END groups #
				</ul>
				# ELSE #
				${LangLoader::get_message('none', 'common')}
				# ENDIF #
			</div>
			<label class="col-sm-4 control-label">{@registration_date}</label>
			<div class="col-sm-8 mb15">
				{REGISTRATION_DATE}
			</div>
			<label class="col-sm-4 control-label">{@number_messages}</label>
			<div class="col-sm-8 mb15">
				{MESSAGES_NUMBER}<br />
				<a href="{U_DISPLAY_USER_MESSAGES}">{@messages}</a>
			</div>
			<label class="col-sm-4 control-label">{@last_connection}</label>
			<div class="col-sm-8 mb15">
				{LAST_CONNECTION_DATE}
			</div>
		# IF C_DISPLAY_MAIL_LINK #
			<label class="col-sm-4 control-label">{@email}</label>
			<div class="col-sm-8 mb15">
				<a href="mailto:{EMAIL}" class="basic-button smaller">${LangLoader::get_message('mail', 'main')}</a>
			</div>
		# ENDIF #
		# IF C_DISPLAY_PM_LINK #
			<label class="col-sm-4 control-label">{@private_message}</label>
			<div class="col-sm-8 mb15">
				<a href="{U_DISPLAY_USER_PM}" class="basic-button smaller">${LangLoader::get_message('pm', 'main')}</a>
			</div>
		# ENDIF #
	</div>
	# IF C_EXTENDED_FIELDS #
		<h2>${LangLoader::get_message('other', 'main')}</h2>
		# START extended_fields #
			<label class="col-sm-4 control-label">{extended_fields.NAME}</label>
			<div class="col-sm-8 mb15">
				{extended_fields.VALUE}
			</div>
		# END extended_fields #
	# ENDIF #
<footer></footer>
</section>
