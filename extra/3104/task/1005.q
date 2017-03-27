<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1005" name="[任务]-穿戴装备" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：新手引导员#COLOREND#
 #COLORCOLOR_GREENG#交任务：裁缝#COLOREND#

#IMAGE1902100023#
     去裁缝店找#COLORCOLOR_GREENG##NPCLINK<STR:裁缝,NPCID:13>##COLOREND#对话，了解情况

#IMAGE1902100024#
     与裁缝店老板#COLORCOLOR_GREENG##NPCLINK<STR:裁缝,NPCID:13>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：700
   奖励装备：麻布衣
              新手头盔
              新手之鞋]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1004" />
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
			<![CDATA[与天桑村的#COLORCOLOR_GREENG##NPCLINK<STR:裁缝,NPCID:13>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[找#COLORCOLOR_GREENG##NPCLINK<STR:裁缝,NPCID:13>##COLOREND#对话，了解情况]]>
			</accomplishing>
		</tracker>
		<rewards exp="700" >
			<awards>
				<award keyname="新手头盔"  n="1" bind_require="1" />
				<award keyname="新手之鞋"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>