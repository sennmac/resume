@Education = React.createClass
  render: ->
    React.DOM.div
      id: 'education'
      React.DOM.div
        className: 'experience'
        React.DOM.h5
          style: {'textAlign': 'center'}
          '教育经历'
        React.DOM.ul null,
          for education in @props.resume.education
            React.DOM.li null,
              React.DOM.div
                className: 'experience-icon  icon-graduate'
              React.DOM.div
                className: 'experience-content'
                React.DOM.h4
                  className: 'experience-name'
                  React.DOM.span
                    style: {'float': 'right'}
                    education.start_date + ' — ' + education.end_date
                  education.school
                education.description
