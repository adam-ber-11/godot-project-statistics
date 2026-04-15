// Stats of this file: comments: 13, blank: 10, code: 10, total: 33

using Godot;
using System;

/*
 * This
 * is
 * multi-line
 * comment.
 */

/* Single line comment */

// Following line should be also parsed as single line comment

/* */

/* Multi-line
   comment */


public partial class TestNode : Node
{
    // Single-line comment
    [Export] public int Health = 100;

    public override void _Ready()
    {
        GD.Print("Hello World"); // End line comment this is considered as code
    }
}
