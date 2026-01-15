--[[ 
    ZkllerHub - PREMIUM EDITION
    Mode: PVP
]]

-- 1. CONFIGURACIÓN
local MiMarca = "ZkllerHub" 
_G.script_mode = "PVP" -- Configurado para combate por defecto

-- 2. DESCARGA Y TRANSFORMACIÓN (RE-BRANDING)
-- Bajamos el código y reemplazamos todas las menciones de Hermanos por ZkllerHub
local original_source = game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua")

local custom_source = original_source:gsub("Hermanos Hub", MiMarca)
custom_source = custom_source:gsub("HermanosHub", MiMarca)
custom_source = custom_source:gsub("hermanos%-dev", "Zkller-dev")
custom_source = custom_source:gsub("Hermanos", MiMarca)

-- 3. NOTIFICACIÓN DE INICIO PROPIA
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "ZkllerHub",
    Text = "Iniciando sistema de combate...",
    Icon = "rbxassetid://4483345998",
    Duration = 5
})

-- 4. EJECUCIÓN DEL NUEVO CÓDIGO
local success, err = pcall(function()
    loadstring(custom_source)()
end)

if not success then
    print("Error al cargar ZkllerHub: " .. err)
end
