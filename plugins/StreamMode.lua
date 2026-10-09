local shared = odh_shared_plugins

local section = shared.AddSection("Stream Mode")

section:AddLabel("Credits: StreamMode")
section:AddParagraph("Sobre", "Ativa/desativa a variável shared.StreamMode.\nUse essa variável no seu ESP para parar de desenhar quando estiver ligado.")

shared.StreamMode = false

section:AddToggle("Stream Mode", function(bool)
    shared.StreamMode = bool
    shared.Notify(bool and "Stream Mode ATIVADO" or "Stream Mode DESATIVADO", 3)
end)

section:AddKeybind("Toggle Rápido", "H", function()
    shared.StreamMode = not shared.StreamMode
    shared.Notify(shared.StreamMode and "Stream Mode ATIVADO" or "Stream Mode DESATIVADO", 2)
end)

section:AddButton("Ver Status", function()
    shared.Notify("Stream Mode está: " .. (shared.StreamMode and "LIGADO" or "DESLIGADO"), 3)
end)
