function Header(el)
  return {
    el,
    pandoc.RawBlock('latex', '\\vspace{-1em}\\noindent{\\color[gray]{0.5}\\rule{\\textwidth}{0.2pt}}')
  }
end
