
<div class="panel panel-info# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF #">
	<div class="panel-heading">
		<h5 class="sub-title">
			<a href="{U_LINK}" class="fa fa-syndication"></a>
			# IF C_NAME #{NAME}# ELSE #{TITLE}# ENDIF #
		</h5>
	</div>
	<ul class="list-group">
		# START item #
		<li class="list-group-item">
			<a href="{item.U_LINK}" title="{item.TITLE}">
				<span class="badge">{item.DATE}</span> {item.TITLE}
			</a>
		</li>
		# END item #
	</ul>
</div>
