function Header(el)
	local heading_text = pandoc.utils.stringify(el.content)
	return {
		el,
		pandoc.RawBlock(
			"latex",
			"\\vspace{-1em}\\noindent{\\color[gray]{0.5}\\rule{\\widthof{\\textbf{"
				.. heading_text
				.. "}} + 2em}{0.2pt}}"
		),
	}
end
