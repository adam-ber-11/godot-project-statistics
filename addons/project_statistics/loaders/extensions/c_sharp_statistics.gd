class_name CSharpStatistics
extends FileStatistics

func _init(path: String, skip_line_count: bool = false) -> void:
	super(path, skip_line_count)

	file_icon = "CSharpScript"
	file_color = Color.LIME_GREEN
	file_type = "C#"
	file_is_script = true


func is_comment(line: String) -> bool:
	line = line.strip_edges()
	return (line.begins_with("//")
		or line.begins_with("/*")
		or line.begins_with("*")
		or line.ends_with("*/") )
