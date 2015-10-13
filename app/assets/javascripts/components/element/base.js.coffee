@BaseInfo = React.createClass
  render: ->
    React.DOM.div
      id: 'base'
      className: 'base_block'
      React.DOM.div
        className: 'row'
        React.DOM.div
          className: 'col-xs-2'
          React.DOM.img
            src: "/imgs/" + @props.resume.photo
            className: 'img-rounded img-responsive'
        React.DOM.div
          className: 'col-xs-10'
          style: {color: 'white'}
          React.DOM.img
            src: '/imgs/'+@props.resume.status+'.svg'
            className: 'tile-'+@props.resume.status,
          React.DOM.p
            className: 'lead'
            @props.resume.base_description.lead
          React.DOM.p
            id: 'introduction'
            @props.resume.base_description.introduction
          React.DOM.p
            id: 'contact'
            @props.resume.base_description.contact
