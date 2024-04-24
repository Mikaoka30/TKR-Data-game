using Godot;
using System;



public partial class game : Node
{
	private const string SAVE_PATH = "res://savegame.bin";

	private void saveGame()
	{
		var file = FileAccess.Open(SAVE_PATH, FileAccess.ModeFlags.Write);
	}
}
