@tool
class_name OverviewTab
extends BaseTab

var total_scenes: TreeItem
var total_resources: TreeItem
var total_scripts: TreeItem
var other_files: TreeItem

@onready var tree: Tree = $Panel/Tree
@onready var pie_graph: PieGraph = $PieGraph


func _ready() -> void:
	var root: TreeItem = tree.create_item()

	total_scenes = create_tree_item(root, "Total scenes")
	total_resources = create_tree_item(root, "Total resources")
	total_scripts = create_tree_item(root, "Total scripts")
	other_files = create_tree_item(root, "Other files")

	total_scenes.set_icon(0, get_theme_icon("PackedScene", "EditorIcons"))
	total_resources.set_icon(0, get_theme_icon("Object", "EditorIcons"))
	total_scripts.set_icon(0, get_theme_icon("Script", "EditorIcons"))
	other_files.set_icon(0, get_theme_icon("File", "EditorIcons"))


func update(new_stats: ProjectStatistics) -> void:
	total_scenes.set_text(1, str(new_stats.scenes.size()))
	total_resources.set_text(1, str(new_stats.resources.size()))
	total_scripts.set_text(1, str(new_stats.scripts.size()))
	other_files.set_text(1, str(new_stats.misc.size()))

	var graph_data: Array[ChartData] = [
		ChartData.new("Scenes", new_stats.scenes.size(), Color.INDIAN_RED),
		ChartData.new("Resources", new_stats.resources.size(), Color.ORANGE),
		ChartData.new("Scripts", new_stats.scripts.size(), Color.LIGHT_SEA_GREEN),
		ChartData.new("Other", new_stats.misc.size(), Color.LIGHT_GRAY),
	]

	pie_graph.set_series(graph_data, false)
