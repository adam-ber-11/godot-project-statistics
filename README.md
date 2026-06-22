# Godot Project Statistics

An addon for [Godot Engine](https://github.com/godotengine/godot/) that adds a UI panel to display information about the currently open project ([view screenshots](#screenshots)).

## Features

* Number of script lines (code, comments, blank lines and total).
* Number of scenes, size and number of nodes in each scene.
* Number and size of resources.
* Display the size of resources in a pie chart.
* Exclude files or directories from generating statistics.
* Sort rows by any column (by pressing its header).

## Instalation

This plugin is available in the [Godot Asset Library](https://godotengine.org/asset-library/asset/5033) and can be downloaded dicectly in the editor.

It will be also available in the [Godot Asset Store](https://store.godotengine.org/asset/adam-ber-11/godot-project-statistics/) soon.

## Configuration

The configuration can be modified at `Project Settings > Statistics`.

* `Ignore`: List of paths to ignore. (case-sensitive)

* `Load on Startup`: Changing this option to `false` may improve project loading time (especially for large projects), because addon goes through every file in the project during scanning process.

* `Include`: List of paths to include regardless of whether the path is found in the `Ignore` list. (case-sensitive)

> [!NOTE]  
> Natching expressions is possible where "*" matches zero or more arbitrary characters and "?" matches any single character except a period ".".

## Screenshots

![Overview tab](./screenshots/overview_tab.png)

![Scenes tab](./screenshots/scenes_tab.png)

![Resources tab](./screenshots/resources_tab.png)

![Scripts tab](./screenshots/scripts_tab.png)

![Misc tab](./screenshots/misc_tab.png)

## Known limitations and possible improvements

* It is not possible to change the order of columns in the file table.
* It might be useful to have option to change what is diaplayed in pie chart (line count, comment line count, file size).

If you find out some other ones feel free to open an issue. All suggestions are welcome.

## License

This addon is remake of [Godot Project Statistics](https://github.com/Abdera7mane/godot-project-statistics) for Godot 4 (original addon is only for Godot 3) and it is published under MIT license, see [LICENSE](./LICENSE).
