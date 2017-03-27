<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10007" name="[任务]-讨伐野猪洞" type="1" suggest_level="1" visible="0" next_id="">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:野猪洞,POSX:132,POSY:130,STR:野猪洞>##COLOREND#击败30只#COLORCOLOR_GREENG##LINK<MAP:野猪洞,POSX:132,POSY:130,STR:怪物>##COLOREND#后回来找我


#IMAGE1902100024#
     击败30只#COLORCOLOR_GREENG##LINK<MAP:野猪洞,POSX:132,POSY:130,STR:野猪洞>##COLOREND#的#COLORCOLOR_GREENG##LINK<MAP:野猪洞,POSX:132,POSY:130,STR:怪物>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：任务品阶越高获得经验越多]]>
		</description>
		<dialogue>
			<brief>2</brief>
			<await>2</await>
			<finish>2</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="40" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:野猪洞,POSX:132,POSY:130,STR:野猪洞>##COLOREND#击败30只#COLORCOLOR_GREENG##LINK<MAP:野猪洞,POSX:132,POSY:130,STR:怪物>##COLOREND##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="30" >
					<group_hunting keyname="蓝兽1" />
					<group_hunting keyname="超级蓝兽1" />
					<group_hunting keyname="沙石魔1" />
					<group_hunting keyname="超级沙石魔1" />
					<group_hunting keyname="挖肉蓝兽1" />
					<group_hunting keyname="挖肉沙石魔1" />
					<group_hunting keyname="精英沙石魔1" />
					<group_hunting keyname="巨蛾" />
					<group_hunting keyname="双刀侩子手1" />
					<group_hunting keyname="挖肉双刀侩子手1" />
					<group_hunting keyname="超级双刀侩子手1" />
					<group_hunting keyname="精英双刀侩子手1" />
					<group_hunting keyname="精英鬼面刀手1" />
					<group_hunting keyname="古怪刀客1" />
					<group_hunting keyname="鬼面刀手1" />
					<group_hunting keyname="风魔2" />
					<group_hunting keyname="超级鬼面刀手1" />
					<group_hunting keyname="刀奴1" />
					<group_hunting keyname="精英刀奴1" />
					<group_hunting keyname="剧毒万蛛巢1" />
					<group_hunting keyname="精英古怪刀客1" />
					<group_hunting keyname="剧毒万蛛巢3" />
					<group_hunting keyname="挖肉风魔2" />
					<group_hunting keyname="剧毒万蛛巢4" />
					<group_hunting keyname="巨石傀儡" />
					<group_hunting keyname="精英风魔1" />
					<group_hunting keyname="血禅师" />
					<group_hunting keyname="剧毒万蛛巢5" />
					<group_hunting keyname="剧毒万蛛巢6" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>