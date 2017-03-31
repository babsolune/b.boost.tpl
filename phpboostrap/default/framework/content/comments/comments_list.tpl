# START comments #
	<article id="com{comments.ID_COMMENT}" itemscope="itemscope" itemtype="http://schema.org/Comment">

		<div class="col-sm-3 text-center">
			<div class="message-pseudo">
				# IF comments.C_VISITOR #
					<span itemprop="author">{comments.PSEUDO}</span>
				# ELSE #
					<a itemprop="author" href="{comments.U_PROFILE}" class="{comments.LEVEL_CLASS}" # IF comments.C_GROUP_COLOR # style="color:{comments.GROUP_COLOR}" # ENDIF #>
						{comments.PSEUDO}
					</a>
				# ENDIF #
			</div>
			<div class="message-level">{comments.L_LEVEL}</div>
			# IF comments.C_AVATAR #<img src="{comments.U_AVATAR}" alt="${LangLoader::get_message('avatar', 'user-common')}" class="message-avatar" /># ENDIF #
		</div>

		<div class="col-sm-9">
			<div class="well well-sm">
				<small class="pull-right">
					<a itemprop="url" href="\#com{comments.ID_COMMENT}">\#{comments.ID_COMMENT}</a>
					# IF comments.C_MODERATOR #
						<a href="{comments.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}" class="fa fa-fw fa-edit"></a>
						<a href="{comments.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" class="fa fa-fw fa-delete" data-confirmation="delete-element"></a>
					# ENDIF #
				</small>
				<time itemprop="datePublished" datetime="{comments.DATE_ISO8601}">{comments.DATE}</time>
				<!-- <div id="message-rating" class="pull-right">
					<div class="btn-group btn-group-xs">
						<button class="btn btn-success"><i class="fa fa-plus"></i></button>
						<button class="btn btn-default">0{NBR_RATING_VOTE}</button>
						<button class="btn btn-danger"><i class="fa fa-minus"></i></button>
					</div>
				</div> -->
			</div>
			<div class="message-message">
				<div itemprop="text" class="message-content content">{comments.MESSAGE}</div>
				# IF comments.C_VIEW_TOPIC #
					<div class="view-topic">
						<a href="{comments.U_TOPIC}\#com{comments.ID_COMMENT}">
						{L_VIEW_TOPIC}
						<i class="fa fa-arrow-circle-right"></i>
					</a>
					</div>
				# ENDIF #
			</div>
		</div>
		<div class="clearfix mb15"></div>
		<footer></footer>
	</article>
# END comments #
