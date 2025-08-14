local helpers = require("personal.luasnip-helper-funcs")
local get_visual = helpers.get_visual

-- Abbreviations used in this article and the LuaSnip docs
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
	s(
		{ trig = "env", snippetType = "autosnippet" },
		fmta(
			[[
      \begin{<>}
          <>
      \end{<>}
    ]],
			{
				i(1),
				d(2, get_visual),
				rep(1), -- this node repeats insert node i(1)
			}
		)
	),
	s(
		{ trig = ";def", snippetType = "autosnippet" },
		fmta(
			[[
      \begin{definition}
          <>
      \end{definition}
    ]],
			{
				d(1, get_visual),
			}
		)
	),
	s(
		{ trig = ";ex", snippetType = "autosnippet" },
		fmta(
			[[
      \begin{exercise}
          <>
      \end{exercise}
    ]],
			{
				d(1, get_visual),
			}
		)
	),
	s(
		{ trig = ";prob", snippetType = "autosnippet" },
		fmta(
			[[
      \begin{problem}
          <>
      \end{problem}
    ]],
			{
				d(1, get_visual),
			}
		)
	),
	s(
		{ trig = ";thm", snippetType = "autosnippet" },
		fmta(
			[[
      \begin{theorem}
          <>
      \end{theorem}
    ]],
			{
				d(1, get_visual),
			}
		)
	),
	s(
		{ trig = ";lem", snippetType = "autosnippet" },
		fmta(
			[[
      \begin{lemma}
          <>
      \end{lemma}
    ]],
			{
				d(1, get_visual),
			}
		)
	),
	s(
		{ trig = ";rem", snippetType = "autosnippet" },
		fmta(
			[[
      \begin{remark}
          <>
      \end{remark}
    ]],
			{
				d(1, get_visual),
			}
		)
	),
	s(
		{ trig = ";obs", snippetType = "autosnippet" },
		fmta(
			[[
      \begin{observation}
          <>
      \end{observation}
    ]],
			{
				d(1, get_visual),
			}
		)
	),
	--hr
	s(
		{ trig = "hr", dscr = "The hyperref package's href{}{} command (for url links)" },
		fmta([[\href{<>}{<>}]], {
			i(1, "url"),
			i(2, "display name"),
		})
	), -- ITEMIZE
	s(
		{ trig = "-i", snippetType = "autosnippet" },
		fmta(
			[[
        \begin{itemize}
            \item <>
        \end{itemize}
      ]],
			{
				i(0),
			}
		),
		{}
	),
	-- ENUMERATE
	s(
		{ trig = "-e", snippetType = "autosnippet" },
		fmta(
			[[
        \begin{enumerate}
            \item <>
        \end{enumerate}
      ]],
			{
				i(0),
			}
		)
	),
	-- INLINE MATH
	s(
		{ trig = "([^%l])mm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
		fmta("<>$<>$", {
			f(function(_, snip)
				return snip.captures[1]
			end),
			d(1, get_visual),
		})
	),
	-- INLINE MATH ON NEW LINE
	s(
		{ trig = "^mm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
		fmta("$<>$", {
			i(1),
		})
	),
	-- FIGURE
	s(
		{ trig = "fig" },
		fmta(
			[[
        \begin{figure}[htb!]
          \centering
          \includegraphics[width=<>\linewidth]{<>}
          \caption{<>}
          \label{fig:<>}
        \end{figure}
        ]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		),
		{}
	),
	s(
		{ trig = "dm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
		fmta(
			[[
			\[
			<>
			\]
			]],
			{
				i(1),
			}
		)
	),
}
