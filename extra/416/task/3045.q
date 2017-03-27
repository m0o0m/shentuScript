<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3045" name="[主线]-技能指引" type="1" suggest_level="1" visible="1">
		<description>
			非常感谢英雄对巫山城做出的贡献，不过现在不是开心的时候，魔蛇已被镇压，可是骷髅洞却魔化出了骷髅王，希望英雄前去灭杀。
		</description>
		<dialogue>
			<brief>要强大就需求强大的技能，巫山城东面的矿洞中，远古英雄骷髅正在逐渐复苏，英雄携带强大技能可被魔魂附体，英雄们请消灭魔物，获取强大技能，并提交一本低级技能书给我！</brief>
			<await>去矿洞灭杀骷髅，提交低级技能书给我</await>
			<finish>强大的方向指引，只有强大的技能才能造就自身的强大！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3044" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="疗伤药包"  n="3" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#杀死僵尸或洞蛆
#LINK<MAP:废弃矿洞1,POSX:57,POSY:311,STR:低级技能书,MOVE:1>#获得一本低级技能书#ITEMGROUP0#
#COLORCOLOR_SKYBLUE#Ps：蛊毒咒，攻心斩，炎球术#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="0" >
					<group_item keyname="施毒术" />
					<group_item keyname="攻杀剑术" />
					<group_item keyname="火球术" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="50000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>