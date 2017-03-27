<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3309" name="[主线]-提升到54级" type="1" suggest_level="1" visible="1" next_id="3310">
		<description>
			更深入的冒险需要更强大的实力,等你提升到54后去找远征军统领看看吧!
		</description>
		<dialogue>
			<brief>更深入的冒险需要更强大的实力,等你提升到54后去找远征军统领看看吧!</brief>
			<await>你还没有达到54级,要努力呀!</await>
			<finish>强大的冒险者,你的实力又提升了!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3308" />
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
			<![CDATA[级别达到54级。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与海底入口处的#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="54" max_num="200" />
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