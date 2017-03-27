-- ����ɳ��  
function SpawnSandBox( )  
   
	local SandBoxGlobals = {}  

   -- �����������  
    SandBoxGlobals.print             = print  
    SandBoxGlobals.table             = table  
    SandBoxGlobals.string             = string       
    SandBoxGlobals.math               = math   
    SandBoxGlobals.assert             = assert   
    SandBoxGlobals.getmetatable    = getmetatable   
    SandBoxGlobals.ipairs             = ipairs   
    SandBoxGlobals.pairs             = pairs   
    SandBoxGlobals.pcall             = pcall   
    SandBoxGlobals.setmetatable    = setmetatable   
    SandBoxGlobals.tostring        = tostring   
    SandBoxGlobals.tonumber        = tonumber   
    SandBoxGlobals.type            = type   
    SandBoxGlobals.unpack             = unpack   
    SandBoxGlobals.collectgarbage     = collectgarbage  
    SandBoxGlobals._G                = SandBoxGlobals  
    
    return SandBoxGlobals  
end  
    
 -- ��ɳ����ִ�нű�, ����ʱ���ش���, nil��ʾ��ȷ  
function ExecuteInSandBox( SandBox, Script )  
   
    local ScriptFunc, CompileError = loadstring( Script )  
  
    if CompileError then  
		return CompileError  
    end  
   
    setfenv( ScriptFunc, SandBox )  
   
    local Result, RuntimeError = pcall( ScriptFunc )  
    if RuntimeError then  
        return RuntimeError  
    end  
   
    return nil  
end  
    
function ProtectedFunction( )  
    print("protected func")  
end  
   
   
local SandBox = SpawnSandBox( )  
   
   
print ( "Response=", ExecuteInSandBox( SandBox, "table.foreach( _G, print )" ) )  
   
print ( "Response=", ExecuteInSandBox( SandBox, "ProtectedFunction()" ) )  
   
SandBox.ProtectedFunction = ProtectedFunction  
   
print ( "Response=", ExecuteInSandBox( SandBox, "ProtectedFunction()" ) ) 

--[[ 
54��ִ�н����  
   1:  _G    table: 00421258  
   2:  string    table: 00421050  
   3:  pairs    function: 00567F58  
   4:  collectgarbage    function: 005675F0  
   5:  unpack    function: 004217E8  
   6:  assert    function: 005675B0  
   7:  print    function: 00567830  
   8:  ipairs    function: 00567F28  
   9:  type    function: 004217A8  
  10:  tonumber    function: 00421768  
  11:  tostring    function: 00421788  
  12:  table    table: 00420DA8  
  13:  math    table: 004210C8  
  14:  setmetatable    function: 00421748  
  15:  getmetatable    function: 00567710  
  16:  pcall    function: 005677F0  
  17:  Response=    nil  
54������û��ע�����ȫ�ֺ���, ����޷�����  
Response=    [string "ProtectedFunction()"]:1: attempt to call global 'ProtectedFunction' (a nil value)  
58����ȫ�ֻ����м������������,�����60�з�������  
protected func  
Response=    nil  
--]]