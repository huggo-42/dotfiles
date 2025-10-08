return {
  name = 'html',
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html' },
  root_markers = { "package.json", "tsconfig.json", "index.html", ".git" },
  settings = {
    html = {
      validate = {
        scripts = true
      }
    }
  }
}
