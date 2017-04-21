<div class="field-${escape(HTML_ID)}">
	<div class="input-group" id='input-group-${escape(HTML_ID)}'>
		<span class="input-group-addon"><i class="fa fw fa-map-o"></i></span>
		<input type="text" name="${escape(NAME)}" id="${escape(HTML_ID)}" value="${escape(ADDRESS)}" placeholder="{@form.marker.address}" class="form-control # IF C_READONLY #low-opacity # ENDIF ## IF C_CLASS #${escape(CLASS)}# ENDIF #" # IF C_DISABLED # disabled="disabled" # ENDIF # />
	</div>
</div>

<script>
<!--
jQuery(function(){
	jQuery("#${escape(HTML_ID)}").geocomplete({
		# IF C_ADDRESS #location: "{ADDRESS}"# ENDIF #
	});
});
-->
</script>

# IF C_INCLUDE_API #
<script src="http://maps.googleapis.com/maps/api/js?key={API_KEY}&amp;libraries=places"></script>
<script src="{PATH_TO_ROOT}/GoogleMaps/templates/js/jquery.geocomplete.js"></script>
# ENDIF #
