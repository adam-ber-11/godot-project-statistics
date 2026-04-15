# Stats of this file: comments: 10, blank: 10, code: 5, total: 25

extends Node2D

# Basic GDScript comment
var speed := 200.0 # End line comment

"""
Multi-line comment
"""

"""Single-line comment"""

""" Multi-line
	comment """

# Following line should be also parsed as single line comment

""""""

func _process(delta: float) -> void:

	if speed > 0:
		pass # TODO: implementation
