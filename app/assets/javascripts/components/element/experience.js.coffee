@Experience = React.createClass
  render: ->
    React.DOM.div
      className: 'experience'
      id: 'experience'
      React.DOM.h5
        style: {"textAlign": 'center'}
        '工作经历'
      React.DOM.ul null,
        for experience in @props.resume.experience
          React.DOM.li null,
            React.DOM.div
              className: 'experience-icon icon-coffee'
            React.DOM.div
              className: 'experience-content'
              React.DOM.h4
                className: 'experience-name'
                React.DOM.span
                  style: {'float': 'right'}
                  experience.start_date + " - " + experience.end_date
                experience.company
              React.DOM.p null,
                experience.title
              render_with_br(experience.description)
