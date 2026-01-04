local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
  s({ trig = "doc", dscr = "Document Class" },
    fmta("\\documentclass[<>]{<>}", { i(1), i(2) }),
    { condition = line_begin }
  ),

  s({ trig = "pac", dscr = "usepackage" },
    fmta("\\usepackage{<>}", { i(1) }),
    { condition = line_begin }
  ),
}
