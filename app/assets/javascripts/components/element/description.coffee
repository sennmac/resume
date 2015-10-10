@Description = React.createClass
  render: ->
    React.DOM.div
      id: 'description'
      React.DOM.div
        className: 'experience'
        React.DOM.h5
          style: {'textAlign':'center'}
          '自我描述'
        React.DOM.ul null,
          React.DOM.li null,
            @props.resume.description.description