return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<TAB>"] = { "<cmd>bnext<Cr>", desc = "Switch tab to right" },
          ["<S-TAB>"] = { "<cmd>bNext<Cr>", desc = "Switch tab to left" }
        },
        t = {
          ["<esc>"] = { [[<C-\><C-n>v]], desc = "Terminal to visual mode" }
        },
        v = {
          ["a"] = { "<cmd>startinsert<CR>", desc = "Visual to terminal mode" },
        }
      }
    }
  }
}
