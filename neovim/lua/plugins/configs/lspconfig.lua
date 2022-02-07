local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

-- golang
lspconfig.gopls.setup {
  capabilities = capabilities,
}

-- bash
lspconfig.bashls.setup {
  capabilities = capabilities,
}

-- python
lspconfig.pyright.setup {
  capabilities = capabilities,
}

-- lua
lspconfig.sumneko_lua.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      cmd = {"lua-language-server"},
      filetypes = {"lua"},
      runtime = {
        version = "LuaJIT",
        path = vim.split(package.path, ";")
      },
      completion = {enable = true, callSnippet = "Both"},
      diagnostics = {
        enable = true,
        globals = {"vim", "describe"},
        disable = {"lowercase-global"}
      },
      workspace = {
        library = {
          vim.api.nvim_get_runtime_file("", true),
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
          [vim.fn.expand("/usr/share/awesome/lib")] = true
        },
        -- adjust these two values if your performance is not optimal
        maxPreload = 2000,
        preloadFileSize = 1000
      },
      telemetry = {enable = false}
    },
  }
}

-- terraform
lspconfig.terraformls.setup {
  capabilities = capabilities,
}

-- docker
lspconfig.dockerls.setup {
  capabilities = capabilities,
}

-- latex
lspconfig.texlab.setup {
  capabilities = capabilities,
  settings = {
    texlab = {
      auxDirectory = ".",
      bibtexFormatter = "texlab",
      build = {
        args = {
          "--keep-intermediates", "--keep-logs", "--synctex", "%f"
        },
        executable = "tectonic",
        forwardSearchAfter = false,
        onSave = false
      },
      chktex = {onEdit = false, onOpenAndSave = false},
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {args = {}},
      latexFormatter = "latexindent",
      latexindent = {modifyLineBreaks = false}
    },
  }
}

-- json
lspconfig.jsonls.setup {
  capabilities = capabilities,
  settings = {
    json = {
      format = {enabled = false},
      schemas = {
        {
          description = "ESLint config",
          fileMatch = {".eslintrc.json", ".eslintrc"},
          url = "http://json.schemastore.org/eslintrc"
        }, {
          description = "Package config",
          fileMatch = {"package.json"},
          url = "https://json.schemastore.org/package"
        }, {
          description = "Packer config",
          fileMatch = {"packer.json"},
          url = "https://json.schemastore.org/packer"
        }, {
          description = "Renovate config",
          fileMatch = {
            "renovate.json", "renovate.json5",
            ".github/renovate.json", ".github/renovate.json5",
            ".renovaterc", ".renovaterc.json"
          },
          url = "https://docs.renovatebot.com/renovate-schema"
        }, {
          description = "OpenApi config",
          fileMatch = {"*api*.json"},
          url = "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"
        }
      }
    },
  }
}

-- yaml
lspconfig.yamlls.setup {
  capabilities = capabilities,
  settings = {
    yaml = {
      schemaStore = {
        enable = true,
        url = "https://www.schemastore.org/api/json/catalog.json"
      },
      schemas = {
        kubernetes = "*.yaml",
        ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
        ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
        ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
        ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
        ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
        ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
        ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
        ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
        ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
        ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
        ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}"
      },
      format = {enabled = false},
      validate = false, -- TODO: conflicts between Kubernetes resources and kustomization.yaml
      completion = true,
      hover = true
    }
  },
  flags = {debounce_text_changes = 150}
}

require"lsp_signature".setup({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  floating_window = true, -- show hint in a floating window, set to false for virtual text only mode
  doc_lines = 2, -- Set to 0 for not showing doc
  hint_prefix = "🐼 ",
  -- use_lspsaga = false,  -- set to true if you want to use lspsaga popup
  handler_opts = {
    border = "shadow" -- double, single, shadow, none
  }
})
