<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1020" name="[任务]-商品寄售" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：师徒管理员#COLOREND#
 #COLORCOLOR_GREENG#交任务：寄售商人#COLOREND#

#IMAGE1902100023#
     
     听说有家交易行可以委托交易一切物品，我正好有一些物品出售，过去看一看

#IMAGE1902100024#
     与#NPCLINK<STR:寄售商人,NPCID:1022>#对话了解寄售系统


#IMAGE1902100025#

   奖励经验：55000经验]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1019" />
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
			<![CDATA[与#COLORCOLOR_GREENG##NPCLINK<STR:寄售商人,NPCID:1022>##COLOREND#对话了解寄售系统]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#COLORCOLOR_GREENG##NPCLINK<STR:寄售商人,NPCID:1022>##COLOREND#对话了解寄售系统]]>
			</accomplishing>
		</tracker>
		<rewards exp="55000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>