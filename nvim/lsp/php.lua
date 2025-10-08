return {
  name = 'php',
  cmd = { 'intelephense', '--stdio', '/home/huggo/.local/bin/phpactor', 'language-server' },
  filetypes = { 'php' },
  root_markers = { 'composer.json', '.git', 'artisan', 'bootstrap', 'composer.lock', 'docker-compose.yml', 'package.json' < 'phpunit.xml' },
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000,
      }
    }
  }
}
