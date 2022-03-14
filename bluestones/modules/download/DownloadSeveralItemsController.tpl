<section id="module-download">
	<header class="section-header">
		<div class="controls align-right">
			<a href="${relative_url(SyndicationUrlBuilder::rss('download', ID_CAT))}" aria-label="{@common.syndication}"><i class="fa fa-rss warning" aria-hidden="true"></i></a>
			# IF NOT C_ROOT_CATEGORY #{@download.module.title}# ENDIF #
			# IF C_CATEGORY ## IF IS_ADMIN #<a href="{U_EDIT_CATEGORY}" aria-label="{@common.edit}"><i class="far fa-edit" aria-hidden="true"></i></a># ENDIF ## ENDIF #
		</div>
		<h1>
			# IF C_PENDING #
				{@download.pending.items}
			# ELSE #
				# IF C_MEMBER_ITEMS #
					# IF C_MY_ITEMS #{@my.items}# ELSE #{@member.items} {MEMBER_NAME}# ENDIF #
				# ELSE #
					# IF C_ROOT_CATEGORY #{@download.module.title}# ELSE #{CATEGORY_NAME}# ENDIF #
				# ENDIF #
			# ENDIF #
		</h1>
	</header>

	# IF C_CATEGORY_DESCRIPTION #
		<div class="sub-section">
			<div class="cat-description">
				{CATEGORY_DESCRIPTION}
			</div>
		</div>
	# ENDIF #

	# IF C_SUB_CATEGORIES #
		<div class="sub-section">
			<div class="content-container">
				<div class="cell-flex cell-tile cell-columns-{CATEGORIES_PER_ROW}">
					# START sub_categories_list #
						<div class="cell {sub_categories_list.CATEGORY_ID}">
							<div class="cell-header">
								<div class="cell-name"><a class="subcat-title" itemprop="about" href="{sub_categories_list.U_CATEGORY}">{sub_categories_list.CATEGORY_NAME}</a></div>
								<span class="small pinned notice" role="contentinfo" aria-label="{sub_categories_list.ITEMS_NUMBER} # IF sub_categories_list.C_SEVERAL_ITEMS #${TextHelper::lcfirst(@items)}# ELSE #${TextHelper::lcfirst(@item)}# ENDIF #">
									{sub_categories_list.ITEMS_NUMBER}
								</span>
							</div>
							# IF sub_categories_list.C_CATEGORY_THUMBNAIL #
								<div class="cell-body" itemprop="about">
									<div class="cell-thumbnail cell-landscape cell-center">
										<img itemprop="thumbnailUrl" src="{sub_categories_list.U_CATEGORY_THUMBNAIL}" alt="{sub_categories_list.CATEGORY_NAME}" />
										<a class="cell-thumbnail-caption" href="{sub_categories_list.U_CATEGORY}">
											${LangLoader::get_message('category.see.category', 'category-lang')}
										</a>
									</div>
								</div>
							# ENDIF #
						</div>
					# END sub_categories_list #
				</div>
				# IF C_SUBCATEGORIES_PAGINATION #<div class="content align-center"># INCLUDE SUBCATEGORIES_PAGINATION #</div># ENDIF #
			</div>
		</div>
	# ENDIF #

	<div class="sub-section">
		<div class="content-container">
			# IF C_ITEMS #
				# IF C_SEVERAL_ITEMS #
					# IF NOT C_MEMBER_ITEMS #
						<div class="content">
							# INCLUDE SORT_FORM #
							<div class="spacer"></div>
						</div>
					# ENDIF #
				# ENDIF #
				# IF C_TABLE_VIEW #
					<div class="responsive-table">
						<table class="table">
							<thead>
								<tr>
									<th>{@common.title}</th>
									<th class="col-small" aria-label="{@common.creation.date}">
										<i class="far fa-fw fa-calendar-plus hidden-small-screens" aria-hidden="true"></i>
										<span class="hidden-large-screens">{@common.creation.date}</span>
									</th>
									<th class="col-small" aria-label="{@download.downloads.number}">
										<i class="fa fa-fw fa-download hidden-small-screens" aria-hidden="true"></i>
										<span class="hidden-large-screens">{@download.downloads.number}</span>
									</th>
									# IF C_ENABLED_VIEWS_NUMBER #
										<th class="col-small" aria-label="{@common.views.number}">
											<i class="fa fa-fw fa-eye hidden-small-screens" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@common.views.number}</span>
										</th>
									# ENDIF #
									# IF C_ENABLED_NOTATION #
										<th aria-label="{@common.note}">
											<i class="far fa-fw fa-star hidden-small-screens" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@common.note}</span>
										</th>
									# ENDIF #
									# IF C_ENABLED_COMMENTS #
										<th aria-label="{@common.comments}">
											<i class="far fa-fw fa-comments hidden-small-screens" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@common.comments}</span>
										</th>
									# ENDIF #
									# IF C_CONTROLS #
										<th class="col-small" aria-label="{@common.moderation}">
											<i class="fa fa-fw fa-gavel hidden-small-screens" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@common.moderation}</span>
										</th>
									# ENDIF #
								</tr>
							</thead>
							<tbody>
								# START items #
									<tr class="category-{items.CATEGORY_ID}">
										<td>
											<a href="{items.U_ITEM}" itemprop="name"# IF items.C_NEW_CONTENT # class="new-content"# ENDIF #>{items.TITLE}</a>
										</td>
										<td>
											<time datetime="# IF NOT items.C_DIFFERED #{items.DATE_ISO8601}# ELSE #{items.DIFFERED_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished">
												# IF NOT items.C_DIFFERED #{items.DATE}# ELSE #{items.DIFFERED_START_DATE}# ENDIF #
											</time>
											# IF items.C_HAS_UPDATE_DATE #
												<time class="pinned notice small text-italic" aria-label="{@common.last.update}" datetime="{items.UPDATE_DATE_ISO8601}" itemprop="datePublished">{items.UPDATE_DATE}</time>
											# ENDIF #
										</td>
										<td>
											{items.DOWNLOADS_NUMBER}
										</td>
										# IF C_ENABLED_VIEWS_NUMBER #
											<td>
												{items.VIEWS_NUMBER}
											</td>
										# ENDIF #
										# IF C_ENABLED_NOTATION #
											<td>
												{items.STATIC_NOTATION}
											</td>
										# ENDIF #
										# IF C_ENABLED_COMMENTS #
											<td>
												{items.COMMENTS_NUMBER}
											</td>
										# ENDIF #
										# IF C_CONTROLS #
											<td class="controls">
												# IF items.C_EDIT #
													<a href="{items.U_EDIT}" aria-label="{@common.edit}"><i class="far fa-fw fa-edit" aria-hidden="true"></i></a>
												# ENDIF #
												# IF items.C_DELETE #
													<a href="{items.U_DELETE}" aria-label="{@common.delete}" data-confirmation="delete-element"><i class="far fa-fw fa-trash-alt" aria-hidden="true"></i></a>
												# ENDIF #
											</td>
										# ENDIF #
									</tr>
								# END items #
							</tbody>
						</table>
					</div>
				# ELSE #
					<div class="cell-layout # IF C_GRID_VIEW #cell-flex cell-columns-{ITEMS_PER_ROW}# ELSE #cell-row# ENDIF #">
						# START items #
							<article id="download-item-{items.ID}" class="download-item several-items category-{items.CATEGORY_ID} cell# IF items.C_NEW_CONTENT # new-content# ENDIF #" itemscope="itemscope" itemtype="https://schema.org/CreativeWork">
								<div class="cell-primary">
									<div class="cell-thumbnail cell-landscape cell-center">
										# IF items.C_HAS_THUMBNAIL #
											<img src="{items.U_THUMBNAIL}" alt="{items.TITLE}" itemprop="image" />
										# ELSE #
											<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no-thumbnail.png" alt="{items.TITLE}" itemprop="image" />
										# ENDIF #
										<div class="cell-thumbnail-caption">
											<div class="cell-list">
												<ul>
													<li><a href="{items.U_ITEM}"><i class="fa fa-share" aria-hidden="true"></i> ${LangLoader::get_message('see.details', 'common')}</a></li>
													<li role="contentinfo" aria-label="{items.L_DOWNLOADED_TIMES}"><i class="fa fa-download" aria-hidden="true"></i> {items.DOWNLOADS_NUMBER}</span></li>
													# IF C_ENABLED_VIEWS_NUMBER #<li aria-label="{items.VIEWS_NUMBER} {@common.views.number}"><i class="fa fa-eye" aria-hidden="true"></i> {items.VIEWS_NUMBER}</li># ENDIF #
													# IF C_ENABLED_COMMENTS #<li><i class="fa fa-comments" aria-hidden="true"></i># IF items.C_COMMENTS # {items.COMMENTS_NUMBER} # ENDIF # {items.L_COMMENTS}</li># ENDIF #
													# IF C_ENABLED_NOTATION #<li>{items.STATIC_NOTATION}</li># ENDIF #
													# IF items.C_CONTROLS #
														<li class="li-stretch">
															# IF items.C_EDIT #<a href="{items.U_EDIT}" aria-label="{@common.edit}"><i class="far fa-fw fa-edit" aria-hidden="true"></i></a># ENDIF #
															# IF items.C_DELETE #<a href="{items.U_DELETE}" aria-label="{@common.delete}" data-confirmation="delete-element"><i class="far fa-fw fa-trash-alt" aria-hidden="true"></i></a># ENDIF #
														</li>
													# ENDIF #
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="cell-secondary">
									<div class="cell-body">
										<div class="cell-infos">
											<div class="more">
												<span class="pinned" aria-label="{@common.creation.date}">
													<i class="far fa-calendar-alt" aria-hidden="true"></i>
													<time datetime="# IF items.C_DEFFERED_PUBLISHING #{items.DEFFERED_PUBLISHING_START_DATE_ISO8601}# ELSE #{items.DATE_ISO8601}# ENDIF #" itemprop="datePublished">
														# IF items.C_DEFFERED_PUBLISHING #{items.DEFFERED_PUBLISHING_START_DATE}# ELSE #{items.DATE}# ENDIF #
													</time>
												</span>
												# IF items.C_HAS_UPDATE_DATE #
													<span class="pinned" aria-label="{@common.last.update}">
														<i class="far fa-calendar-plus" aria-hidden="true"></i>
														<time datetime="{items.UPDATE_DATE_ISO8601}" itemprop="dateModified">{items.UPDATE_DATE}</time>
													</span>
												# ENDIF #
											</div>
											<div class="more">
												# IF C_AUTHOR_DISPLAYED #
													# IF items.C_AUTHOR_CUSTOM_NAME #
														<span class="pinned"><i class="far fa-user" aria-hidden="true"></i> <span class="custom-author">{items.AUTHOR_CUSTOM_NAME}</span></span>
													# ELSE #
														<span class="pinned {AUTHOR_LEVEL_CLASS}"# IF C_AUTHOR_GROUP_COLOR # style="color:{items.AUTHOR_GROUP_COLOR}; border-color:{items.AUTHOR_GROUP_COLOR}" # ENDIF #>
															<i class="far fa-user" aria-hidden="true"></i> # IF items.C_AUTHOR_EXIST #<a itemprop="author" rel="author" class="{items.AUTHOR_LEVEL_CLASS}" href="{items.U_AUTHOR_PROFILE}" # IF items.C_AUTHOR_GROUP_COLOR # style="color:{items.AUTHOR_GROUP_COLOR}" # ENDIF #>{items.AUTHOR_DISPLAY_NAME}</a># ELSE #<span class="visitor">{items.AUTHOR_DISPLAY_NAME}</span># ENDIF #
														</span>
													# ENDIF #
												# ENDIF #
											</div>
										</div>
									</div>
									<header class="cell-header">
										<h2 class="cell-name"><a href="{items.U_ITEM}" itemprop="name">{items.TITLE}</a></h2>
									</header>
									<div class="cell-body">
										<div class="cell-content">
											# IF items.C_VISIBLE #
												<div class="cell-infos">
													<span></span>
													<span>
														<a href="{items.U_DOWNLOAD}" class="button submit small">
															<i class="fa fa-download" aria-hidden="true"></i> {@download.download}
														</a>
														# IF IS_USER_CONNECTED #
															<a href="{items.U_DEADLINK}" data-confirmation="${LangLoader::get_message('deadlink.confirmation', 'common')}" class="button bgc-full warning small" aria-label="${LangLoader::get_message('deadlink', 'common')}">
																<i class="fa fa-unlink" aria-hidden="true"></i>
															</a>
														# ENDIF #
													</span>
												</div>
											# ENDIF #
											<div itemprop="text">
												# IF C_FULL_ITEM_DISPLAY #
													{items.CONTENT}
												# ELSE #
													{items.SUMMARY}# IF items.C_READ_MORE # <a href="{items.U_ITEM}" class="read-more">[${LangLoader::get_message('read.more', 'common')}]</a># ENDIF #
												# ENDIF #
											</div>
										</div>
									</div>

								</div>

								<footer>
									<meta itemprop="url" content="{items.U_ITEM}">
									<meta itemprop="description" content="${escape(items.SUMMARY)}"/>
									# IF C_ENABLED_COMMENTS #
										<meta itemprop="discussionUrl" content="{items.U_COMMENTS}">
										<meta itemprop="interactionCount" content="{items.COMMENTS_NUMBER} UserComments">
									# ENDIF #
								</footer>
							</article>
						# END items #
					</div>
				# ENDIF #
			# ELSE #
				# IF NOT C_HIDE_NO_ITEM_MESSAGE #
					<div class="sub-section">
						<div class="content-container">
							<div class="content">
								<div class="message-helper bgc notice align-center">
									${LangLoader::get_message('no_item_now', 'common')}
								</div>
							</div>
						</div>
					</div>
				# ENDIF #
			# ENDIF #
		</div>
	</div>
	<footer>
		# IF C_PAGINATION #<div class="sub-section"><div class="content-container"># INCLUDE PAGINATION #</div></div># ENDIF #
	</footer>
</section>
