-- Contenido recomendado para tu archivo ZkllerHUB.lua
local MiMarca = "ZkllerHUB"
local script_mode = "PVP"

local original = game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua")
local modificado = original:gsub("Hermanos Hub", MiMarca):gsub("HermanosHub", MiMarca):gsub("Hermanos", MiMarca)

loadstring(modificado)()
