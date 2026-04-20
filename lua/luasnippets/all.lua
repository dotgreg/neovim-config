local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node
luasnip.add_snippets("all", {
  s("block_fn", {
    t({ "# %%", "e, api = s('')", "def fn():" }), -- Line 1
    t({ "", "    " }), -- Line 2 (indented)
    i(0), -- Cursor on Line 3
    t({ "", "fn()" }), -- Line 4
  }),
})
luasnip.add_snippets("all", {
  s("hi", {
    t("hello, world"),
  }),
  s("wooop", {
    t("woop hello, world"),
  }),
})
