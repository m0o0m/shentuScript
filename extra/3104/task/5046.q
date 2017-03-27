<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5046" name="[剧情]-血手的过往（1）" type="2" suggest_level="1" visible="1" next_id="5047">
		<description>
			血手是一个从不停下追求实力的脚步的男人，也是一个坚持正义的男人，对于他如今的结局，我感到非常心痛。一定有什么遭遇，让他放弃了坚持自己的信念……，我记得他的家乡在龙城南方的树林边上，也许从他的亲人身上可以找到答案。
		</description>
		<dialogue>
			<brief>血手是一个从不停下追求实力的脚步的男人，也是一个坚持正义的男人，对于他如今的结局，我感到非常心痛。一定有什么遭遇，让他放弃了坚持自己的信念……，我记得他的家乡在龙城南方的树林边上，也许从他的亲人身上可以找到答案。</brief>
			<await>去龙城南方的树林边，寻找血手的亲人。</await>
			<finish>远方来的冒险者，你好！你在寻找血手的亲人？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5045" />
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
			<![CDATA[前往龙城南方的树林，与#NPCLINK<STR:老人阿诺,NPCKEYNAME:老人阿诺,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往龙城南方的树林，与#NPCLINK<STR:老人阿诺,NPCKEYNAME:老人阿诺,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>