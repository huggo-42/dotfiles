return {
  name = 'dartls',
  cmd = { '/home/huggo/Software/flutter/bin/dart', 'language-server', '--protocol=lsp' },
  filetypes = { 'dart' },
  root_markers = { 'pubspec.lock', 'pubspec.yaml' },
}
