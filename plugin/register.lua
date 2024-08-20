vim.filetype.add({
  extension = {
    fabric = 'fabric'
  }
})

vim.treesitter.language.register('fabric', 'fabric')

require('nvim-treesitter.parsers').get_parser_configs().fabric = {
  install_info = {
    url = 'https://github.com/valpackett/tree-sitter-fabric',
    branch = 'push-sltlwnxkpnyk',
    files = {'dialects/fabric/src/parser.c', 'dialects/fabric/src/scanner.c'},
    requires_generate_from_grammar = false,
  },
}
