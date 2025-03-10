return {
    {
        'folke/lazydev.nvim',
        lazy = true,
        ft = 'lua',
        cond = string.sub(vim.fn.getcwd(), -5) == '/nvim',
        version = '*',
        opts = {},
    },

    {
        'williamboman/mason.nvim',
        varsion = '*',
        lazy = true,
        cmd = 'Mason',
        opts = {},
    },

    {
        'williamboman/mason-lspconfig.nvim',
        varsion = '*',
        lazy = true,
    },

    {
        'neovim/nvim-lspconfig',
        varsion = '*',
        ft = { 'python', 'c', 'cpp', 'lua', 'verilog', 'systemverilog',
            'javascript', 'javascriptreact', 'javascript.jsx', 'typescript',
            'typescriptreact', 'typescript.tsx' },
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lsp-document-symbol',
            'hrsh7th/cmp-nvim-lsp-signature-help',
        },

        keys = {
            { '<leader>lh', vim.lsp.buf.hover,          desc = 'Show hover' },
            { '<leader>la', vim.lsp.buf.code_action,    desc = 'Code action' },
            { '<leader>ld', vim.lsp.buf.definition,     desc = 'Go to definition' },
            { '<leader>li', vim.lsp.buf.implementation, desc = 'Go to implementation' },
            { '<leader>le', vim.lsp.buf.declaration,    desc = 'Go to declaration' },
            { '<leader>lr', vim.lsp.buf.rename,         desc = 'Rename symbol' },
            { '<leader>lf', vim.lsp.buf.format,         desc = 'Format document' },
            { '<leader>ls', vim.lsp.buf.signature_help, desc = 'Signature help' },
            { '<leader>lt', vim.lsp.buf.type_definition,desc = 'Type definition' },
        },

        config = function()
            local lspconfig = require('lspconfig')
            local cmp = require('cmp_nvim_lsp')
            local complete = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

            lspconfig.basedpyright.setup({
                capabilities = complete,
            })

            lspconfig.clangd.setup({
                capabilities = complete,
                cmd = { "clangd", "--offset-encoding=utf-8"}
            })

            lspconfig.lua_ls.setup({
                capabilities = complete,
            })

            lspconfig.svlangserver.setup({
                capabilities = complete,
            })

            lspconfig.ts_ls.setup({
                capabilities = complete,
            })
        end,
    },

    {
        'folke/trouble.nvim',
        opts = {},
        cmd = 'Trouble',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        version = '*',

        keys = {
            {
                '<leader>r',
                '<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>',
                desc = 'Diagnostics',
            },
            {
                '<leader>o',
                '<cmd>Trouble symbols toggle focus=true win.position=bottom<cr>',
                desc = 'Symbols',
            },
        },
    },
}
