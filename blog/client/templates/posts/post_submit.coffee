Template.postSubmit.events
  'submit form': (e) ->
    e.preventDefault()
    alert "This is preventing the default action"