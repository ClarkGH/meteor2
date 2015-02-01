Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  waitOn: ->
    Meteor.subscribe 'posts'

Router.route '/',
  name: 'firstPostContent'

Router.route "/posts/:_id",
  name: "postPage"
  data: ->
    Posts.findOne this.params._id