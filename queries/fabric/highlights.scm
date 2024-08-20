; inherits: hcl

(block
  .
  (identifier) @constant.builtin
  (#any-of? @constant.builtin
    "document" "section" "content" "data" "meta" "vars" "publish" "config" "fabric"))

(block
  .
  (identifier) @_block
  (#any-of? @_block "meta")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "url")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @string.special.url))
          (literal_value
            (string_lit
              (template_literal) @string.special.url))
        ]))))

(function_call
  (identifier) @_func
  (#eq? @_func "from_file")
  (function_arguments
    (expression
      [
        (template_expr
          (heredoc_template
            (template_literal) @string.special.path))
        (literal_value
          (string_lit
            (template_literal) @string.special.path))
      ])))

(block
  .
  (identifier) @_block
  (#eq? @_block "data")
  .
  (identifier) @_provider
  (#any-of? @_provider "csv" "txt" "json" "terraform_state_local")
  (body
    (attribute
      (identifier) @_attr
      (#any-of? @_attr "glob" "path")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @string.special.path))
          (literal_value
            (string_lit
              (template_literal) @string.special.path))
        ]))))

(block
  .
  (identifier) @_block
  (#eq? @_block "data")
  .
  (identifier) @_provider
  (#eq? @_provider "rss")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "url")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @string.special.url))
          (literal_value
            (string_lit
              (template_literal) @string.special.url))
        ]))))
