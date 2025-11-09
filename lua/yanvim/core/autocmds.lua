local map = vim.keymap.set

local on_attach = function(_, bufnr)
  local function opts(desc) return { buffer = bufnr, desc = 'LSP ' .. desc } end
  -- Navigation
  map('n', 'gd', vim.lsp.buf.definition, opts('Go to Definition'))
  map('n', 'gD', vim.lsp.buf.declaration, opts('Go to Declaration'))
  map('n', '<leader>D', vim.lsp.buf.type_definition, opts('Go to Type Definition'))
  map('n', 'gi', vim.lsp.buf.implementation, opts('Go to Implementation'))
  map('n', 'gr', vim.lsp.buf.references, opts('Find All References'))

  -- Inspection
  map('n', 'K', vim.lsp.buf.hover, opts('Hover Documentation'))
  map({ 's', 'i' }, '<C-k>', vim.lsp.buf.signature_help, opts('Signature Help'))

  -- Actions
  map('n', '<leader>ra', vim.lsp.buf.rename, opts('Rename Symbol'))
  map('n', '<leader>ca', vim.lsp.buf.code_action, opts('Code Action'))

  -- Workspace management
  map('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts('Add Workspace Folder'))
  map('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts('Remove Workspace Folder'))
  map(
    'n',
    '<leader>wl',
    function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
    opts('List Workspace Folders')
  )
end

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    on_attach(client, bufnr)
  end,
})
