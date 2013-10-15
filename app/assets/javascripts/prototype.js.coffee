String.prototype.capitalize = ->
	this.charAt(0).toUpperCase() + this.substring(1)

String.prototype.titleize = ->
	this.replace /(^|\s)([a-z])/g , (m,p1,p2) ->
		p1 + p2.toUpperCase()

Array.prototype.any = ->
	this.length > 0

Object.prototype.any = ->
	this.keys().length > 0

Object.prototype.keys = ->
	Object.keys(this)
