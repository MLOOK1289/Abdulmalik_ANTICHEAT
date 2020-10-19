

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Lang = module("vrp", "lib/Lang")
local cfg = module("vrp", "cfg/groups")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","Attending_management")



print("\n ^2 Made BY Abdulmalik#1111 \n")







--- رتبة 1
local function ab_login1(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g1})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out1(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g1})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

--============================--
  --->>> القائمة العامة
--============================-- 





vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id,Config.Permission}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission}) then
                    menu["تسجيل خروج"] = {ab_out1}
                    menu["تسجيل دخول"] = {ab_login1}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
  end})


-- رتبة 2
local function ab_login2(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g2})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out2(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
    if ok then
  vRP.removeUserGroup({user_id,Config.g2})
  TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
    end
  end
}
) 
end

--============================--
  --->>> القائمة العامة
--============================-- 





vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission1}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission1}) then
                    menu["تسجيل خروج"] = {ab_out2}
                    menu["تسجيل دخول"] = {ab_login2}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
  end})

-- رتبة 3
local function ab_login3(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g3})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out3(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g3})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission2}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission2}) then
                    menu["تسجيل خروج"] = {ab_out3}
                    menu["تسجيل دخول"] = {ab_login3}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 4
local function ab_login4(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g4})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out4(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g4})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission3}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission3}) then
                    menu["تسجيل خروج"] = {ab_out}
                    menu["تسجيل دخول"] = {ab_login}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 5
local function ab_login5(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g5})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out5(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g5})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission4}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission4}) then
                    menu["تسجيل خروج"] = {ab_out}
                    menu["تسجيل دخول"] = {ab_login}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 6
local function ab_login6(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g6})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out6(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g6})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission5}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission5}) then
                    menu["تسجيل خروج"] = {ab_out}
                    menu["تسجيل دخول"] = {ab_login}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 7
local function ab_login7(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g7})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out7(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g7})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission6}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission6}) then
                    menu["تسجيل خروج"] = {ab_out}
                    menu["تسجيل دخول"] = {ab_login}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 8
local function ab_login8(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g8})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out8(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g8})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission7}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission7}) then
                    menu["تسجيل خروج"] = {ab_out8}
                    menu["تسجيل دخول"] = {ab_login8}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 9
local function ab_login9(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g9})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out9(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g9})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission8}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission8}) then
                    menu["تسجيل خروج"] = {ab_out9}
                    menu["تسجيل دخول"] = {ab_login9}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 10
local function ab_login10(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g10})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out10(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g10})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission9}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission9}) then
                    menu["تسجيل خروج"] = {ab_out10}
                    menu["تسجيل دخول"] = {ab_login10}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 11
local function ab_login11(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g11})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out11(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g11})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission10}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission10}) then
                    menu["تسجيل خروج"] = {ab_out11}
                    menu["تسجيل دخول"] = {ab_login11}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 12
local function ab_login12(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g12})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out12(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g12})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission11}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission11}) then
                    menu["تسجيل خروج"] = {ab_out12}
                    menu["تسجيل دخول"] = {ab_login12}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 13
local function ab_login13(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g13})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out13(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g13})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission12}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission12}) then
                    menu["تسجيل خروج"] = {ab_out13}
                    menu["تسجيل دخول"] = {ab_login13}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 14
local function ab_login14(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g14})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out14(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g14})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission13}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission13}) then
                    menu["تسجيل خروج"] = {ab_out14}
                    menu["تسجيل دخول"] = {ab_login14}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 15
local function ab_login15(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g15})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out15(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g15})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission14}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission14}) then
                    menu["تسجيل خروج"] = {ab_out15}
                    menu["تسجيل دخول"] = {ab_login15}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 16
local function ab_login16(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g16})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out16(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g16})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission15}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission15}) then
                    menu["تسجيل خروج"] = {ab_out16}
                    menu["تسجيل دخول"] = {ab_login16}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 17
local function ab_login17(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g17})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out17(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g17})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission15}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission16}) then
                    menu["تسجيل خروج"] = {ab_out17}
                    menu["تسجيل دخول"] = {ab_login17}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})
-- رتبة 18
local function ab_login18(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g18})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out18(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g18})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission17}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission17}) then
                    menu["تسجيل خروج"] = {ab_out18}
                    menu["تسجيل دخول"] = {ab_login18}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 19
local function ab_login19(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g19})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out19(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g19})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission18}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission18}) then
                    menu["تسجيل خروج"] = {ab_out19}
                    menu["تسجيل دخول"] = {ab_login19}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})

-- رتبة 20
local function ab_login(player,user_id)
  local user_id = vRP.getUserId({player})
  vRP.request({player,"هل انت متاكد من تسجيل دخولك ؟؟",30,function(player,ok)
    if ok then
  vRP.addUserGroup({user_id,Config.g20})
  TriggerClientEvent('chatMessage', -1, "  ^2 [ "..Config.ServerName.." ] ^0لقد قام المشرف رقم [ "..user_id.." ] بتسجيل دخوله للمدينة")		
  TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل دخولك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
  SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل دخوله للمدينة \n\n Made BY Abdulmalik#1111")			
    end
  end
}
  )
end

local function ab_out(player,user_id)
      local user_id = vRP.getUserId({player})
      vRP.request({player,"هل انت متاكد من تسجيل خروجك ؟؟",30,function(player,ok)
        if ok then
      vRP.removeUserGroup({user_id,Config.g20})
      TriggerClientEvent('chatMessage', -1, " ^8 [ "..Config.ServerName.." ] ^0 لقد قام المشرف رقم [ "..user_id.." ] بتسجيل خروجه من المدينة")	
      TriggerClientEvent("pNotify:SendNotification",player,{text = "تم تسجيل خروجك بنجاح", type = "info", timeout = (3000),layout = "centerleft"})
      SendDiscord101("لقد قام الادمن رقم [ "..user_id.." ] \n\n بتسجيل خروجه من المدينة \n\n Made BY Abdulmalik#1111")					 
        end
      end
    }
  ) 
end

vRP.registerMenuBuilder({"admin",function(add, data)
  local user_id = vRP.getUserId({data.player})
    if user_id ~= nil then
      local choices = {}
        if vRP.hasPermission({user_id, Config.Permission19}) then
          choices["تحضير الادارة"] = {
            function(player,choice)
              vRP.buildMenu({"vRP_PlyrMangment", {player = player}, 
                function(menu)
                  menu.name = "MaiNN"
                  if vRP.hasPermission({user_id,Config.Permission18}) then
                    menu["تسجيل خروج"] = {ab_out}
                    menu["تسجيل دخول"] = {ab_login}
                  end
                    menu[""] = PlayerGroupd
                  vRP.openMenu({player,menu})
                end
              })
            end,
          "Made BY Abdulmalik#1111"}
        end
      add(choices)
    end
end})




















--

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
  PerformHttpRequest(Config.discord, function(err, text, headers) end, 'POST', json.encode({username = "Abdulmalik#1111", embeds = connect, avatar_url = ""}), { ['Content-Type'] = 'application/json' })
  end
