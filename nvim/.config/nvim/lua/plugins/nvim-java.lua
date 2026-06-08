return {
  'nvim-java/nvim-java',
  config = function()
    require('java').setup()
    vim.lsp.enable('jdtls')
    vim.lsp.config('jdtls', {
      settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "Java-11",
            path = "/usr/lib/jvm/java-11-temurin-jdk",
            default = true,
          }
        }
      }
      }
        }
    })
  end,
}
