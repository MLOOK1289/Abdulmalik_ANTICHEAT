RegisterServerEvent("2swshit:cleanareaveh")
RegisterServerEvent("2swshit:cleanareapeds")
RegisterServerEvent("2swshit:cleanareaentity")
RegisterServerEvent("2swshit:enable")
RegisterServerEvent("2swshit:log")
RegisterServerEvent("2swshit:spectate")
RegisterServerEvent("2swshit:openmenu")
RegisterServerEvent("2swshit:checkup")
RegisterServerEvent("2swshit:adminmenuenable")
RegisterServerEvent("2swshit:ViolationDetected")
RegisterServerEvent("2swshit:askAwake")


function isAllowedToChange(player)
    local allowed = false
    for i,id in ipairs(admins) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if debugprint then print('admin id: ' .. id .. '\nplayer id:' .. pid) end
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end
RegisterCommand((menu), function(source)
    if source == 0 then
        holyadmin = not holyadmin
        if holyadmin then
            print("Menu is now enabled.")
        else
            print("Menu is now disabled.")
        end
    else
        if isAllowedToChange(source) then
            holyadmin = not holyadmin
            if holyadmin then
                TriggerClientEvent('2swshit:openmenuy', source)
            else
                TriggerClientEvent('2swshit:openmenuy', source)
            end
        end
    end
end)



AddEventHandler("2swshit:adminmenuenable", function()
    TriggerClientEvent('adminmenuenabley',source)
end)

function GetEntityOwner(entity)
    local owner = NetworkGetEntityOwner(entity)
    if (GetEntityPopulationType(entity) ~= 7) then return nil end
    return owner
end


AddEventHandler("2swshit:cleanareaveh", function()
  TriggerClientEvent("2swshit:cleanareavehy",-1)
end)

AddEventHandler("2swshit:cleanareapeds", function()
    TriggerClientEvent("2swshit:cleanareapedsy",-1)
  end)

AddEventHandler("2swshit:cleanareaentity", function()
    TriggerClientEvent("2swshit:cleanareaentityy",-1)
  end)
