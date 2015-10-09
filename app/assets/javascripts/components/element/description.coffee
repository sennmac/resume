#<div id="description">
#<div class="experience">
#<h5 style="text-align: center;">自我描述</h5>
#    <ul>
#      <li>
#        <%#=@resume.description.description%>
#      </li>
#</ul>
#    <div class="row">
#    </div>
#</div>
#</div>
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