-- n, v, i, t = mode names

local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}


M.undotree = {
  n = {
    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "Togggle undotree" },
  }
}

M.tagbar = {
  n = {
    ["<leader>t"] = { "<cmd> TagbarToggle <CR>", "Togggle tag bar" },
  }
}

M.nvimtree = {
  n = {
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    ["<C-n>"] = { "<nil>", "" },
  },
}

M.telescope = {
  n = {
    -- find
    ["<leader>fw"] = { "<nil>" ,"" },
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },

    -- git
    ["<leader>cm"] = { "<nil>", "" },
    ["<leader>gt"] = { "<nil>", "" },
    ["<leader>gs"] = { "<nil>", "" },

  },
}

M.floaterm = {
  n = {
    ["<leader>ft"] = { "<cmd> FloatermNew lazygit<CR>", "Toggle lazygit" },
    ["<leader>fs"] = { "<cmd> FloatermNew --wintype=split <CR>", "Split terminal" },
    ["<leader>fv"] = { "<cmd> FloatermNew --wintype=vsplit <CR>", "Vsplit terminal" },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

return M
