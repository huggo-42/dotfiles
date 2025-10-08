return {
  name = 'tsserver',
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'html' },
  root_markers = { "package.json", "tsconfig.json", ".git" },
}
