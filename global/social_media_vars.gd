extends Node

# Define the global array of textures
var texture_array = []

func add_texture(texture_to_add):
	texture_array.append(texture_to_add)
	print("Logo added to array")

# Function to remove a texture from the array
func remove_texture(texture_to_remove):
	var index = texture_array.find(texture_to_remove)
	if index != -1:
		texture_array.remove_at(index)
		print("Logo removed from array")
	else:
		print("Logo not found in array")
