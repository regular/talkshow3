
dom = require 'dom'
events = require 'events'
closest = require 'closest'
debug = require('debug')('rplan.lib.board')
Sortable = require 'sortable'

bindTemplate = require "bind-jade"

template = bindTemplate require './views/board'

class Board
    constructor: (parentElement) ->
        parentElement ?= "content"
        parent = dom(parentElement)
        text = "Hello World, my library name is #{@constructor.name}"
        
        # make field containers
        element = dom template(fields: '1 2 3 4 5 6'.split(' '))
        parent.append element

        # make them sortable
        sortable = new Sortable(element.get 0)
        sortable.bind()

module.exports = Board



