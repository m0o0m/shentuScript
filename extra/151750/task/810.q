<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="810" name="#COLORCOLOR_YELLOW#[金币] #COLORCOLOR_ORANGE#矿洞挖矿#COLORCOLOR_RED#(可接)" type="2" suggest_level="1" visible="1">
		<description>
			去矿洞里面帮我挖8个矿来，就给你三块金砖。怎么样？条件够诱人了吧？哈哈，有钱大家一起赚嘛。
		</description>
		<dialogue>
			<brief>去矿洞里面帮我挖8块矿来，就给你三块金砖。怎么样？条件够诱人了吧？哈哈，有钱大家一起赚嘛。</brief>
			<await>赶紧的，去矿洞挖8块矿来，过了这个村就没这个店了。</await>
			<finish>这么快就来了？不错不错，这是你的金砖，拿好咯。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:挖掘矿洞里的8个矿物,NPCKEYNAME:巫山城矿主,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:矿主,NPCKEYNAME:巫山城矿主,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="8" >
					<group_hunting keyname="挖矿鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>