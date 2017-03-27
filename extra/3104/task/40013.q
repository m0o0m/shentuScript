<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="40013" name="[任务]-讨伐绝路城" type="2" suggest_level="1" visible="0">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:288,POSY:496,STR:绝路城东部,MOVE:1>##COLOREND#击败10只任意#COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:288,POSY:496,STR:牛魔,MOVE:1>##COLOREND#后回来找我


#IMAGE1902100024#
     击败10只#COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:288,POSY:496,STR:绝路城,MOVE:1>##COLOREND#的任意#COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:288,POSY:496,STR:牛魔,MOVE:1>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001,MOVE:1>##COLOREND#对话


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
			<level enable="1" min_num="30" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:288,POSY:496,STR:绝路城,MOVE:1>##COLOREND#击败10只任意#COLORCOLOR_GREENG##LINK<MAP:绝路城1,POSX:288,POSY:496,STR:牛魔,MOVE:1>##COLOREND##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="红面牛魔1" />
					<group_hunting keyname="黑面牛魔1" />
					<group_hunting keyname="牛魔守卫1" />
					<group_hunting keyname="红面牛魔2" />
					<group_hunting keyname="牛魔守卫2" />
					<group_hunting keyname="牛魔守卫3" />
					<group_hunting keyname="牛魔勇士1" />
					<group_hunting keyname="超级飞蛾" />
					<group_hunting keyname="超级牛魔守卫1" />
					<group_hunting keyname="超级红面牛魔1" />
					<group_hunting keyname="超级牛魔勇士2" />
					<group_hunting keyname="超级黑面牛魔1" />
					<group_hunting keyname="超级牛魔勇士1" />
					<group_hunting keyname="挖肉飞蛾" />
					<group_hunting keyname="挖肉红面牛魔1" />
					<group_hunting keyname="挖肉黑面牛魔1" />
					<group_hunting keyname="挖肉牛魔守卫1" />
					<group_hunting keyname="挖肉红面牛魔2" />
					<group_hunting keyname="挖肉牛魔守卫2" />
					<group_hunting keyname="挖肉牛魔守卫3" />
					<group_hunting keyname="挖肉牛魔勇士1" />
					<group_hunting keyname="精英飞蛾" />
					<group_hunting keyname="精英牛魔守卫1" />
					<group_hunting keyname="精英红面牛魔1" />
					<group_hunting keyname="精英牛魔勇士2" />
					<group_hunting keyname="精英黑面牛魔1" />
					<group_hunting keyname="精英牛魔勇士1" />
					<group_hunting keyname="牛魔侍卫" />
					<group_hunting keyname="牛魔将军" />
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