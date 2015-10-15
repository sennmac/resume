@Project = React.createClass
  render: ->
    React.DOM.div
      className: 'experience'
      id: 'project'
      React.DOM.h5
        style: {"textAlign": 'center'}
        '项目经历'
      React.DOM.ul null,
        for project in @props.resume.project
          React.DOM.li null,
            React.DOM.div
              className: 'experience-icon icon-suitcase'
            React.DOM.div
              className: 'experience-content'
              React.DOM.h4
                className: 'experience-name'
                React.DOM.span
                  style: {'float': 'right'}
                  project.start_date + " - " + project.end_date
                project.name
              React.DOM.p null,
                project.title
              render_with_br(project.description)
