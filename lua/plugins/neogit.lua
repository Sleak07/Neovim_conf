return {
    'NeogitOrg/neogit',
    tag = 'v0.0.1', -- Specify the tag for the older version
    cmd = 'Neogit',
    dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration

        -- Only one of these is needed, not both.
        "nvim-telescope/telescope.nvim", -- optional
        --"ibhagwan/fzf-lua",              -- optional
    },

    opts = {
        signs = {
            section = { '-', '+' },
            item = { '', ' ' },
            hunk = { '', '' },
        },
    },

    lazy = true,
    event = "VeryLazy",

    keys = {
        {
            '<leader>gg',
            function()
                require('neogit').open()
            end,
            desc = 'Neogit',
        },
    },
}
