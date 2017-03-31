# INCLUDE MSG #

<section id="module-calendar" class="row">
	<header>
		<div class="pull-right">
			<a class="btn btn-warning btn-xs" href="${relative_url(SyndicationUrlBuilder::rss('calendar'))}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
		</div>
		<h1>
			{@module_title}
		</h1>
	</header>

	<div class="col-md-12">
		# IF NOT C_PENDING_PAGE #
		<div id="calendar">
			# INCLUDE CALENDAR #
		</div>

		<div class="clearfix"></div>
		# ENDIF #

		<div id="events">
			# INCLUDE EVENTS #
		</div>
	</div>

	<footer></footer>
</section>
