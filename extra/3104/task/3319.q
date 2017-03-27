<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3319" name="[主线]-达到55级" type="1" suggest_level="1" visible="1" next_id="3320">
		<description>
			虽然我们的进攻遭遇了失败,不过,我在古船三层曾经偶尔发现了一个秘密,如果你级别提升到55级,我可以告诉你.
		</description>
		<dialogue>
			<brief>虽然我们的进攻遭遇了失败,不过,我在古船三层曾经偶尔发现了一个秘密,如果你级别提升到55级,我可以告诉你.</brief>
			<await>你还没有达到55级呢~</await>
			<finish>这么快提升到55了呀,真快哦!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3311" />
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
			<![CDATA[提升到55级。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="55" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="320000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>