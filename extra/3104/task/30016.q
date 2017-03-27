<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="30016" name="[任务]-讨伐天荒邪庙" type="2" suggest_level="1" visible="0">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:89,POSY:197,STR:天荒邪庙,MOVE:1>##COLOREND#击败25只任意#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:89,POSY:197,STR:怪物,MOVE:1>##COLOREND#后回来找我


#IMAGE1902100024#
     击败25只#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:89,POSY:197,STR:天荒邪庙,MOVE:1>##COLOREND#的任意#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:89,POSY:197,STR:怪物,MOVE:1>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001,MOVE:1>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：角色等级越高获得越多]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="35" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:89,POSY:197,STR:天荒邪庙,MOVE:1>##COLOREND#击败25只任意#COLORCOLOR_GREENG##LINK<MAP:邪庙1,POSX:89,POSY:197,STR:怪物,MOVE:1>##COLOREND##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="25" >
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
					<group_hunting keyname="超级邪翅" />
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
					<group_hunting keyname="挖肉邪翅" />
					<group_hunting keyname="精英天原勇士1" />
					<group_hunting keyname="精英天原死士1" />
					<group_hunting keyname="精英黑暗刺客1" />
					<group_hunting keyname="精英邪翅" />
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
		<rewards >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>