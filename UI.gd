extends Control

@onready var popup = $Label

func _ready():
	popup.hide()  # Sembunyikan UI saat awal

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var click_position = event.position  # Posisi klik mouse
		if is_point_in_region(click_position):  # Cek apakah klik di area tertentu
			popup.position = click_position  # Pindahkan popup ke posisi klik
			popup.show()  # Tampilkan popup

# Fungsi untuk menentukan apakah klik berada di area tertentu
func is_point_in_region(point: Vector2) -> bool:
	var target_rect = Rect2(Vector2(200, 200), Vector2(50, 50))  # Area target (x=200, y=200, ukuran 50x50)
	return target_rect.has_point(point)
