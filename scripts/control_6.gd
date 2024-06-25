extends Control

func _on_preventbtn_pressed():
	OS.shell_open("https://www.dia.govt.nz/Identity---How-does-identity-theft-happen")


func _on_two_factorbtn_pressed():
	OS.shell_open("https://www.cert.govt.nz/individuals/guides/two-factor-authentication/")


func _on_personalbtn_pressed():
	OS.shell_open("https://www.dpmc.govt.nz/our-programmes/national-security/cyber-security-strategy")
