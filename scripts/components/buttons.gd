class_name ActionButton
extends Control

signal on_click

enum Action { CLOSE, HOME, SETTINGS }

@export var action: Action = Action.CLOSE
@export_file("*.tscn") var home_scene_path: String = "res://scenes/game_menu.tscn"

@onready var button: TextureButton = %Button

func _ready() -> void:
	button.pressed.connect(_on_pressed)

func _on_pressed() -> void:
	sound_manager.play("Click")
	match action:
		Action.HOME:
			get_tree().change_scene_to_file(home_scene_path)
		Action.SETTINGS:
			ui_manager.open_settings_modal()
	on_click.emit()
