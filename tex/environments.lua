local line_begin = require("luasnip.extras.expand_conditions").line_begin
local tex_utils = require("tex_utils")

return {
  s({ trig = "env", dscr = "LaTeX environment" },
    fmta([[
\begin{<>}
<>
\end{<>}
      ]],

      { i(1), i(2), rep(1) }
    ),
    { condition = line_begin }
  ),
  s({ trig = "fig", dscr = "LaTeX Figure environment" },
    fmta([[
\begin{figure}[<>]
\centering
\includegraphics[width=0.8\textwidth]{<>}
\caption{<>}
\label{fig:<>}
\end{figure}
      ]],

      { i(1, "htpb"), i(2), i(3), i(4) }
    )
  ),

  s({ trig = "enum", dscr = "Enumerate" },
    fmta([[
\begin{enumerate}
\item <>
\end{enumerate}
    ]],
    { i(1) }
    )
  ),

  s({ trig = "item", dscr = "Itemize" },
    fmta([[
\begin{itemize}
\item <>
\end{itemize}
    ]],
    { i(1) }
    )
  ),

  s({ trig = "*", dscr = "Itemize item", snippetType = "autosnippet" },
    { t("\\item ") },
    { condition = tex_utils.in_itemize * line_begin }
  ),

  s({ trig = "case", dscr = "Cases" },
    fmta([[
\begin{cases}
<>
\end{cases}
    ]],
    { i(1) }
    )
  ),


  -- Math theorems
  s({ trig = "thm", dscr = "theorem" },
    fmta([[
\begin{theorem}
<>
\end{theorem}
      ]],
      { i(1) }
    )
  ),
  s({ trig = "lem", dscr = "lemma" },
    fmta([[
\begin{lemma}
<>
\end{lemma}
      ]],
      { i(1) }
    )
  ),
  s({ trig = "cor", dscr = "corollary" },
    fmta([[
\begin{corollary}
<>
\end{corollary}
      ]],
      { i(1) }
    )
  ),
  s({ trig = "prop", dscr = "proposition" },
    fmta([[
\begin{proposition}
<>
\end{proposition}
      ]],
      { i(1) }
    )
  ),
  s({ trig = "prf", dscr = "proof" },
    fmta([[
\begin{proof}
<>
\end{proof}
      ]],
      { i(1) }
    )
  ),
  s({ trig = "def", dscr = "definition" },
    fmta([[
\begin{definition}
<>
\end{definition}
      ]],
      { i(1) }
    )
  ),

  s({ trig = "example", dscr = "example" },
    fmta([[
\begin{example}
<>
\end{example}
      ]],
      { i(1) }
    )
  ),
  s({ trig = "ali", dscr = "LaTeX align environment" },
    fmta([[
\begin{align*}
<>
\end{align*}
      ]],
      { i(1) }
    )
  ),

}
