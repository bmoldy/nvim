-- Abbreviations used in this article and the LuaSnip docs
local ls = require 'luasnip'
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep

local get_visual = function(args, parent)
  if #parent.snippet.env.LS_SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

return {
  -- Lowercase Greek Letters
  s({ trig = ';alp', snippetType = 'autosnippet' }, {
    t '\\alpha',
  }),
  s({ trig = ';bet', snippetType = 'autosnippet' }, {
    t '\\beta',
  }),
  s({ trig = ';gam', snippetType = 'autosnippet' }, {
    t '\\gamma',
  }),
  s({ trig = ';del', snippetType = 'autosnippet' }, { t '\\delta' }),
  s({ trig = ';eps', snippetType = 'autosnippet' }, { t '\\epsilon' }),
  s({ trig = ';zet', snippetType = 'autosnippet' }, { t '\\zeta' }),
  s({ trig = ';eta', snippetType = 'autosnippet' }, { t '\\eta' }),
  s({ trig = ';the', snippetType = 'autosnippet' }, { t '\\theta' }),
  s({ trig = ';iot', snippetType = 'autosnippet' }, { t '\\iota' }),
  s({ trig = ';kap', snippetType = 'autosnippet' }, { t '\\kappa' }),
  s({ trig = ';lam', snippetType = 'autosnippet' }, { t '\\lambda' }),
  s({ trig = ';mu', snippetType = 'autosnippet' }, { t '\\mu' }),
  s({ trig = ';nu', snippetType = 'autosnippet' }, { t '\\nu' }),
  s({ trig = ';xi', snippetType = 'autosnippet' }, { t '\\xi' }),
  s({ trig = ';omi', snippetType = 'autosnippet' }, { t '\\omicron' }),
  s({ trig = ';pi', snippetType = 'autosnippet' }, { t '\\pi' }),
  s({ trig = ';rho', snippetType = 'autosnippet' }, { t '\\rho' }),
  s({ trig = ';sig', snippetType = 'autosnippet' }, { t '\\sigma' }),
  s({ trig = ';tau', snippetType = 'autosnippet' }, { t '\\tau' }),
  s({ trig = ';ups', snippetType = 'autosnippet' }, { t '\\upsilon' }),
  s({ trig = ';phi', snippetType = 'autosnippet' }, { t '\\phi' }),
  s({ trig = ';chi', snippetType = 'autosnippet' }, { t '\\chi' }),
  s({ trig = ';psi', snippetType = 'autosnippet' }, { t '\\psi' }),
  s({ trig = ';ome', snippetType = 'autosnippet' }, { t '\\omega' }),
  -- Upper Greek Letters
  s({ trig = ';Alp', snippetType = 'autosnippet' }, {
    t '\\Alpha',
  }),
  s({ trig = ';Bet', snippetType = 'autosnippet' }, {
    t '\\Beta',
  }),
  s({ trig = ';Gam', snippetType = 'autosnippet' }, {
    t '\\Gamma',
  }),
  s({ trig = ';Del', snippetType = 'autosnippet' }, { t '\\Delta' }),
  s({ trig = ';Eps', snippetType = 'autosnippet' }, { t '\\Epsilon' }),
  s({ trig = ';Zet', snippetType = 'autosnippet' }, { t '\\Zeta' }),
  s({ trig = ';Eta', snippetType = 'autosnippet' }, { t '\\Eta' }),
  s({ trig = ';The', snippetType = 'autosnippet' }, { t '\\Theta' }),
  s({ trig = ';Iot', snippetType = 'autosnippet' }, { t '\\Iota' }),
  s({ trig = ';Kap', snippetType = 'autosnippet' }, { t '\\Kappa' }),
  s({ trig = ';Lam', snippetType = 'autosnippet' }, { t '\\Lambda' }),
  s({ trig = ';Mu', snippetType = 'autosnippet' }, { t '\\Mu' }),
  s({ trig = ';Nu', snippetType = 'autosnippet' }, { t '\\Nu' }),
  s({ trig = ';Xi', snippetType = 'autosnippet' }, { t '\\Xi' }),
  s({ trig = ';Omi', snippetType = 'autosnippet' }, { t '\\Omicron' }),
  s({ trig = ';Pi', snippetType = 'autosnippet' }, { t '\\Pi' }),
  s({ trig = ';Rho', snippetType = 'autosnippet' }, { t '\\Rho' }),
  s({ trig = ';Sig', snippetType = 'autosnippet' }, { t '\\Sigma' }),
  s({ trig = ';Tau', snippetType = 'autosnippet' }, { t '\\Tau' }),
  s({ trig = ';Ups', snippetType = 'autosnippet' }, { t '\\Upsilon' }),
  s({ trig = ';Phi', snippetType = 'autosnippet' }, { t '\\Psi' }),
  s({ trig = ';Chi', snippetType = 'autosnippet' }, { t '\\Chi' }),
  s({ trig = ';Psi', snippetType = 'autosnippet' }, { t '\\Psi' }),
  s({ trig = ';Ome', snippetType = 'autosnippet' }, { t '\\Omega' }),
}
