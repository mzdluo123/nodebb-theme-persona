<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="unread">
	<div class="btn-toolbar">
		<div class="pull-left">
			<!-- IMPORT partials/buttons/new-topic.tpl -->
			<a href="{config.relative_path}/{selectedFilter.url}{querystring}" class="inline-block">
				<div class="alert alert-warning hidden" id="new-topics-alert"></div>
			</a>
		</div>
		<div class="markread btn-group pull-right category-dropdown-container bottom-sheet<!-- IF !topics.length --> hidden<!-- ENDIF !topics.length -->">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				[[unread:mark_as_read]] <span class="caret"></span>
			</button>
			<ul class="dropdown-menu category-dropdown-menu" role="menu">

				<li role="presentation">
					<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
				</li>

				<li role="presentation">
					<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
				</li>
				<li class="divider"></li>
				{{{each categories}}}
				<li role="presentation" class="category" data-cid="{categories.cid}">
					<a role="menu-item" href="#">{categories.level}<!-- IF categories.icon --><span class="fa-stack" style="{function.generateCategoryBackground}"><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</a>
				</li>
				{{{end}}}
			</ul>
		</div>

		<!-- IMPORT partials/category-filter.tpl -->
		<!-- IMPORT partials/topic-filter.tpl -->
	</div>

	<hr class="d-none d-md-block"/>

	<div class="category">
		<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">[[unread:no_unread_topics]]</div>

		<!-- IMPORT partials/topics-list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hidden">[[unread:load_more]]</button>
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
</div>
