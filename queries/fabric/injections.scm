; inherits: hcl

(function_call
  (identifier) @_func
  (#eq? @_func "query_jq")
  (function_arguments
    (expression
      [
        (template_expr
          (heredoc_template
            (template_literal) @injection.content))
        (literal_value
          (string_lit
            (template_literal) @injection.content))
        (function_call
          (identifier) @_func_1
          (#eq? @_func_1 "join")
          (function_arguments
            (expression
              (collection_value
                (tuple
                  (expression
                    [
                      (template_expr
                        (heredoc_template
                          (template_literal) @injection.content))
                      (literal_value
                        (string_lit
                          (template_literal) @injection.content))
                    ])))) .))
      ]))
  (#set! injection.language "jq"))

(block
  .
  (identifier) @_block
  (#eq? @_block "content")
  .
  (identifier) @_provider
  (#any-of? @_provider "text" "title" "blockquote" "code")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "value")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @injection.content))
          (literal_value
            (string_lit
              (template_literal) @injection.content))
        ]
        (#set! injection.language "gotmpl")))))

(block
  .
  (identifier) @_block
  (#eq? @_block "content")
  .
  (identifier) @_provider
  (#eq? @_provider "image")
  (body
    (attribute
      (identifier) @_attr
      (#any-of? @_attr "src" "alt")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @injection.content))
          (literal_value
            (string_lit
              (template_literal) @injection.content))
        ]
        (#set! injection.language "gotmpl")))))

(block
  .
  (identifier) @_block
  (#eq? @_block "content")
  .
  (identifier) @_provider
  (#eq? @_provider "list")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "item_template")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @injection.content))
          (literal_value
            (string_lit
              (template_literal) @injection.content))
        ]
        (#set! injection.language "gotmpl")))))

(block
  .
  (identifier) @_block
  (#eq? @_block "content")
  .
  (identifier) @_provider
  (#eq? @_provider "openai_text")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "prompt")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @injection.content))
          (literal_value
            (string_lit
              (template_literal) @injection.content))
        ]
        (#set! injection.language "gotmpl")))))

(block
  .
  (identifier) @_block
  (#eq? @_block "publish")
  .
  (identifier) @_provider
  (#eq? @_provider "local_file")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "path")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @injection.content))
          (literal_value
            (string_lit
              (template_literal) @injection.content))
        ]
        (#set! injection.language "gotmpl")))))

(block
  .
  (identifier) @_block
  (#eq? @_block "content")
  .
  (identifier) @_provider
  (#eq? @_provider "table")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "columns")
      (expression
        (collection_value
          (tuple
            (expression
              (collection_value
                (object
                  (object_elem
                    key: (expression) @_key
                    (#any-of? @_key "header" "value")
                    val: (expression
                      [
                        (template_expr
                          (heredoc_template
                            (template_literal) @injection.content))
                        (literal_value
                          (string_lit
                            (template_literal) @injection.content))
                      ])
                    (#set! injection.language "gotmpl")))))))))))

(block
  .
  (identifier) @_block
  (#eq? @_block "data")
  .
  (identifier) @_provider
  (#any-of? @_provider "postgresql" "sqlite")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "sql_query")
      (expression
        [
          (template_expr
            (heredoc_template
              (template_literal) @injection.content))
          (literal_value
            (string_lit
              (template_literal) @injection.content))
        ]
        (#set! injection.language "sql")))))

(block
  .
  (identifier) @_block
  (#eq? @_block "content")
  .
  (identifier) @_provider
  (#eq? @_provider "frontmatter")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "content")
      (expression
        (collection_value
          (object
            (object_elem
              key: (expression) @_key
              (#eq? @_key "css_code")
              val: (expression
                [
                  (template_expr
                    (heredoc_template
                      (template_literal) @injection.content))
                  (literal_value
                    (string_lit
                      (template_literal) @injection.content))
                ])
              (#set! injection.language "css"))))))))

(block
  .
  (identifier) @_block
  (#eq? @_block "content")
  .
  (identifier) @_provider
  (#eq? @_provider "frontmatter")
  (body
    (attribute
      (identifier) @_attr
      (#eq? @_attr "content")
      (expression
        (collection_value
          (object
            (object_elem
              key: (expression) @_key
              (#eq? @_key "js_code")
              val: (expression
                [
                  (template_expr
                    (heredoc_template
                      (template_literal) @injection.content))
                  (literal_value
                    (string_lit
                      (template_literal) @injection.content))
                ])
              (#set! injection.language "javascript"))))))))
