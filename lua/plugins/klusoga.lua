return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<TAB>"] = { "<cmd>bnext<Cr>", desc = "Switch tab to right" },
          ["<S-TAB>"] = { "<cmd>bNext<Cr>", desc = "Switch tab to left" },
        },
        t = {
          ["<F6>"] = { [[<C-\><C-n>v]], desc = "Terminal to visual mode" },
        },
        v = {
          ["a"] = { "<cmd>startinsert<CR>", desc = "Visual to terminal mode" },
        },
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function(plugin, opts)
      -- run default AstroNvim nvim-dap-ui configuration function
      require "astronvim.plugins.configs.nvim-dap-ui"(plugin, opts)

      -- disable dap events that are created
      local dap = require "dap"
      dap.listeners.after.event_initialized.dapui_config = nil
      dap.listeners.before.event_terminated.dapui_config = nil
      dap.listeners.before.event_exited.dapui_config = nil
    end,
  },
}
