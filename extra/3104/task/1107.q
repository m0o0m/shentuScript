<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1107" name="[任务]-挖肉实践" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：铁匠#COLOREND#
 #COLORCOLOR_GREENG#交任务：药材商#COLOREND#

#IMAGE1902100023#
     击败#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:151,POSY:642,STR:鹿>##COLOREND#后，从鹿的尸体上获得1块鹿肉（按住#COLORCOLOR_YELLOW#Alt+鼠标左键#COLOREND#可以挖肉)，交给#COLORCOLOR_GREENG##NPCLINK<STR:药材商,NPCID:1>##COLOREND#查看。


#IMAGE1902100024#
     获得1块肉后与#COLORCOLOR_GREENG##NPCLINK<STR:药材商,NPCID:1>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：1100]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1106" />
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
			<![CDATA[去村子附近击败#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:151,POSY:642,STR:鹿>##COLOREND#后，挖取1块肉交给#COLORCOLOR_GREENG##NPCLINK<STR:药材商,NPCID:1>##COLOREND#查看#ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[将获得的肉交给#COLORCOLOR_GREENG##NPCLINK<STR:药材商,NPCID:1>##COLOREND#查看]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="0" >
					<group_item keyname="肉1" />
					<group_item keyname="肉2" />
					<group_item keyname="肉3" />
					<group_item keyname="肉4" />
					<group_item keyname="肉5" />
					<group_item keyname="肉6" />
					<group_item keyname="肉7" />
					<group_item keyname="肉8" />
					<group_item keyname="肉9" />
					<group_item keyname="肉10" />
					<group_item keyname="肉11" />
					<group_item keyname="肉12" />
					<group_item keyname="肉13" />
					<group_item keyname="肉14" />
					<group_item keyname="肉15" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1100" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>