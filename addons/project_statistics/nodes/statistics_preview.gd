@tool
class_name StatisticsPreview
extends VBoxContainer

@export var tabs: Array[BaseTab]
@export var ignore_property: String
@export var include_property: String


func _ready() -> void:
	_on_refresh_pressed()


func _on_refresh_pressed() -> void:
	var ignore: Variant = ProjectSettings.get_setting(ignore_property)
	var include: Variant = ProjectSettings.get_setting(include_property)

	# HACK: Sometimes it fails to load project settings data and null is returned,
	# this workaround works to prevent cast error.
	if ignore == null or include == null:
		return

	@warning_ignore("unsafe_cast")
	var stats: ProjectStatistics = ProjectStatistics.new(
		ignore as PackedStringArray,
		include as PackedStringArray,
	)

	for tab: BaseTab in tabs:
		tab.update(stats)
