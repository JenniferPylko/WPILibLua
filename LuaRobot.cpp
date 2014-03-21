#include "Lua/lua.hpp"
#include "WPILib.h"

extern int luaopen_WPILib(lua_State* l);

class LuaRobot : public SimpleRobot
{
	LuaRobot()
	{
		lua_State* L = lua_open();
		luaopen_base(L);
		luaopen_WPILib(L);
	}
	
	RobotInit()
	{
		if(luaL_loadfile(L,"RobotInit.lua")==0)
		{
			lua_call(L,0,0);
		}
	}
	
	Disabled()
	{
		if(luaL_loadfile(L,"Disabled.lua")==0)
		{
			lua_call(L,0,0);
		}
	}
	
	Autonomous()
	{
		if(luaL_loadfile(L,"Autonomous.lua")==0)
		{
			lua_call(L,0,0);
		}
	}
	
	OperatorControl()
	{
		if(luaL_loadfile(L,"OperatorControl.lua")==0)
		{
			lua_call(L,0,0);
		}
	}
	
	Test()
	{
		if(luaL_loadfile(L,"Test.lua")==0)
		{
			lua_call(L,0,0);
		}
	}
};

START_ROBOT_CLASS(LuaRobot);
