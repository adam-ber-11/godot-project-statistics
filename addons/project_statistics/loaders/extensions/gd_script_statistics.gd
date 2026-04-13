class_name GDScriptStatistics
extends FileStatistics

func _init(path: String, skip_line_count: bool = false) -> void:
	super(path, skip_line_count)

	file_icon = "GDScript"
	file_color = Color.STEEL_BLUE
	file_type = "GDScript"
	file_is_script = true


func is_comment(line: String) -> bool:
	# TODO: Detect multi-line comments
	return line.strip_edges().begins_with("#")
