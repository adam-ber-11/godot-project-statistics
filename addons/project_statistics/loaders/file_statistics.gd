class_name FileStatistics
extends RefCounted

var file_path: String = ""
var file_size: int = 0
var file_total_lines: int = 0
var file_code_lines: int = 0
var file_comment_lines: int = 0
var file_blank_lines: int = 0

var file_name: String:
	get():
		return file_path.get_file()
var file_extension: String:
	get():
		return file_path.get_extension()

# Following variables are supposed to be initialized by child class
var file_icon: String = ""
var file_color: Color = Color.TRANSPARENT
var file_is_script: bool = false
var file_is_scene: bool = false
var file_is_resource: bool = false
var file_type: String = ""

var loading_failed: bool = false


func _init(path: String, skip_line_count: bool = false) -> void:
	file_path = path

	var file: FileAccess = FileAccess.open(path, FileAccess.READ)

	if not file:
		loading_failed = true
		return

	file_size = file.get_length()

	if skip_line_count:
		return

	while not file.eof_reached():
		var line: String = file.get_line()
		file_total_lines += 1

		if is_comment(line):
			file_comment_lines += 1
		elif is_blank(line):
			file_blank_lines += 1
		else:
			file_code_lines += 1

	file.close()


@warning_ignore("unused_parameter")
func is_comment(line: String) -> bool:
	return false


func is_blank(line: String) -> bool:
	return line.strip_edges().is_empty()
