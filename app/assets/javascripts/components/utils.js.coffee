@render_with_br = (__html__) ->
  for sub_content in __html__.split("<br>")
    React.DOM.br null,
      sub_content