# Fabric support for Neovim

This package provides [Fabric Configuration Language](https://blackstork.io/fabric/docs/language/) support for [Neovim](https://neovim.io/), powered by [tree-sitter](https://tree-sitter.github.io/tree-sitter/).

As FCL is based on HCL, we depend on the excellent [tree-sitter-hcl](https://github.com/tree-sitter-grammars/tree-sitter-hcl) for the syntactic parsing itself, and the queries included with the [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) manager.

However, this package provides tree-sitter queries that enable:

- highlighting embedded [jq](https://jqlang.github.io/jq/) queries, Go templates, and HTML/CSS markup;
- highlighting Fabric-specific keywords;
- highlighting paths and URLs where those are expected.

## Installation

- [Install nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation) using your favorite plugin manager;
- Install this repo (`blackstork-io/fabric-nvim`) using your favorite plugin manager as well;
- Install the `fabric`, `jq`, `gotmpl`, `html`, `css` parsers by running `:TSInstall` or adding them to the `ensure_installed` list in nvim-treesitter settings.

For example, with [lazy.nvim](https://lazy.folke.io/):

```lua
require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = { "blackstork-io/fabric-nvim" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "fabric", "jq", "gotmpl", "html", "css", "regex" }, -- ......
        highlight = {
          enable = true,
        }
      })
    end
  },
})
```

## Troubleshooting

- If you find a bug or a problem with the extension, please create a new issue.
- If you have questions about the extension, please post a message in [Fabric Community Slack](https://fabric-community.slack.com/)

Contributions are always welcome!

## License

Like Fabric itself, this plugin is licensed under Apache-2.0 license. See the [LICENSE](LICENSE)
file for the details.
