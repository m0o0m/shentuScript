<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3301" name="[主线]-提升到53级" type="1" suggest_level="1" visible="1" next_id="3293">
		<description>
			或许,在接来的冒险中,你将解开一个大秘密.但是, 大秘密也将意味着大危险,而你的实力仍然不够! 当你提升到53后再来找我吧!
		</description>
		<dialogue>
			<brief>或许,在接来的冒险中,你将解开一个大秘密.但是, 大秘密也将意味着大危险,而你的实力仍然不够! 当你提升到53后再来找我吧!</brief>
			<await>你没有足够的实力~,加油吧!</await>
			<finish>恭喜你又进步了.虽然仍然有点勉强,但你的实力小心点也可以应付了!</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3292" />
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
			<![CDATA[等级提升到53级。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回龙城与#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="53" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>