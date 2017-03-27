<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3333" name="[主线]-消弥水之力的方法(3)" type="1" suggest_level="1" visible="1" next_id="3334">
		<description>
			我需要花点时间制造五面五行阵旗，到时只要在海角秘境布置好阵法，就可以消弥过于浓重的水之力。这布阵的方法，我已经在信中说明，你将此信送给远征军统领，让他布置吧吧。
		</description>
		<dialogue>
			<brief>我需要花点时间制造五面五行阵旗，到时只要在海角秘境布置好阵法，就可以消弥过于浓重的水之力。这布阵的方法，我已经在信中说明，你将此信送给远征军统领，让他布置吧吧。</brief>
			<await>去找远征军统领</await>
			<finish>我会安排人员前往沉船内部布置阵法。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3332" />
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
			<![CDATA[回到海底入口处，将大师的方法告诉#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到海底入口处，将大师的方法告诉#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="255000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>