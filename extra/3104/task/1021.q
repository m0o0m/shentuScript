<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1021" name="[任务]-元宝冲值" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：寄售商人#COLOREND#
 #COLORCOLOR_GREENG#交任务：元宝充值#COLOREND#

#IMAGE1902100023#
     
     很多稀有物品要用珍贵的元宝才能兑换到，如何获得元宝要去问一下#NPCLINK<STR:元宝充值,NPCID:30034>#

#IMAGE1902100024#
     与#NPCLINK<STR:元宝充值,NPCID:30034>#对话


#IMAGE1902100025#

   奖励经验：65000经验]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1020" />
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
			<![CDATA[去找巫山城的#COLORCOLOR_GREENG##NPCLINK<STR:元宝充值,NPCID:30034>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去找#COLORCOLOR_GREENG##NPCLINK<STR:元宝充值,NPCID:30034>##COLOREND#了解元宝冲值系统]]>
			</accomplishing>
		</tracker>
		<rewards exp="65000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>