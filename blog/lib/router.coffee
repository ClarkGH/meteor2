Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'
  waitOn: ->
    Meteor.subscribe 'posts'

Router.route '/',
  name: 'firstPostContent'

Router.route '/posts/:_id',
  name: "postPage"
  data: ->
    Posts.findOne @.params._id

Router.route '/submit',
  name: 'postSubmit'

Router.route '/adminLogin',
  name: 'adminLogin'

Router.onBeforeAction('dataNotFound', {only: 'postPage'});