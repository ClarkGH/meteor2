Meteor.methods
  'submitPost': (title, content) ->
    console.log title
    console.log content
    Posts.insert
      title:title
      content:content