<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3225" name="[主线]-天魔石窟的秘密(2)" type="1" suggest_level="1" visible="1" next_id="3226">
		<description>
			传零星的史料记载，人类高手团在进攻邪庙的路上，突然半路改道进入了西方，现在推测很可能便是进入了天魔石窟。\n　　另一个重要的证据是，有人在天魔石窟找到一些特殊的装备，据说曾是高手团使用过的。\n　　为了确认真相，需要在天魔石窟找到更多的遗失装备。
		</description>
		<dialogue>
			<brief>传零星的史料记载，人类高手团在进攻邪庙的路上，突然半路改道进入了西方，现在推测很可能便是进入了天魔石窟。\n　　另一个重要的证据是，有人在天魔石窟找到一些特殊的装备，据说曾是高手团使用过的。\n　　为了确认真相，需要在天魔石窟找到更多的遗失装备。</brief>
			<await>去天魔石窟寻找到某件特殊装备。</await>
			<finish>这件盔甲确实有点特殊，让我仔细检查一番。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3224" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="天魔守卫1" item="锈迹斑斑的盔甲" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[从#COLORCOLOR_SKYBLUE#天魔守卫#COLOREND#身上取回#LINK<MAP:天魔石窟1,POSX:56,POSY:148,STR:锈迹斑斑的盔甲,MOVE:1>##ITEMGROUP0#后找龙城的天机老人]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="锈迹斑斑的盔甲" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>