




function UserDefineData()
    UI:Lua_ShowTypeMsg(1, "加载UserDefineData")
    LuaGlobal["MonsterSelectUseRect"]  = true   --怪物选择方式，true为默认，false为选取像素    
    LuaGlobal["ShowMonsterHeaderInfo"] = true  --显示选择怪物时候的怪物头像信息
    LuaGlobal["MonsterSelectUseRect"]  = true  -- 怪物选择方式，true为默认，false为选取像素
end
UserDefineData()

UI:Lua_SetSelctDrawColor(255, 0, 0, 0)



local SellItemPosIdx = 0
local SellTaskID = 0
local LastItemGUID = ""

function SellItemAction()

    if SellItemPosIdx < 40 then
        if UI:Lua_PackageGetGUIDByPos(SellItemPosIdx) then
            SellItemPosIdx = SellItemPosIdx + 1
            local _ItemGUIDStr = LuaRet
            if _ItemGUIDStr == nil then
                return
            end

            UI:Lua_ShowTypeMsg(1, _ItemGUIDStr)
                
            if UI:Lua_GetItemEntityHandleByGUID(_ItemGUIDStr) then
                local InfoHandle = LuaRet
                if InfoHandle ~= 0 then
                    if UI:Lua_GetItemEntityPropByHandle(InfoHandle, ITEM_PROP_ENTITY_IS_BOUND) then
                        local bound = LuaRet
                        if bound then
                            return
                        end
                    end

                    if UI:Lua_GetItemTemplateHandleByGUID(_ItemGUIDStr) then
                       local ItemHandle = LuaRet
                        if UI:Lua_GetItemTemplatePropByHandle(ItemHandle, ITEM_PROP_TYPE) then 
                            local Type = LuaRet
                            local ItemType = "Type: "..Type
                            UI:Lua_ShowTypeMsg(1, ItemType)
                            if Type == 1 or Type == 2 then
                                if Type == 2 then
                                    if UI:Lua_GetItemTemplatePropByHandle(ItemHandle, ITEM_PROP_NAME) then 
                                        local ItemName = LuaRet
                                        UI:Lua_ShowTypeMsg(1, ItemName)
                                        if(ItemName ~= "强效回阳水") then 
                                            return 
                                        end
                                    end
                                end
                            else
                                return
                            end
                        end

                        if not UI:Lua_SellItem(_ItemGUIDStr, true) then
                            UI:Lua_ShowTypeMsg(1, "Not Sell")
                        else
                            LastItemGUID = _ItemGUIDStr
                        end
                    end
                end
            end        
        else
            SellItemPosIdx = 40
            UI:Lua_ShowTypeMsg(1, "SellEnd")
        end    
    else
        UI:Lua_DelDelayTask(SellTaskID)
    end    
end    

function PlayerSellItem()
    SellItemPosIdx = 0
    UI:Lua_AddDelayTask("SellItemAction()", 500, 40)
    SellTaskID = LuaParam[1]
end

function SwitchRender()

    if UI:Lua_RenderSwitch(5000) then
        UI:Lua_ShowTypeMsg(1, "500渲染")
    else
        UI:Lua_ShowTypeMsg(1, "正常渲染")
    end

end


function OnUIInit()
    UI:Lua_ShowTypeMsg(1, "UIInti")
    UI:Lua_HotKeyRegister("CTRL + L", "卖出物品", "PlayerSellItem")
    UI:Lua_ShowTypeMsg(1, "注册CTRL + L 为 卖出物品")

    UI:Lua_HotKeyRegister("CTRL + W", "切换渲染", "SwitchRender")
    UI:Lua_ShowTypeMsg(1, "注册CTRL + W 为 切换渲染")
end
RegisterUIEvent(LUA_EVENT_INITRESCOMPLETE, "UserDefineInit", OnUIInit)
OnUIInit()
