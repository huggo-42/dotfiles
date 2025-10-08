return {
  name = 'rust_analyzer',
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
  root_markers = { 'Cargo.toml', '.git' },
  init_options = {
    cargo = {
      allFeatures = true,
    },
    procMacro = {
      enable = true,
    },
  },
  flags = {
    debounce_text_changes = 150,
  },
}
