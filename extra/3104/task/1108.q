<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1108" name="[任务]-药品" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：药材商#COLOREND#
 #COLORCOLOR_GREENG#交任务：药材商#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##NPCLINK<STR:药材商,NPCID:1>##COLOREND#将鹿肉炼成药后并没有什么发现

#IMAGE1902100024#
     与#COLORCOLOR_GREENG##NPCLINK<STR:药材商,NPCID:1>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：1100
   奖励道具：金创药(小)包
              魔法药(小)包]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1107" />
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
			<![CDATA[找辟岭村#COLORCOLOR_GREENG##NPCLINK<STR:药材商,NPCID:1>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与药材铺的#COLORCOLOR_GREENG##NPCLINK<STR:药材商,NPCID:1>##COLOREND#对话完成任务]]>
			</accomplishing>
		</tracker>
		<rewards exp="1100" >
			<awards>
				<award keyname="金创药(小)包"  n="1" bind_require="1" />
				<award keyname="魔法药(小)包"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>