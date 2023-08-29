-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
local km = vim.keymap
local userleader = "<C- >"

km.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
km.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
km.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
km.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
km.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
km.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
km.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Make file an executable
km.set("n", userleader .. "x", "<cmd>!chmod +x %<CR>", { silent = true })
-- Move text up and down
km.set("n", "<M-j>", "<Esc>:m .+1<CR>==")
km.set("n", "<M-k>", "<Esc>:m .-2<CR>==")
-- Visual --
-- Move text up and down
km.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
km.set("v", "<M-k>", ":m '<-2<CR>gv=gv")
-- Visual Block --
-- Move text up and down
km.set("x", "<M-j>", ":move '>+1<CR>gv-gv")
km.set("x", "<M-k>", ":move '<-2<CR>gv-gv")

-- Insert live without insert mode
km.set('n', "<leader>o", "o<Esc>k", { desc = "Insert empty line bellow" })
km.set('n', "<leader>O", "O<Esc>j", { desc = "Insert empty line above" })

-- Undo-tree
km.set('n', "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle Undo-tree" })


return {
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["J"] = { "mzJ`z", desc = "Join Lines" },
    ["<C-d>"] = { "<C-d>zz", desc = "Scroll half down" },
    ["<C-u>"] = { "<C-u>zz", desc = "Scroll half up" },
    ["n"] = { "nzzzv", desc = "Find next" },
    ["N"] = { "Nzzzv", desc = "Find previous" },
    [userleader .. "d"] = { [["_d]], desc = "Delete without killing" },
    [userleader .. "f"] = { vim.lsp.buf.format, desc = "Format buffer" },
    [userleader .. "q"] = { vim.lsp.buf.format, desc = "Open QuickFix list" },
    ["]q"] = { "<cmd>cnext<CR>zz", desc = "Move next in QuickFix list" },
    ["[q"] = { "<cmd>cprev<CR>zz", desc = "Move previous in QuickFix list" },
    ["]l"] = { "<cmd>lnext<CR>zz", desc = "Move to next location" },
    ["[l"] = { "<cmd>lprev<CR>zz", desc = "Move to previous location" },
    [userleader .. "s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc =
    "Change word under cursor in a buffer" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["x"] = { '"_x', desc = "Delete char into void" },
    [userleader .. "g"] = { vim.cmd.Git, desc = "Toggle git" },
    ["<leader>lj"] = { '<cmd>lua vim.lsp.buf.hover()<CR>', desc = "Hover documentation" },
  },
  v = {
    ["<"] = { "<gv", desc = "Indent left" },
    [">"] = { ">gv", desc = "Indent right" },
    [userleader .. "p"] = { '"_dP', desc = "Paste without killing" },
    [userleader .. "d"] = { [["_d]], desc = "Delete without killing" },
    [userleader .. "g"] = { vim.cmd.Git, desc = "Toggle git" },
  },
  x = {
    ["<"] = { "<gv", desc = "Indent left" },
    [">"] = { ">gv", desc = "Indent right" },
    [userleader .. "p"] = { [["_dP]], desc = "Paste without killing" },
    [userleader .. "d"] = { [["_d]], desc = "Delete without killing" },
    [userleader .. "g"] = { vim.cmd.Git, desc = "Toggle git" },
  },
  i = {
    ["<c-u>"] = { "<c-g>u<c-u>", desc = "Delete character" },
    ["<c-w>"] = { "<c-g>u<c-w>", desc = "Delete word" },
    [userleader .. "s"] = { '<cmd>lua vim.lsp.buf.signature_help()<CR>', desc = "Hover signature" },
    [userleader .. "d"] = { '<cmd>lua vim.lsp.buf.hover()<CR>', desc = "Hover documentation" },
    ["<c-l>"] = { "<c-6>", desc = "Switch input method" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
