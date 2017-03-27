<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2019" name="[任务]-清剿天荒邪庙" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:87,POSY:194,STR:天荒邪庙>##COLOREND#最近出现大量妖魔，去击败100只任意#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:87,POSY:194,STR:怪物>##COLOREND#


#IMAGE1902100024#
     击败100只任意#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:87,POSY:194,STR:怪物>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：800000
   奖励金币：150000（绑定金币）
   奖励元宝：1000（绑定元宝）]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:87,POSY:194,STR:天荒邪庙>##COLOREND#击败100只任意#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:87,POSY:194,STR:怪物>##COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="100" >
					<group_hunting keyname="天原猛士1" />
					<group_hunting keyname="夜行僧1" />
					<group_hunting keyname="天原勇士1" />
					<group_hunting keyname="鬼面武者1" />
					<group_hunting keyname="天原死士1" />
					<group_hunting keyname="妖僧1" />
					<group_hunting keyname="天原死士2" />
					<group_hunting keyname="影刺1" />
					<group_hunting keyname="天原死士3" />
					<group_hunting keyname="影刺2" />
					<group_hunting keyname="黑暗刺客1" />
					<group_hunting keyname="黑暗刺客2" />
					<group_hunting keyname="黑暗刺客3" />
					<group_hunting keyname="黑暗刺客4" />
					<group_hunting keyname="黑暗刺客5" />
					<group_hunting keyname="邪翅" />
					<group_hunting keyname="超级天原勇士1" />
					<group_hunting keyname="超级天原死士1" />
					<group_hunting keyname="超级黑暗刺客1" />
					<group_hunting keyname="超级天原猛士1" />
					<group_hunting keyname="超级夜行僧1" />
					<group_hunting keyname="超级鬼面武者1" />
					<group_hunting keyname="超级妖僧1" />
					<group_hunting keyname="超级影刺1" />
					<group_hunting keyname="挖肉天原猛士1" />
					<group_hunting keyname="挖肉夜行僧1" />
					<group_hunting keyname="挖肉天原勇士1" />
					<group_hunting keyname="挖肉鬼面武者1" />
					<group_hunting keyname="挖肉天原死士1" />
					<group_hunting keyname="挖肉妖僧1" />
					<group_hunting keyname="挖肉天原死士2" />
					<group_hunting keyname="挖肉影刺1" />
					<group_hunting keyname="挖肉天原死士3" />
					<group_hunting keyname="挖肉影刺2" />
					<group_hunting keyname="挖肉黑暗刺客1" />
					<group_hunting keyname="挖肉黑暗刺客2" />
					<group_hunting keyname="挖肉黑暗刺客3" />
					<group_hunting keyname="挖肉黑暗刺客4" />
					<group_hunting keyname="挖肉黑暗刺客5" />
					<group_hunting keyname="精英天原勇士1" />
					<group_hunting keyname="精英天原死士1" />
					<group_hunting keyname="精英黑暗刺客1" />
					<group_hunting keyname="精英天原猛士1" />
					<group_hunting keyname="精英夜行僧1" />
					<group_hunting keyname="精英鬼面武者1" />
					<group_hunting keyname="精英妖僧1" />
					<group_hunting keyname="精英影刺1" />
					<group_hunting keyname="妖刀侍卫" />
					<group_hunting keyname="梵天僧" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="800000" bind_ingot="1000" bind_gold="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>