# ::: warning
# This document gets automatically generated using the [GDScript Docs Maker](https://github.com/GDQuest/gdscript-docs-maker)
# :::
# The Velius class represents the whole backend of the game.
# It also works as the API between themes and MysterMaker project files.
# To acces it when developing a theme, please use the official Velius-Engine SDK.
# To access it when developing a mystery, you can use `Velius.<PROPERTY/METHOD>` in your scripts.
extends Node

###############################################################################
#                                  VELIUS ENGINE                              #
###############################################################################

##############################
# SIGNALS:

# Called when a new dialogue is fired
# Returns a Dictionary
signal new_dialogue(data)

##############################
# VARIABLES:

# Contains the current dialogue
var next := {} setget set_next

var json_data := {}
var current_json_path := ""
var current_json_location := ""
var current_chapter_id : int
var current_dialogue_id : int
var current_location_id : int

##############################
# SET/GET-TERS

func set_next(new_next : Dictionary) -> void:
	pass

##############################
# VARIABLE SAVING API

# TODO: IMPLEMENT

##############################
#  FUNCTION OVERRIDES

func _ready() -> void:
	pass

func _notification(what) -> void:
	pass

##############################
# TODO: FIND TITLE

# Returns Dictionary containing
# the dialogue's data
# If id not found: returns empty Dictionary
func get_dialogue_by_id(id : int, chapter_id = current_chapter_id) -> Dictionary:
	return {}

# Returns a choice's action string
func get_action(id : int) -> String:
	return ""

##########################################
### MESSAGE SYSTEM

# Loads a Mystery's data and theme
# After loading the given chapter will get displayed
func start_chapter(json_path : String, chapterID : int, dialogue_id = 0) -> void:
	pass

# Runs a dialogue with the given data
# Replaces all '@'-variables with their string value
func run_dialogue(data : Dictionary) -> void:
	pass

# Run location view
# TODO: Implement
func run_location(l : Dictionary) -> void:
	pass

# Jumps to the next dialogue
# TODO: Implement
func go_next() -> void:
	pass

# Ends the mystery processing
func end() -> void:
	pass

###############################################################################
# API
###############################################################################

# Go to current chapter's dialogue with given id
func go(id : int) -> void:
	pass

# Switches to chapter with given id
# and directly jumps to given dialogue_id
func go_chapter(chapter_id : int, dialogue_id = 0) -> void:
	pass

# Called when player made a choice
# Runs the selected choice's script
func choice_made(id : int) -> void:
	pass

# Opens the side menu
func open_side_menu() -> void:
	pass

# Returns a mystery resources full virtual path
func get_mystery_resource_path(relative_path : String) -> String:
	return ""

# Returns if a mystery resource exists
func mystery_resource_exists(relative_path : String) -> bool:
	return false

# Returns ImageTexture of a given local png path
func png_to_tex(local_res_path : String) -> ImageTexture:
	return ImageTexture.new()

###############################################################################
# IMPORT DLC
###############################################################################

# Imports the mystery package located at the given path
# If path is not given all packages get imported that are
# located at user://DLC
# The dlc parameter determines if the packages is displayed
# in the dlc or the debug category
# If no arguments are given, all DLC in user://DLC get
# imported as DLC
func import(path = "all", dlc = false) -> void:
	pass

# Removes a dictionary's object from a dictionary
# Only works on the first layer (non-recursive)
func erase_from(dict : Dictionary, from : Dictionary) -> Dictionary:
	return {}

# Returns the key of a object with in a dictionary that eqals the 'from' dictioanry
func get_key_by_from(dict : Dictionary, from : Dictionary) -> String:
	return ""

# Returns a given string value in its type
func evaluate_value(input : String):
	pass
