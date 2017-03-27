<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2001" name="[任务]-镇压将军冢" type="2" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     #COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#向我讲述了#COLORCOLOR_GREENG##LINK<MAP:将军冢1,POSX:128,POSY:39,STR:将军冢>##COLOREND#的由来，以及#COLORCOLOR_GREENG##LINK<MAP:将军冢1,POSX:128,POSY:39,STR:将军冢>##COLOREND#目前的情况，要我去镇压20只#COLORCOLOR_GREENG##LINK<MAP:将军冢1,POSX:128,POSY:39,STR:骷髅>##COLOREND#。


#IMAGE1902100024#
     击败20只任意#COLORCOLOR_GREENG##LINK<MAP:将军冢1,POSX:128,POSY:39,STR:骷髅>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：50000
   奖励金币：30000（绑定金币）
   奖励元宝：200（绑定元宝）]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1022" />
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
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:将军冢1,POSX:128,POSY:39,STR:将军冢>##COLOREND#击败20只任意#COLORCOLOR_GREENG##LINK<MAP:将军冢1,POSX:128,POSY:39,STR:骷髅>##COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="飞刀骷髅1" />
					<group_hunting keyname="单刀骷髅1" />
					<group_hunting keyname="骷髅战士1" />
					<group_hunting keyname="大斧骷髅1" />
					<group_hunting keyname="挖肉飞刀骷髅1" />
					<group_hunting keyname="挖肉单刀骷髅1" />
					<group_hunting keyname="挖肉骷髅战士1" />
					<group_hunting keyname="挖肉大斧骷髅1" />
					<group_hunting keyname="精英飞刀骷髅1" />
					<group_hunting keyname="精英大斧骷髅1" />
					<group_hunting keyname="精英单刀骷髅1" />
					<group_hunting keyname="精英骷髅战士1" />
					<group_hunting keyname="骷髅王" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" bind_ingot="200" bind_gold="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>