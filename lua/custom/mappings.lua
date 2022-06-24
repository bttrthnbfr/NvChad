local M = {}

local function termcodes(str)
   return vim.api.nvim_replace_termcodes(str, true, true, true)
end

M.general = {
  t = {
	  ["jk"] = { termcodes "<C-\\><C-N>", "   escape terminal mode" },
	  ["JK"] = { termcodes "<C-\\><C-N>", "   escape terminal mode" },
  },
  n = {
	  ["<C-Left>"] = {":vertical resize +5 <CR>", "vertical resize +5"},
	  ["<C-Right>"] = {":vertical resize -5 <CR>", "vertical resize -5"},
	  ["<C-Up>"] = {":resize +3 <CR>", "horizontal resize +3"},
	  ["<C-Down>"] = {":resize -3 <CR>", "horizontal resize -3"},
	  ["<Leader>s"] = {":SymbolsOutline <CR>", "Symbol outline toggle"}
  }
}
M.bufferline = {
   n = {
      ["<C-l>"] = { "<cmd> BufferLineCycleNext <CR>", "  cycle next buffer" },
      ["<C-h>"] = { "<cmd> BufferLineCyclePrev <CR>", "  cycle prev buffer" },
      ["<C-k>"] = { "<cmd> BufferLineMoveNext <CR>", "  cycle move next buffer" },
      ["<C-j>"] = { "<cmd> BufferLineMovePrev <CR>", "  cycle move prev buffer" },
      ["<C-p>"] = { "<cmd> BufferLinePick <CR>", "  pick buffer" },
   },
}

return M
