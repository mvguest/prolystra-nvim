return {
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  -- catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- add yoru
  { "yorumicolors/yorumi.nvim" },

  -- add radium
  { "Sly-Harvey/radium.nvim" },

  -- add nyoom
  { "nyoom-engineering/nyoom.nvim" },

  -- add kanagawa
  { "rebelot/kanagawa.nvim" },

  -- add kanagawa-paper
  { "thesimonho/kanagawa-paper.nvim" },

  -- add poimandres
  { "olivercederborg/poimandres.nvim" },

  -- add no-clown-fiesta
  { "aktersnurra/no-clown-fiesta.nvim" },

  -- add oldword
  { "dgox16/oldworld.nvim" },

  -- add modus
  { "miikanissi/modus-themes.nvim" },

  -- add posterpole
  { "ilof2/posterpole.nvim" },

  -- add vesper
  { "datsfilipe/vesper.nvim" },

  -- define colors_name
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oldworld",
    },
  },
}
