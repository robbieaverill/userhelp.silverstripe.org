<% if $Versions %>
	<div class="versions">
		<ul>
			<% loop $Versions.sort("Title DESC") %>
				<% if not $Archived %>
					<li>
						<a href="$Link" class="$LinkingMode">$Title<% if $IsStable %> (latest CMS version)<% end_if %></a>
					</li>
				<% end_if %>
			<% end_loop %>
		</ul>
	</div>
	<form id="VersionsArchive">
		<select id="VersionSelect" onchange="location.href=VersionsArchive.VersionSelect.options[selectedIndex].value">
			<option>Older CMS versions</option>
			<% loop $Versions.sort("Title DESC").limit(20) %>
				<% if $Archived %>
					<option value="$Link">$Title</option>
				<% end_if %>
			<% end_loop %>
			<option value="http://2.4.userhelp.silverstripe.org">2.4</option>
		</select>
	</form>
<% end_if %>
