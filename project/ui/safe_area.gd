extends MarginContainer

func _ready() -> void:
    # Get the safe area and window size from the device
    var safe_area = DisplayServer.get_display_safe_area()
    var window_size = DisplayServer.window_get_size()
    
    # Calculate the margins required to avoid the notch/corners
    var margin_left = safe_area.position.x
    var margin_top = safe_area.position.y
    var margin_right = window_size.x - (safe_area.position.x + safe_area.size.x)
    var margin_bottom = window_size.y - (safe_area.position.y + safe_area.size.y)
    
    # Apply the margins to this container
    add_theme_constant_override("margin_left", margin_left)
    add_theme_constant_override("margin_top", margin_top)
    add_theme_constant_override("margin_right", margin_right)
    add_theme_constant_override("margin_bottom", margin_bottom)