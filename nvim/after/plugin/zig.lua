local lspconfig = require('lspconfig')
lspconfig.zls.setup {
    -- Server-specific settings. See `:help lspconfig-setup`

    -- omit the following line if `zls` is in your PATH
    cmd = { '/home/shoka/Software/zls/zig-out/bin/zls' },
    -- There are two ways to set config options:
    --   - edit your `zls.json` that applies to any editor that uses ZLS
    --   - set in-editor config options with the `settings` field below.
    --
    -- Further information on how to configure ZLS:
    -- https://github.com/zigtools/zls/wiki/Configuration
    settings = {
      zls = {
        -- omit the following line if `zig` is in your PATH
        zig_exe_path = '/home/shoka/Software/zig/zig',
      }
    }
}
