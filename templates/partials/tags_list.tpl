{{{each tags}}}
<h3 class="pull-left tag-container">
	<a href="{config.relative_path}/tags/{tags.valueEscaped}" data-value="{tags.valueEscaped}"><span class="tag-item tag-class-{tags.class}" data-tag="{tags.valueEscaped}" style="{{{ if tags.color }}}color: {tags.color};{{{ end }}}{{{ if tags.bgColor }}}background-color: {tags.bgColor};{{{ end }}}">{tags.valueEscaped}</span><span class="tag-topic-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
</h3>
{{{end}}}