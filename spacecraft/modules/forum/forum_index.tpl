# INCLUDE FORUM_TOP #
<div class="cell-flex cell-columns-# IF C_HAS_ALL_VERTICAL_MENUS #2# ELSE ## IF C_HAS_SOME_VERTICAL_MENUS #3# ELSE #4# ENDIF ## ENDIF # cell-tile">
	# START forums_list #
		# START forums_list.endcats #
					</ul>
				</div>
			</article>
		# END forums_list.endcats #
		# START forums_list.cats #
			<article
					itemscope="itemscope"
					itemtype="https://schema.org/Creativework"
					id="article-forum-{forums_list.cats.CATEGORY_ID}"
					class="cell"
					style="background-image: linear-gradient(to bottom, rgba(var(--bgc-rgb-m), 0.8), rgba(var(--bgc-rgb-m), 0.8))# IF C_THUMBNAILS_DISPLAYED ## IF forums_list.cats.C_HAS_THUMBNAIL #, url('{forums_list.cats.U_CATEGORY_THUMBNAIL}')# ENDIF ## ENDIF #">
				<header class="cell-header">
					<h2 class="cell-name">{forums_list.cats.CATEGORY_NAME}</h2>
					<div class="controls">
						<a class="offload" href="${relative_url(SyndicationUrlBuilder::rss('forum',forums_list.cats.CATEGORY_ID))}" aria-label="{@common.syndication}"><i class="fa fa-rss warning" aria-hidden="true"></i></a>
						# IF C_DISPLAY_UNREAD_DETAILS #
							<a class="offload" href="{PATH_TO_ROOT}/forum/unread.php?cat={forums_list.cats.CATEGORY_ID}" aria-label="{@forum.unread.messages}"><i class="far fa-file-alt" aria-hidden="true"></i></a>
						# ENDIF #
					</div>
				</header>
				<div class="cell-list">
					<ul>
		# END forums_list.cats #
						# START forums_list.subcats #
							<li class="li-stretch">
								<div>
									<a
											class="offload"
											href="# IF forums_list.subcats.U_LINK #{forums_list.subcats.U_LINK}# ELSE #{forums_list.subcats.U_CATEGORY}# ENDIF #">
										# IF forums_list.subcats.C_BLINK # <i class="fa fa-comment-dots success blink"></i> # ENDIF #
										{forums_list.subcats.CATEGORY_NAME}
									</a>
									<span class="small d-block hidden-small-screens">{forums_list.subcats.DESCRIPTION}</span>
									# IF forums_list.subcats.C_SUBFORUMS #<span class="small d-block hidden-small-screens"><span class="notice">{@forum.sub.forums}:</span> {forums_list.subcats.SUBFORUMS}</span># ENDIF #
								</div>
								<div>
									# IF forums_list.subcats.U_LINK #
										<a class="offload" href="{forums_list.subcats.U_LINK}" target="_blanc" rel="noopener noreferrer" aria-label="Vers l'infini et au-delà !">
											<i class="fa fa-share-square" aria-hidden="true"></i>
										</a>
									# ELSE #
										<span aria-label="{@forum.topics.number}" class="stacked">
											<i class="fa # IF forums_list.subcats.C_BLINK #success # ENDIF #fa-comments" aria-hidden="true"></i>
											<span class="stack-event stack-circle stack-top-right bgc question">{forums_list.subcats.TOPICS_NUMBER}</span>
										</span>
									# ENDIF #
								</div>

							</li>
						# END forums_list.subcats #
# END forums_list #
	</div>

# INCLUDE FORUM_BOTTOM #
