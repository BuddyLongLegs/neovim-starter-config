return {
  {"williamboman/mason.nvim",
    config=function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config=function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",
          "cssls",
          "dockerls",
          "docker_compose_language_service",
          "html",
          "jsonls",
          "lua_ls",
          "marksman",
          "pyright",
          "tsserver",
          "vimls",
          "yamlls",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config=function()
      require("lspconfig").bashls.setup{}
      require("lspconfig").cssls.setup{}
      require("lspconfig").dockerls.setup{}
      require("lspconfig").docker_compose_language_service.setup{}
      require("lspconfig").html.setup{}
      require("lspconfig").jsonls.setup{}
      require("lspconfig").lua_ls.setup{}
      require("lspconfig").marksman.setup{}
      require("lspconfig").pyright.setup{}
      require("lspconfig").tsserver.setup{}
      require("lspconfig").vimls.setup{}
      require("lspconfig").yamlls.setup{}

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
