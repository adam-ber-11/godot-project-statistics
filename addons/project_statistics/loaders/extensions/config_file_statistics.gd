class_name ConfigFileStatistics
extends FileStatistics

func _init(path: String, skip_line_count: bool = false) -> void:
	super(path, skip_line_count)

	file_icon = "File"
	file_color = Color.TEAL
	file_type = "Config File"


func is_comment(line: String) -> bool:
	return line.strip_edges().begins_with(";")
