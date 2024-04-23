using Godot;
using System;

public partial class main : Node2D
{
	// Called when the node enters the scene tree for the first time.
	private void _on_quit_pressed()
	{
		GD.Print("Quit is pressed");
		this.GetTree().Quit();
	}

	private void _on_play_pressed()
	{
		this.GetTree().ChangeSceneToFile("res://page_1.tscn");
	}
}





