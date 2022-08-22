ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)


object = {}

function MenuMetier()
    local MenuMetier = RageUI.CreateMenu("Menu Métier", "~b~Menu des différents métier.")


    local policenational = RageUI.CreateSubMenu(MenuMetier, "", "Menu Police National")
    local TenuPN = RageUI.CreateSubMenu(MenuMetier, "", "~b~Menu Tenue")
    local PropsPN = RageUI.CreateSubMenu(MenuMetier, "", "Menu Props")
    local PropsSupPN = RageUI.CreateSubMenu(MenuMetier, "", "Menu Supprésions Props")

    local Pompier = RageUI.CreateSubMenu(MenuMetier, "", "Menu Pompier")
    local TenuSP = RageUI.CreateSubMenu(MenuMetier, "", "~b~Menu Tenue")
    local PropsSP = RageUI.CreateSubMenu(MenuMetier, "", "Menu Props")

    local Douane = RageUI.CreateSubMenu(MenuMetier, "", "Menu Douane")
    local TenuDouane = RageUI.CreateSubMenu(MenuMetier, "", "~b~Menu Tenue")
    local PropsDouane = RageUI.CreateSubMenu(MenuMetier, "", "Menu Props")

    local Brinks = RageUI.CreateSubMenu(MenuMetier, "", "Menu Brinks")
    local TenuBrinks = RageUI.CreateSubMenu(MenuMetier, "", "~b~Menu Tenue")
    local PropsBrinks = RageUI.CreateSubMenu(MenuMetier, "", "Menu Props")

    local Ambulance = RageUI.CreateSubMenu(MenuMetier, "", "Menu Ambulancier")
    local TenuAmbu = RageUI.CreateSubMenu(MenuMetier, "", "~b~Menu Tenue")
    local PropsAmbu = RageUI.CreateSubMenu(MenuMetier, "", "Menu Props")

    RageUI.Visible(MenuMetier, not RageUI.Visible(MenuMetier))
    while MenuMetier do
        Citizen.Wait(0)


                RageUI.IsVisible(MenuMetier, true, true, true, function()

                RageUI.Separator("↓ Menu Métier ↓")

                if ESX.PlayerData.job and ESX.PlayerData.job.name == ConfigJob.JobNameMenu1 then
                    RageUI.ButtonWithStyle("~b~Police National",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                        if (Selected) then
                            service = Checked
                                if Checked then
                                    onPN = true
                                else
                                    onPN = false
                                end
                        end
                    if onPN then
                    end
                end, policenational)
                end

                if ESX.PlayerData.job and ESX.PlayerData.job.name == ConfigJob.JobNameMenu2 then
                    RageUI.ButtonWithStyle("~r~Sapeur Pompier",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                        if (Selected) then
                            service = Checked
                                if Checked then
                                    onSP = true
                                else
                                    onSP = false
                                end
                            end
                            if onSP then
                            end
                    end, Pompier)
                end


                if ESX.PlayerData.job and ESX.PlayerData.job.name == ConfigJob.JobNameMenu3 then
                    RageUI.ButtonWithStyle("~b~Douanier",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                        if (Selected) then
                            service = Checked
                                if Checked then
                                    onDouane = true
                                else
                                    onDouane = false
                                end
                            end
                            if onDouane then
                            end
                    end, Douane)
                end

                if ESX.PlayerData.job and ESX.PlayerData.job.name == ConfigJob.JobNameMenu4 then
                    RageUI.ButtonWithStyle("~g~Brinks",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                        if (Selected) then
                            service = Checked
                                if Checked then
                                    onBrinks = true
                                else
                                    onBrinks = false
                                end
                            end
                            if onBrinks then
                            end
                    end, Brinks)
                end

                if ESX.PlayerData.job and ESX.PlayerData.job.name == ConfigJob.JobNameMenu5 then
                    RageUI.ButtonWithStyle("~r~Ambulancier",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                        if (Selected) then
                            service = Checked
                                if Checked then
                                    onAmbu = true
                                else
                                    onAmbu = false
                                end
                            end
                            if onAmbu then
                            end
                    end, Ambulance)
                end


                end, function() 
                end)

                RageUI.IsVisible(TenuPN, true, true, true, function()

                    RageUI.Separator('↓ ~b~Gestion de votre Tenue ~s~↓')

                        for index,infos in pairs(PoliceNational.clothes.specials) do
                            RageUI.ButtonWithStyle(infos.label,nil, {RightBadge = RageUI.BadgeStyle.Clothes}, true, function(Hovered,Active,Selected)
                                if Selected then
                                    ApplySkin(infos)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(policenational, true, true, true, function()

                RageUI.ButtonWithStyle("~r~Tenue",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, TenuPN)

                RageUI.ButtonWithStyle("~r~Props",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, PropsPN)

                end, function() 
                end)

                RageUI.IsVisible(TenuSP, true, true, true, function()

                        for index,infos in pairs(PompierTenu.clothes.specials) do
                            RageUI.ButtonWithStyle(infos.label, nil, {RightBadge = RageUI.BadgeStyle.Clothes}, true, function(Hovered,Active,Selected)
                                if Selected then
                                    ApplySkin(infos)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(Pompier, true, true, true, function()

                RageUI.ButtonWithStyle("~r~Tenue",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, TenuSP)

                RageUI.ButtonWithStyle("~r~Props Pompier",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, PropsSP)

                end, function() 
                end)

                RageUI.IsVisible(TenuDouane, true, true, true, function()

                        for index,infos in pairs(DouaneTenu.clothes.specials) do
                            RageUI.ButtonWithStyle(infos.label,nil, {RightBadge = RageUI.BadgeStyle.Clothes}, true, function(Hovered,Active,Selected)
                                if Selected then
                                    ApplySkin(infos)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(Douane, true, true, true, function()

                RageUI.ButtonWithStyle("~r~Tenue",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, TenuDouane)

                RageUI.ButtonWithStyle("~r~Props Douane",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, PropsDouane)

                end, function() 
                end)

                RageUI.IsVisible(TenuBrinks, true, true, true, function()

                        for index,infos in pairs(BrinksTenu.clothes.specials) do
                            RageUI.ButtonWithStyle(infos.label,nil, {RightBadge = RageUI.BadgeStyle.Clothes}, true, function(Hovered,Active,Selected)
                                if Selected then
                                    ApplySkin(infos)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(Brinks, true, true, true, function()

                RageUI.ButtonWithStyle("~r~Tenue",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, TenuBrinks)

                RageUI.ButtonWithStyle("~r~Props Brinks",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, PropsBrinks)


                end, function() 
                end)

                RageUI.IsVisible(TenuAmbu, true, true, true, function()

                        for index,infos in pairs(AmbulanceTenu.clothes.specials) do
                            RageUI.ButtonWithStyle(infos.label,nil, {RightBadge = RageUI.BadgeStyle.Clothes}, true, function(Hovered,Active,Selected)
                                if Selected then
                                    ApplySkin(infos)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(Ambulance, true, true, true, function()

                RageUI.ButtonWithStyle("~r~Tenue",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, TenuAmbu)

                RageUI.ButtonWithStyle("~r~Props Ambulancier",nil, {RightLabel = "→"}, true, function(Hovered,Active,Selected)
                end, PropsAmbu)


                end, function() 
                end)

                RageUI.IsVisible(PropsPN, true, true, true, function()
                    local coords  = GetEntityCoords(PlayerPedId())

                    RageUI.ButtonWithStyle("~r~Suppression Props", "Supprimer des objets", { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)
                    end, PropsSupPN)

                    RageUI.ButtonWithStyle("Personalisée", 'Fait spawn un object de ton choix', {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                        if Selected then
                        local personalise = KeyboardInput("Quelle Props ?", '' , '', 8)
                            SpawnObj(personalise)
                        end
                    end)

                    RageUI.Separator('')
                    RageUI.Separator('↓ Props Définit ↓')
                    RageUI.Separator('')

                        for _, v in pairs (Config.PropsPN) do
                            RageUI.ButtonWithStyle(v.nameprops, nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                if Selected then
                                    local timer = 1500
                                    local _src = source
                                    SpawnObj(v.modelprops)
                                    local nameprops = v.nameprops
                                    ExecuteCommand("e pickup")
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    Wait(timer)
                                    ClearPedTasks(PlayerPedId())
                                    FreezeEntityPosition(PlayerPedId(), false)
                                    ESX.ShowNotification('Vous avez fait spawn : ' ..nameprops)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(PropsSP, true, true, true, function()
                    local coords  = GetEntityCoords(PlayerPedId())

                    RageUI.ButtonWithStyle("~r~Suppression Props", "Supprimer des objets", { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)
                    end, PropsSupPN)

                    RageUI.ButtonWithStyle("Personalisée", 'Fait spawn un object de ton choix', {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                        if Selected then
                        local personalise = KeyboardInput("Quelle Props ?", '' , '', 8)
                            SpawnObj(personalise)
                        end
                    end)

                    RageUI.Separator('')
                    RageUI.Separator('↓ Props Définit ↓')
                    RageUI.Separator('')

                        for _, v in pairs (Config.PropsSP) do
                            RageUI.ButtonWithStyle(v.nameprops, nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                if Selected then
                                    local timer = 1500
                                    local _src = source
                                    SpawnObj(v.modelprops)
                                    local nameprops = v.nameprops
                                    ExecuteCommand("e pickup")
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    Wait(timer)
                                    ClearPedTasks(PlayerPedId())
                                    FreezeEntityPosition(PlayerPedId(), false)
                                    ESX.ShowNotification('Vous avez fait spawn : ' ..nameprops)
                                end
                            end)
                        end


                end, function() 
                end)

                RageUI.IsVisible(PropsDouane, true, true, true, function()
                    local coords  = GetEntityCoords(PlayerPedId())

                    RageUI.ButtonWithStyle("~r~Suppression Props", "Supprimer des objets", { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)
                    end, PropsSupPN)

                    RageUI.ButtonWithStyle("Personalisée", 'Fait spawn un object de ton choix', {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                        if Selected then
                        local personalise = KeyboardInput("Quelle Props ?", '' , '', 8)
                            SpawnObj(personalise)
                        end
                    end)

                    RageUI.Separator('')
                    RageUI.Separator('↓ Props Définit ↓')
                    RageUI.Separator('')

                        for _, v in pairs (Config.PropsDouane) do
                            RageUI.ButtonWithStyle(v.nameprops, nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                if Selected then
                                    local timer = 1500
                                    local _src = source
                                    SpawnObj(v.modelprops)
                                    local nameprops = v.nameprops
                                    ExecuteCommand("e pickup")
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    Wait(timer)
                                    ClearPedTasks(PlayerPedId())
                                    FreezeEntityPosition(PlayerPedId(), false)
                                    ESX.ShowNotification('Vous avez fait spawn : ' ..nameprops)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(PropsBrinks, true, true, true, function()
                    local coords  = GetEntityCoords(PlayerPedId())

                    RageUI.ButtonWithStyle("~r~Suppression Props", "Supprimer des objets", { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)
                    end, PropsSupPN)

                    RageUI.ButtonWithStyle("Personalisée", 'Fait spawn un object de ton choix', {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                        if Selected then
                        local personalise = KeyboardInput("Quelle Props ?", '' , '', 8)
                            SpawnObj(personalise)
                        end
                    end)

                    RageUI.Separator('')
                    RageUI.Separator('↓ Props Définit ↓')
                    RageUI.Separator('')

                        for _, v in pairs (Config.PropsBrinks) do
                            RageUI.ButtonWithStyle(v.nameprops, nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                if Selected then
                                    local timer = 1500
                                    local _src = source
                                    SpawnObj(v.modelprops)
                                    local nameprops = v.nameprops
                                    ExecuteCommand("e pickup")
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    Wait(timer)
                                    ClearPedTasks(PlayerPedId())
                                    FreezeEntityPosition(PlayerPedId(), false)
                                    ESX.ShowNotification('Vous avez fait spawn : ' ..nameprops)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(PropsAmbu, true, true, true, function()
                    local coords  = GetEntityCoords(PlayerPedId())

                    RageUI.ButtonWithStyle("~r~Suppression Props", "Supprimer des objets", { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)
                    end, PropsSupPN)

                    RageUI.ButtonWithStyle("Personalisée", 'Fait spawn un object de ton choix', {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                        if Selected then
                        local personalise = KeyboardInput("Quelle Props ?", '' , '', 8)
                            SpawnObj(personalise)
                        end
                    end)

                    RageUI.Separator('')
                    RageUI.Separator('↓ Props Définit ↓')
                    RageUI.Separator('')

                        for _, v in pairs (Config.PropsAmbu) do
                            RageUI.ButtonWithStyle(v.nameprops, nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                if Selected then
                                    local timer = 1500
                                    local _src = source
                                    SpawnObj(v.modelprops)
                                    local nameprops = v.nameprops
                                    ExecuteCommand("e pickup")
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    Wait(timer)
                                    ClearPedTasks(PlayerPedId())
                                    FreezeEntityPosition(PlayerPedId(), false)
                                    ESX.ShowNotification('Vous avez fait spawn : ' ..nameprops)
                                end
                            end)
                        end

                end, function() 
                end)

                RageUI.IsVisible(PropsSupPN, true, true, true, function()
                    for k,v in pairs(object) do
                        if GoodName(GetEntityModel(NetworkGetEntityFromNetworkId(v))) == 0 then table.remove(object, k) end
                        RageUI.ButtonWithStyle("Object: "..GoodName(GetEntityModel(NetworkGetEntityFromNetworkId(v))).." ["..v.."]", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                            if Active then
                                local entity = NetworkGetEntityFromNetworkId(v)
                                local ObjCoords = GetEntityCoords(entity)
                                DrawMarker(0, ObjCoords.x, ObjCoords.y, ObjCoords.z+1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 255, 0, 170, 1, 0, 2, 1, nil, nil, 0)
                            end
                            if Selected then
                                RemoveObj(v, k)
                            end
                        end)
                    end
            
        end, function()
        end)

                if not RageUI.Visible(MenuMetier) and not RageUI.Visible(policenational) and not RageUI.Visible(Pompier) and not RageUI.Visible(Douane) and not RageUI.Visible(Brinks) and not RageUI.Visible(Ambulance) and not RageUI.Visible(PropsPN) and not RageUI.Visible(PropsSP) and not RageUI.Visible(PropsDouane) and not RageUI.Visible(PropsBrinks) and not RageUI.Visible(PropsSupPN) and not RageUI.Visible(TenuPN) and not RageUI.Visible(TenuSP) and not RageUI.Visible(TenuBrinks) and not RageUI.Visible(TenuDouane) and not RageUI.Visible(TenuAmbu) then
                    MenuMetier = RMenu:DeleteType("", true)
        end
    end
end

Keys.Register('F6', 'Metier', 'Ouvrir le menu Métier', function()
    	MenuMetier()
end)