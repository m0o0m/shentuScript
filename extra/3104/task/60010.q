<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60010" name="[支线]-奋勇封魔" type="2" suggest_level="1" visible="1">
		<description>
			封魔阵中的魔人随时有可能冲破封魔阵，我需要大量的人手进入其中清理它的分身，一人贡献一分力量既可抑制它的强大，勇士，你也献一分微薄之力吧
		</description>
		<dialogue>
			<brief>封魔阵中的魔人随时有可能冲破封魔阵，我需要大量的人手进入其中清理它的分身，一人贡献一分力量既可抑制它的强大，勇士，你也献一分微薄之力吧</brief>
			<await>每个人只需要消灭66只邪魔人偶，就能抑制魔人冲破封魔阵</await>
			<finish>非常感谢你伸出的援助之手，天下如果有更多你这样热心的人就太好了，以后你每天都来参加封魔吧，我相信，你已经发现了封魔的好处了</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[通过#NPCLINK<STR:封魔阵引路人,NPCKEYNAME:封魔阵引路人,MOVE:1>#进入#COLORCOLOR_YELLOW#封魔阵#COLOREND#杀死66只#COLORCOLOR_YELLOW#邪魔人偶#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城广场找#NPCLINK<STR:封魔阵引路人,NPCKEYNAME:封魔阵引路人,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="66" >
					<group_hunting keyname="邪魔人偶1" />
					<group_hunting keyname="邪魔人偶2" />
					<group_hunting keyname="邪魔人偶3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>