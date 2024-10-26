return {
    {
        "goolord/alpha-nvim",
        -- dependencies = { 'echasnovski/mini.icons' },
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            -- set header
            dashboard.section.header.val = {
                "                                                                           ",
                "                                                                           ",
                " █████╗ ██████╗  ██████╗    ████████╗ ██████╗     ██████╗ ███████╗██╗   ██╗",
                "██╔══██╗██╔══██╗██╔════╝    ╚══██╔══╝██╔═══██╗    ██╔══██╗██╔════╝██║   ██║",
                "███████║██████╔╝██║            ██║   ██║   ██║    ██║  ██║█████╗  ██║   ██║",
                "██╔══██║██╔══██╗██║            ██║   ██║   ██║    ██║  ██║██╔══╝  ╚██╗ ██╔╝",
                "██║  ██║██████╔╝╚██████╗       ██║   ╚██████╔╝    ██████╔╝███████╗ ╚████╔╝ ",
                "╚═╝  ╚═╝╚═════╝  ╚═════╝       ╚═╝    ╚═════╝     ╚═════╝ ╚══════╝  ╚═══╝  ",
                "                                                                           ",
                "                                                                           ",
                "                                                                           ",
                "    gcc : single line comment                Git           (<leader>g)     ",
                "    gc  : multi line comment                 Debug         (<leader>d)     ",
                "                                             Java          (<leader>J)     ",
                "    za  : single group fold/unfold           C             (<leader>C)     ",
                "    zM  : all group fold                     PlatformIO    (<leader>P)     ",
                "    zR  : all group unfold                   Npm           (<leader>N)     ",
            }

            -- set memu button
            dashboard.section.buttons.val = {
                dashboard.button("n", "📝  > New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", "📁  > Find file", ":Telescope find_files<CR>"),
                dashboard.button("w", "🔍  > Find Word", ":Telescope live_grep <CR>"),
                dashboard.button("r", "🗂️  > Recent", ":Telescope oldfiles<CR>"),
                dashboard.button("q", "🚪  > Quit NVIM", ":qa<CR>"),
            }

            alpha.setup(dashboard.opts)
        end,
    },
}
