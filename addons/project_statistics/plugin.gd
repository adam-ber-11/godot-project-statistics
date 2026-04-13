@tool
extends EditorPlugin

const STATISTICS_PREVIEW: PackedScene = preload("uid://dope3ks0t5w26")
const IGNORE_PROPERTY: String = "statistics/ignore"
const INCLUDE_PROPERTY: String = "statistics/include"

var default_ignore: PackedStringArray = PackedStringArray(
	[
		"res://.import/*",
		"res://.github/*",
		"res://addons/*",
		"*.import",
		"*.uid",
	],
)

var dock: EditorDock


func _enter_tree() -> void:
	_setup()

	var preview: StatisticsPreview = STATISTICS_PREVIEW.instantiate()
	preview.ignore_property = IGNORE_PROPERTY
	preview.include_property = INCLUDE_PROPERTY

	dock = EditorDock.new()
	dock.title = "Statistics"
	dock.dock_icon = preload("uid://elxvrkdlcj2u")
	dock.default_slot = EditorDock.DOCK_SLOT_BOTTOM
	dock.add_child(preview)
	add_dock(dock)


func _exit_tree() -> void:
	remove_dock(dock)
	dock.queue_free()
	dock = null


func _setup() -> void:
	if not ProjectSettings.has_setting(IGNORE_PROPERTY):
		ProjectSettings.set_setting(IGNORE_PROPERTY, default_ignore)
		ProjectSettings.set_initial_value(IGNORE_PROPERTY, default_ignore)
		ProjectSettings.add_property_info(
			{
				"name"= IGNORE_PROPERTY,
				"type"= TYPE_PACKED_STRING_ARRAY,
			},
		)

	if not ProjectSettings.has_setting(INCLUDE_PROPERTY):
		ProjectSettings.set_setting(INCLUDE_PROPERTY, PackedStringArray())
		ProjectSettings.set_initial_value(INCLUDE_PROPERTY, PackedStringArray())
		ProjectSettings.add_property_info(
			{
				"name"= INCLUDE_PROPERTY,
				"type"= TYPE_PACKED_STRING_ARRAY,
			},
		)
