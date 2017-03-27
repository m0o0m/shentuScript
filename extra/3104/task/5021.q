<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5021" name="[剧情]-堕落者血手（1）" type="2" suggest_level="1" visible="1" next_id="5022">
		<description>
			通缉令\n　　神圣历年月日（即三天前），巫山城天桑村外发生一起抢劫杀人案，至两名原住名死亡，1人重伤。经发现，堕落者血手有重大嫌疑，并曾有大量人命在身，现该人在逃。对发现线索者，擒拿或击杀者皆有重赏！\n　　警告，该人极度危险！
		</description>
		<dialogue>
			<brief>通缉令\n　　神圣历年月日（即三天前），巫山城天桑村外发生一起抢劫杀人案，至两名原住名死亡，1人重伤。经发现，堕落者血手有重大嫌疑，并曾有大量人命在身，现该人在逃。对发现线索者，擒拿或击杀者皆有重赏！\n　　警告，该人极度危险！</brief>
			<await>去找老兵打探消息。</await>
			<finish>冒险者，你需要传送到什么地方？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3120" />
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
			<![CDATA[负责传送的#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵>#耳目广大，或许会知道些什么线索。]]>
			</progressing>
			<accomplishing>
			<![CDATA[负责传送的#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵>#耳目广大，或许会知道些什么线索。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="44000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1120" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>