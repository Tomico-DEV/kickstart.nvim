return {
  {
    'kevinhwang91/nvim-ufo',
    dependencies = {
      'kevinhwang91/promise-async',
    },
    config = function()
      -- fold settings
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      -- keymaps
      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

      -- setup (choose ONE option below)

      -- Option 3 (recommended: treesitter + indent)
      require('ufo').setup {
        provider_selector = function(bufnr, filetype, buftype) return { 'treesitter', 'indent' } end,
      }
    end,
  },
}
