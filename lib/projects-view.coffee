{$, $$, ScrollView, SelectListView} = require 'atom-space-pen-views'

module.exports =
class ProjectsView extends ScrollView

  @content: ->
    @div class: 'gitlab-projects', =>
      @div class: 'panel', =>
        @div outlet: 'panelText', class: 'padded', =>
          @h4 'GitLab'

  initialize: ->
    super

  # constructor: (serializedState) ->
    # # Create root element
    # @root = document.createElement('div')
    # @root.classList.add('gitlab-projects')
    #
    # # Create message root
    # message = document.createElement('div')
    # message.textContent = "The Gitlab package is Alive! It's ALIVE!"
    # message.classList.add('message')
    # @root.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  # serialize: ->
  #   {}

  # getElement: ->
  #   @

  getTitle: ->
    "GitLab"

  attach: ->
    atom.workspace.addRightPanel item: this

  # Tear down any state and detach
  # destroy: ->
  #   # @root.remove()
  #
  # getElement: ->
  #   @root