lua << EOF
local ls = require "luasnip"

ls.config.set_config {
    -- This tells LuaSnip to remember to keep around the last snippet
    -- You can jump back into it even if you move outside of the selection
    history = true,

    -- This one is cool cause if you have dyanmic snippets, it updates as you type!
    updateevents = "TextChanged, TextChangedI",

    -- Autosnippets
    enable_autosnippets = true,
}

vim.keymap.set({"i", "s"}, "<c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, {silent = true})

vim.keymap.set({"i", "s"}, "<c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, {silent = true})

vim.keymap.set("i", "<c-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

require("luasnip/loaders/from_vscode").lazy_load()

-- custom snips for html
ls.add_snippets(nil, {
    all = {
        ls.parser.parse_snippet({trig = "expand"}, "-- this is what was expanded!"),
    },
    html = {
        ls.parser.parse_snippet(
            {trig = "html"},
            "<!DOCTYPE html>\n<html>\n<head>\n<title>{$1}</title>\n</head>\n<body>{$0}\n</body>\n</html>"
        ),
    }
})
EOF
