# IF C_QUESTION #
	<a class="col-sm-4" href="{U_LINK}" title="{QUESTION}">
		<img src="{PATH_TO_ROOT}/faq/faq.png" alt="{@module_title}" height="32" width="32" itemprop="image" />
	</a>
	<a href="{U_LINK}" class="col-sm-8">{QUESTION}</a>
	<div class="clearfix"></div>
# ELSE #
${LangLoader::get_message('no_item_now', 'common')}
# ENDIF #
<p class="text-center">
	<a href="${relative_url(FaqUrlBuilder::home())}" class="btn btn-pbt">{@module_title}</a>
</p>
