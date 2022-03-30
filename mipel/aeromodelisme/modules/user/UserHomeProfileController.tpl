<section id="module-user-home">
	<header>
		<h1>{@user.dashboard}</h1>
	</header>
	<div class="content">
		<p class="align-center text-strong">{@user.welcome} {PSEUDO}</p>
		# IF C_AVATAR_IMG #
			<p class="align-center">
					<img src="{U_AVATAR_IMG}" alt="{@user.avatar}" />
			</p>
		# ENDIF #

		<ul id="profile-container" class="cell-flex cell-tile cell-columns-3">
			<li class="cell">
				<a href="{U_VIEW_PROFILE}" aria-label="{@user.my.profile}" class="block-round">
					<i class="fa fa-fw fa-user fa-2x"></i>
				</a>
			</li>
			<li class="cell">
				<a href="{U_USER_PM}" aria-label="{@user.private.messaging}" class="block-round# IF C_HAS_PM # cyan# END IF #">
					# IF C_HAS_PM #
						<span class="stacked">
							<i class="fa fa-fw fa-envelope fa-2x" aria-hidden="true"></i>
							<span class="stack-event stack-right stack-circle bgc-full error text-strong blink">{NUMBER_PM}</span>
						</span>
					# ELSE #
						<i class="fa fa-fw fa-envelope fa-2x"></i>
					# END IF #
				</a>
			</li>
			# IF C_USER_AUTH_FILES #
				<li class="cell">
					<a href="{U_UPLOAD}" aria-label="{@upload.files.management}" class="block-round">
						<i class="fa fa-fw fa-cloud-upload-alt fa-2x"></i>
					</a>
				</li>
			# ENDIF #
			# IF IS_ADMIN #
				<li class="cell">
					<a href="{PATH_TO_ROOT}/admin/" aria-label="{@user.admin.panel}" class="block-round# IF C_UNREAD_ALERT # cyan# ENDIF #">
						# IF C_UNREAD_ALERT #
							<span class="stacked">
								<i class="fa fa-fw fa-wrench fa-2x" aria-hidden="true"></i>
								<span class="stack-event stack-right stack-circle bgc-full error text-strong blink">{NUMBER_UNREAD_ALERTS}</span>
							</span>
						# ELSE #
							<i class="fa fa-fw fa-wrench fa-2x"></i>
						# ENDIF #
					</a>
				</li>
			# ENDIF #
			# IF C_IS_MODERATOR #
				<li class="cell">
					<a href="{U_MODERATION_PANEL}" aria-label="{@user.moderation.panel}" class="block-round">
						<i class="fa fa-fw fa-gavel fa-2x"></i>
					</a>
				</li>
			# ENDIF #
				<li class="cell">
					<a href="{U_CONTRIBUTION_PANEL}" aria-label="{@user.contribution.panel}" class="block-round# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # cyan# ENDIF #">
						# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION #
							<span class="stacked">
								<i class="fa fa-fw fa-file-alt fa-2x" aria-hidden="true"></i>
								<span class="stack-event stack-right stack-circle bgc-full error text-strong blink">{NUMBER_UNREAD_CONTRIBUTIONS}</span>
							</span>
						# ELSE #
							<i class="fa fa-fw fa-file-alt fa-2x"></i>
						# ENDIF #
					</a>
				</li>
			# START modules_messages #
				<li class="cell">
					<a href="{modules_messages.U_LINK_USER_MSG}" class="block-round" aria-label="{modules_messages.NAME_USER_MSG}">
						<span class="stacked">
							<i class="{modules_messages.IMG_USER_MSG} fa-fw fa-2x" aria-hidden="true"></i>
							<span class="stack-event stack-right stack-circle bgc-full bgc-alt text-strong">{modules_messages.NUMBER_MESSAGES}</span>
						</span>
					</a>
				</li>
			# END modules_messages #
			<li class="cell">
				<a href="${relative_url(UserUrlBuilder::disconnect())}" class="block-round" aria-label="{@user.sign.out}">
					<i class="fa fa-fw fa-sign-out-alt fa-2x" aria-hidden="true"></i>
				</a>
			</li>
		</ul>
		<div class="spacer"></div>
		{MSG_MBR}
	</div>
	<footer></footercon
</section>
