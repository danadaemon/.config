return {
  "GeorgesAlkhouri/nvim-aider",
  cmd = {
    "Aider",
    "AiderBackground",
    "AiderTerminal",
  },
  keys = {
    -- Toggle the Aider terminal window
    { "<leader>a/", "<cmd>Aider toggle<cr>", desc = "Toggle Aider" },
    -- Send the current buffer/file directly to Aider's context
    { "<leader>ab", "<cmd>Aider buffer<cr>", desc = "Add current buffer to Aider" },
    -- Visual mode: Send selected text as a prompt or code context
    { "<leader>as", "<cmd>Aider send<cr>", desc = "Send selection to Aider", mode = { "n", "v" } },
    -- Send current LSP diagnostics/errors to Aider so it can fix them
    { "<leader>ad", "<cmd>Aider diagnostics<cr>", desc = "Send diagnostics to Aider" },
  },
  opts = {
    aider_cmd = "aider", -- Uses the global aider binary in your PATH
    args = {
      "--no-auto-commits", -- Keeps control over your git history
      "--pretty",
      "--stream",
    },
    auto_reload = true, -- Automatically reloads Neovim buffers when Aider edits files
  },
}
