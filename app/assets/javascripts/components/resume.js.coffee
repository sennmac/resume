@Resume = React.createClass
  getDefaultProps: ->
    resume: {}
  render: ->
    #base experience education project description skills
    React.DOM.div null,
      React.createElement BaseInfo,   resume: @props.resume
      React.createElement Experience, resume: @props.resume
      React.createElement Education,  resume: @props.resume
      React.createElement Project,    resume: @props.resume
      React.createElement Description,resume: @props.resume
      React.createElement Skills,     resume: @props.resume