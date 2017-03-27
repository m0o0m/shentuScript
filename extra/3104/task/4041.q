<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4041" name="[支线]-紧缺的技能书" type="2" suggest_level="1" visible="1" next_id="4042">
		<script name="4041" />
		<description>
			因为有许多少年投入到了与邪恶的怪物的战斗之中，因此，17级到20级这些常用的技能书被大量消耗。如果不能及时补充，可能会导致非常坏的结果。\n　　所以，请帮我去废弃矿洞找回2本技能书吧，需要17级到20级的哦，比如战士的攻心斩，法师的天雷术、冰箭术、瞬息灵动，道士的神魂火符、地府之唤、隐形咒。我可以奖励你更高级的技能书哦。\n　　同时，为了让废弃矿洞成为一个安全的试炼新手的地方，最好顺手消灭10只危险的雷暴僵尸。
		</description>
		<dialogue>
			<brief>因为有许多少年投入到了与邪恶的怪物的战斗之中，因此，17级到20级这些常用的技能书被大量消耗。如果不能及时补充，可能会导致非常坏的结果。\n　　所以，请帮我去废弃矿洞找回2本技能书吧，需要17级到20级的哦，比如战士的攻心斩，法师的天雷术、冰箭术、瞬息灵动，道士的神魂火符、地府之唤、隐形咒。我可以奖励你更高级的技能书哦。\n　　同时，为了让废弃矿洞成为一个安全的试炼新手的地方，最好顺手消灭10只危险的雷暴僵尸。</brief>
			<await>去废弃矿洞找到指定的技能书，并消灭10只雷暴僵尸。</await>
			<finish>多谢呀，这批技能书可以救急了！\n　　等你25级以后，再来找我吧！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4040" />
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
			<![CDATA[前往特产技能书的#LINK<MAP:废弃矿洞2,POSX:7,POSY:14,STR:废弃矿洞,MOVE:1>#，获得#COLORCOLOR_GOLD#攻心斩#COLOREND#、#COLORCOLOR_GOLD#冰箭术#COLOREND#、#COLORCOLOR_GOLD#地府之唤#COLOREND#任意2本#ITEMGROUP0#。同时消灭10只#LINK<MAP:废弃矿洞2,POSX:7,POSY:14,STR:雷暴僵尸,MOVE:1>##MONSTERGROUP0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:龙城书商,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="2" bind_require="0" >
					<group_item keyname="攻心斩" />
					<group_item keyname="冰箭术" />
					<group_item keyname="天雷术" />
					<group_item keyname="地府之唤" />
					<group_item keyname="隐形咒" />
					<group_item keyname="瞬息灵动" />
					<group_item keyname="神魂火符" />
				</group>
			</group_items>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="雷暴僵尸1" />
					<group_hunting keyname="挖肉雷暴僵尸1" />
					<group_hunting keyname="雷暴僵尸2" />
					<group_hunting keyname="挖肉雷暴僵尸2" />
					<group_hunting keyname="超级雷暴僵尸1" />
					<group_hunting keyname="精英雷暴僵尸1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>