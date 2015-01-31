Template.postSubmit.events
  'submit form': (e) ->
    e.preventDefault()
    title = $('#postTitle').val();
    content = $('#postContent').val();
    alert("#{title} #{content}")