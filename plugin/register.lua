vim.filetype.add({
  extension = {
    fabric = 'fabric'
  }
})

vim.treesitter.language.register('fabric', 'fabric')

require('nvim-treesitter.parsers').get_parser_configs().fabric = {
  install_info = {
    url = 'https://github.com/blackstork-io/tree-sitter-fabric',
    -- https://github.com/tree-sitter-grammars/tree-sitter-hcl/pull/54
    branch = 'push-sltlwnxkpnyk',
    files = {'dialects/fabric/src/parser.c', 'dialects/fabric/src/scanner.c'},
    requires_generate_from_grammar = false,
  },
}
