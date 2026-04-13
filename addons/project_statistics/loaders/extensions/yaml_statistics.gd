class_name YamlStatistics
extends FileStatistics

func _init(path: String, skip_line_count: bool = false) -> void:
	super(path, skip_line_count)

	file_icon = "uid://b3b4dcp7nls3r"
	file_color = Color.MEDIUM_PURPLE
	file_type = "YAMl"


func is_comment(line: String) -> bool:
	return line.strip_edges().begins_with("#")
