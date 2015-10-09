@Skills = React.createClass
  render: ->
    React.DOM.div
      id: 'skills'
      React.DOM.div
        className: 'experience'
        React.DOM.h5
          style: {"textAlign": 'center'}
          '技能图'
        React.DOM.div
          style: {"textAlign": 'center'}
          React.DOM.canvas
            id: 'myChart'
            width: "400"
            height: "400"
  componentDidMount: ->
    data = {
      labels: skill.name for skill in @props.resume.skills
      datasets: [
        {
          fillColor: "rgba(151,187,205,0.5)",
          strokeColor: "rgba(151,187,205,1)",
          pointColor: "rgba(151,187,205,1)",
          pointStrokeColor: "#fff",
          data: skill.point for skill in @props.resume.skills
        }
      ]
    }
    ctx = document.getElementById("myChart").getContext("2d")
    new Chart(ctx).Radar(data, {
      scaleOverride: true,
      scaleSteps: 10,
      scaleStepWidth: 10,
      scaleStartValue: 0
    })