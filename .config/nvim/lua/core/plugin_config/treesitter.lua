require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua", "vim", "markdown", "bash" },

  sync_install = false,
  auto_install = true,
  highlight = {
      enable = true,
  },
}
