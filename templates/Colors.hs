module Colors where

active_color :: String
active_color = "{{colors.primary.default.hex}}"

active_border :: String
active_border = "{{colors.primary.default.hex}}"

active_text :: String
active_text = "{{colors.on_surface.default.hex}}"

inactive_color :: String
inactive_color = "{{colors.surface_container.default.hex}}"

inactive_border :: String
inactive_border = "{{colors.surface_container_high.default.hex}}"

inactive_text :: String
inactive_text = "{{colors.on_surface_variant.default.hex}}"

urgent_color :: String
urgent_color = "{{colors.error.default.hex}}"

urgent_text :: String
urgent_text = "{{colors.on_surface.default.hex}}"

border_normal :: String
border_normal = "{{colors.surface_container_highest.default.hex}}"

border_focused :: String
border_focused = "{{colors.source_color.default.hex}}"
