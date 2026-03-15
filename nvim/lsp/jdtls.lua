local home = os.getenv("HOME")

local workspace = os.getenv("HOME")
    .. "/.cache/jdtls/workspace/"
    .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

return {
  name = "jdtls",
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-noverify",
    "-Xmx1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",
    "-jar", home .. "/.local/share/jdtls/plugins/org.eclipse.equinox.launcher_1.7.100.v20251111-0406.jar",
    "-configuration", home .. "/.local/share/jdtls/config_linux",
    "-data", workspace
  },
  config = {
    java = {
      eclipse = {
        downloadSources = true,
      },
      contentProvider = { preferred = "fernflower" },
    },
  },
  filetypes = { "java" },
  -- root_markers = { ".git", "mvnw", "pom.xml" },
  root_markers = { ".git", "pom.xml", "build.gradle", "mvnw", "gradlew" }
}
