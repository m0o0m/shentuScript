<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3295" name="[主线]-大师的困惑(2)" type="1" suggest_level="1" visible="1" next_id="3296">
		<description>
			谁也不知道以后如何结局，但现在我真的很希望能够他能送我一件礼物……\n　　如果你能帮助我满足这个愿望的话，我会保持克制的。
		</description>
		<dialogue>
			<brief>谁也不知道以后如何结局，但现在我真的很希望能够他能送我一件礼物……\n　　如果你能帮助我满足这个愿望的话，我会保持克制的。</brief>
			<await>拜托了!</await>
			<finish>你！你居然带回了这么一个条件？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3294" />
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
			<![CDATA[进入海角秘境,告诉#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#关于驯兽师的话]]>
			</progressing>
			<accomplishing>
			<![CDATA[进入海角秘境,告诉#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#关于驯兽师的话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="215000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>