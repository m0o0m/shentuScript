<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3303" name="[主线]-提升到52级" type="1" suggest_level="1" visible="1" next_id="3286">
		<description>
			我们实力仍然太弱了,还需要继续提升.如果你提升到52级,不妨去找找秘境老人 ,或许他会给你意料之外的好处!
		</description>
		<dialogue>
			<brief>我们实力仍然太弱了,还需要继续提升.如果你提升到52级,不妨去找找秘境老人 ,或许他会给你意料之外的好处!</brief>
			<await>你还没有足够的实力!</await>
			<finish>嗯,好像有点实力的样子,勉强也能出点力了.</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3285" />
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
			<![CDATA[等级提升到52级]]>
			</progressing>
			<accomplishing>
			<![CDATA[到达海底入口与#NPCLINK<STR:秘境老人,NPCKEYNAME:秘境老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="52" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="160000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>