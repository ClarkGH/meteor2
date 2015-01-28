Meteor.subscribe 'posts'

Template.posts.helpers
  posts: ->
    Posts.find()

Template.content.helpers
  content: ->
    Content.find()