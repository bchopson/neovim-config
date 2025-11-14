return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      colors = {
        palette = {
          samuraiRed = "#E46876",
        },
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(_)
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
        }
      end,
    },
  },
  {
    "webhooked/kanso.nvim",
    opts = {
      transparent = true,
      foreground = {
        dark = "saturated",
      },
    },
  },
  { "savq/melange-nvim" },
  { "miikanissi/modus-themes.nvim" },
  { "vigoux/oak" },
  { "EdenEast/nightfox.nvim", opts = { options = { transparent = true, styles = { comments = "italic" } } } },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    opts = { transparent = { bg = true, float = true }, bold_keywords = true },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = { transparent_background = true, float = { transparent = true }, styles = { keywords = { "bold" } } },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = { transparent = true, styles = { sidebars = "transparent", floats = "transparent" } },
  },
  {
    "LazyVim/LazyVim",
    opts = function()
      local colorscheme = "kanagawa"

      -- Check if on macOS and system theme is light
      if vim.fn.has("mac") == 1 then
        local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
        if handle then
          local result = handle:read("*a")
          handle:close()
          -- If result is empty, system is using light theme
          if result == "" then
            colorscheme = "kanagawa-lotus"
          end
        end
      end

      return { colorscheme = colorscheme }
    end,
  },
}
