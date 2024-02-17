-- n, v, i, t = mode names

local M = {}

M.undotree = {
  n = {
    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "Togggle undotree" },
  }
}

M.tagbar= {
  n = {
    ["<leader>t"] = { "<cmd> TagbarToggle <CR>", "Togggle tag bar" },
  }
}

M.nvimtree = {
  n = {
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    ["<C-n>"] = { "<nil>", ""},
  },
}

M.telescope = {
  n = {
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
  },
}

return M
