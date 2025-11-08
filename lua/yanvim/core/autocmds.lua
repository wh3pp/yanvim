local map = vim.keymap.set

local on_attach = function(_, bufnr)
  local function opts(desc) return { buffer = bufnr, desc = 'LSP ' .. desc } end

  map('n', 'gD', vim.lsp.buf.declaration, opts('Go to declaration'))
  map('n', 'gd', vim.lsp.buf.definition, opts('Go to definition'))
  map('n', 'gi', vim.lsp.buf.implementation, opts('Go to implementation'))
  map('n', 'gr', vim.lsp.buf.references, opts('Go to references'))
  map('n', '<leader>de', vim.diagnostic.open_float, opts('Show line diagnostics'))
  map('n', '<leader>dl', vim.diagnostic.setloclist, opts('List all diagnostics'))
  map('n', '<leader>ca', vim.lsp.buf.code_action, opts('Code action'))
  map('n', '<leader>ra', vim.lsp.buf.rename, opts('Rename'))
  map('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts('Add workspace folder'))
  map('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts('Remove workspace folder'))

  map(
    'n',
    '<leader>wl',
    function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
    opts('List workspace folders')
  )

  map('n', '<leader>D', vim.lsp.buf.type_definition, opts('Go to type definition'))
end

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    on_attach(client, bufnr)
  end,
})
