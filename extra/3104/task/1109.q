<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1109" name="[任务]-首饰" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：药材商#COLOREND#
 #COLORCOLOR_GREENG#交任务：首饰商#COLOREND#

#IMAGE1902100023#
     也许#COLORCOLOR_GREENG##NPCLINK<STR:首饰商,NPCID:9>##COLOREND#那有银器可以测验出什么来，去首饰店找#COLORCOLOR_GREENG##NPCLINK<STR:首饰商,NPCID:9>##COLOREND#看看。


#IMAGE1902100024#
     与#COLORCOLOR_GREENG##NPCLINK<STR:首饰商,NPCID:9>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：1500
   奖励装备：新手护腕
              新手项链
              新手戒指]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1108" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[找辟岭村#COLORCOLOR_GREENG##NPCLINK<STR:首饰商,NPCID:9>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去首饰铺让#COLORCOLOR_GREENG##NPCLINK<STR:首饰商,NPCID:9>##COLOREND#用银器看一下]]>
			</accomplishing>
		</tracker>
		<rewards exp="1500" >
			<awards>
				<award keyname="新手护腕"  n="1" bind_require="1" />
				<award keyname="新手项链"  n="1" bind_require="1" />
				<award keyname="新手戒指"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>