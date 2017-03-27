<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1016" name="[任务]-装备材料" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：装备大师#COLOREND#

#IMAGE1902100023#
     #NPCLINK<STR:装备大师,NPCID:1004>#告知精英怪、BOSS怪、挖肉怪、宝箱都会产出装备材料。继续与他对话。


#IMAGE1902100024#
     与#NPCLINK<STR:装备大师,NPCID:1004>#对话


#IMAGE1902100025#

   奖励经验：40000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1015" />
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
			<![CDATA[去找#COLORCOLOR_GREENG##NPCLINK<STR:装备大师,NPCID:1004>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去找#COLORCOLOR_GREENG##NPCLINK<STR:装备大师,NPCID:1004>##COLOREND#了解装备铸造方法]]>
			</accomplishing>
		</tracker>
		<rewards exp="40000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>