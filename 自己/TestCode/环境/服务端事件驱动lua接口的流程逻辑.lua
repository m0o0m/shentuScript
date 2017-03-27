
--[[
正如服务器脚本引擎分层架构图所示，可以看到脚本的执行要经过如下步骤：

触发回调事件------>逻辑层接收事件------>查找事件【对象上】挂载的脚本------>脚本回调代理层回调------>执行脚本------>调用脚本接口封装层完成功能------>返回逻辑层------>响应事件
--]]


--对于实现让lua来对事件进行处理

--服务端：
lualib:AddTrigger("0",  lua_trigger_login, "on_login")
--客户端
RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "GameMainBar_分辨率改变", GameMainBar.UpdataScreenSize)

--提供了（实现了）【自定义事件回调】 机制，如同实现了【对象上自定义变量一样】，让程序更加容易组装和扩展