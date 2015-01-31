Template.postSubmit.events
  'submit form': (e) ->
    e.preventDefault()
    title = $('#postTitle').val();
    content = $('#postContent').val();
    Meteor.call 'submitPost', title, content