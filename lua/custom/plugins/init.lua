-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons",
        opts = {
            options = {
                mode = "buffers",
                offsets =  {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true -- use a "true" to enable the default, or set your own character
                    }
                },
            }
        }
    },
    { "github/copilot.vim" },
    {
        "hachy/cmdpalette.nvim",
        config = function()
            require("cmdpalette").setup()
        end,
    },
    {'akinsho/toggleterm.nvim', version = "*", opts = {
        direction = 'float',
    }},
    'rhysd/git-messenger.vim',
    {
        "hedyhli/outline.nvim",
        config = function()
            -- Example mapping to toggle outline
            vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
            { desc = "Toggle Outline" })

            require("outline").setup {
            -- Your setup opts here (leave empty to use defaults)
            }
        end,
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require'lsp_signature'.setup(opts) end
    }
}
