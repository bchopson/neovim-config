return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      colors = {
        palette = {
          samuraiRed = "#E46876",
        },
      },
    },
  },
  { "savq/melange-nvim" },
  { "miikanissi/modus-themes.nvim" },
  { "vigoux/oak" },
  { "EdenEast/nightfox.nvim", opts = { options = { transparent = true, styles = { comments = "italic" } } } },
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
            colorscheme = "catppuccin-latte"
          end
        end
      end

      return { colorscheme = colorscheme }
    end,
  },
}
