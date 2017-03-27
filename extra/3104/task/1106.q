<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1106" name="[任务]-装备属性" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：裁缝#COLOREND#
 #COLORCOLOR_GREENG#交任务：铁匠#COLOREND#

#IMAGE1902100023#
     了解到穿戴装备的技巧后，去铁匠铺找#COLORCOLOR_GREENG##NPCLINK<STR:铁匠,NPCID:3>##COLOREND#打听一下村外的情况，顺便讨一把武器作防身之用


#IMAGE1902100024#
     与#COLORCOLOR_GREENG##NPCLINK<STR:铁匠,NPCID:3>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：800
   奖励装备：新手之剑]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1105" />
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
			<![CDATA[找辟岭村#COLORCOLOR_GREENG##NPCLINK<STR:铁匠,NPCID:3>##COLOREND#打听消息]]>
			</progressing>
			<accomplishing>
			<![CDATA[了解到了穿戴装备的重要性，去找#COLORCOLOR_GREENG##NPCLINK<STR:铁匠,NPCID:3>##COLOREND#打听一下村外的消息]]>
			</accomplishing>
		</tracker>
		<rewards exp="800" >
			<awards>
				<award keyname="新手之剑"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>