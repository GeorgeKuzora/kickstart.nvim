return {
  "nvimtools/none-ls.nvim",
  -- "jose-elias-alvarez/null-ls.nvim",
  dependencies = {
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
          "markdownlint",
          "black",
          "isort",
          "flake8",
          "tidy",
          "stylelint",
          "prettierd",
          "eslint_d"
      },
    },
  },
  },
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      null_ls.builtins.code_actions.eslint_d,
      -- Set a diagnostics
      null_ls.builtins.diagnostics.flake8,
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.diagnostics.eslint_d,
      -- null_ls.builtins.diagnostics.stylelint,
      -- null_ls.builtins.diagnostics.tidy,
      -- Set a formatter
      null_ls.builtins.formatting.isort,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.markdownlint,
      null_ls.builtins.formatting.eslint_d,
      null_ls.builtins.formatting.prettierd,
      -- null_ls.builtins.formatting.stylelint,
      -- null_ls.builtins.formatting.tidy
    }
    return config -- return final config table
  end,
}

