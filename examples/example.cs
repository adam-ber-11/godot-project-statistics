using Godot;
using System;

/*
 * This
 * is
 * multi-line
 * comment.
 */
public partial class TestNode : Node
{
    // Single-line comment
    [Export] public int Health = 100;

    public override void _Ready()
    {
        GD.Print("Hello World"); // End line comment
    }
}
