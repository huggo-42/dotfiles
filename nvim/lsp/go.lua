return {
  name = 'gopls',
  cmd = { 'gopls' },
  filetypes = { 'go', 'gomod', 'gowork', 'gotmpl', 'mod' },
  root_markers = { 'go.work', 'go.mod', '.git' },
}
