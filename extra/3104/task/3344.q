<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3344" name="[主线]-提升到57级" type="1" suggest_level="1" visible="1" next_id="3345">
		<description>
			五行法阵已经运转，我们需要等待一段时间让海角秘境的水之力消散。在这个过程中，你需要提升实力，否则在最终进攻的过程中会很危险。你提升到57后再来找我吧！
		</description>
		<dialogue>
			<brief>五行法阵已经运转，我们需要等待一段时间让海角秘境的水之力消散。在这个过程中，你需要提升实力，否则在最终进攻的过程中会很危险。你提升到57后再来找我吧！</brief>
			<await>你还没有提升到57级，要努力哦！</await>
			<finish>你的实力提升很快嘛。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3335" />
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
			<![CDATA[提升到57级。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与海底入口处的#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="57" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="315000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>