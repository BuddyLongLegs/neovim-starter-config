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
    lazy=false,
    config=function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require("lspconfig").bashls.setup({
        capabilities = capabilities
      })
      require("lspconfig").cssls.setup({
        capabilities = capabilities
      })
      require("lspconfig").dockerls.setup({
        capabilities = capabilities
      })
      require("lspconfig").docker_compose_language_service.setup({
        capabilities = capabilities
      })
      require("lspconfig").html.setup({
        capabilities = capabilities
      })
      require("lspconfig").jsonls.setup({
        capabilities = capabilities
      })
      require("lspconfig").lua_ls.setup({
        capabilities = capabilities
      })
      require("lspconfig").marksman.setup({
        capabilities = capabilities
      })
      require("lspconfig").pyright.setup({
        capabilities = capabilities
      })
      require("lspconfig").tsserver.setup({
        capabilities = capabilities
      })
      require("lspconfig").vimls.setup({
        capabilities = capabilities
      })
      require("lspconfig").yamlls.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {noremap = true, silent = true})
    end
  }
}
