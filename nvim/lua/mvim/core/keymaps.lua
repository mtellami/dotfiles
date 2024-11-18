vim.g.mapleader = " "

local keymap = vim.keymap

function Opts(description)
  return { desc = description, noremap = true, silent = true }
end

-- global
keymap.set("n", "<leader>q", "<cmd>qa<CR>", { desc = "Close neovim" }) -- close neovim
keymap.set("n", "<leader>;", "<cmd>NvimTreeClose | Alpha<CR>", Opts("open dashboard")) -- open dashboard
keymap.set("i", "ii", "<ESC>", { desc = "Exit insert mode with jk" }) -- exit insert mode
keymap.set("n", "<leader>nh", ":nohl<CR>", Opts("Clear search highlights")) -- remove search highlight

-- move lines and blocks
keymap.set("n", "<A-j>", ":m .+1<CR>==", Opts("Move line down"))
keymap.set("n", "<A-k>", ":m .-2<CR>==", Opts("Move line up"))
keymap.set("v", "<A-j>", ":m '>+<CR>gv=gv", Opts("Move block of text up"))
keymap.set("v", "<A-k>", ":m .-2<CR>gv=gv", Opts("Move block of text down"))

-- resize windows
keymap.set("n", "<C-Up>", ":resize -2<CR>", Opts("Resize Window up"))
keymap.set("n", "<C-Down>", ":resize +2<CR>", Opts("Resize Window down"))
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", Opts("Resize Window left"))
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", Opts("Resize Window right"))

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", Opts("Split window vertically")) -- split window vertically 
keymap.set("n", "<leader>wh", "<C-w>s", Opts("Split window horizontally")) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", Opts("Make splits equal size")) -- make split windows equal width & height
keymap.set("n", "<leader>wx", "<cmd>close<CR>", Opts("Close current split")) -- close current split window

-- bufferline
function CloseCurrentBuffer()
  local current = vim.fn.bufnr('%')
  vim.cmd("BufferLineCycleNext")
  vim.cmd('bdelete! ' .. current)
end

keymap.set('n', '<leader>c', CloseCurrentBuffer, { desc = "buffer close picker" }) -- close current buffer
keymap.set('n', 'L', '<CMD>BufferLineCycleNext<CR>', { desc = "Navigate to next buffer" }) -- buffers navigation
keymap.set('n', 'H', '<CMD>BufferLineCyclePrev<CR>', { desc = "Navigate to previous buffer" }) -- buffers navigation

keymap.set('n', ':', '<cmd>FineCmdline<CR>', Opts("fine cmd line")) -- Fine CMD line
keymap.set('n', '<leader>lf', '<cmd>silent !prettier --write %<CR>', Opts("run formatter.")) -- prettier
