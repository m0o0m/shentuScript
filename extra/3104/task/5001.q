<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5001" name="[剧情]-雪域天狼的传说（1）" type="2" suggest_level="1" visible="1" next_id="5002">
		<description>
			我需要向你道歉，因为我怀疑了你的品性。理由是因为接下来的事情非比寻常，因为收购狼皮的需要，我接触了很多猎人，在猎人中传闻有一只奇异的小白狼，它没有野兽的凶残，有时还会帮助受伤的人类。怎么样，很惊奇吧，如果你有兴趣，不妨去城外的林中，寻找猎人打听。
		</description>
		<dialogue>
			<brief>我需要向你道歉，因为我怀疑了你的品性。理由是因为接下来的事情非比寻常，因为收购狼皮的需要，我接触了很多猎人，在猎人中传闻有一只奇异的小白狼，它没有野兽的凶残，有时还会帮助受伤的人类。怎么样，很惊奇吧，如果你有兴趣，不妨去城外的林中，寻找猎人打听。</brief>
			<await>去龙城城外的林中寻找猎人打听消息。</await>
			<finish>冒险者请留步！对面可是危险的森林，想进去的话一定小心。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3107" />
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
			<![CDATA[找城外森林边上的#NPCLINK<STR:老猎人,NPCKEYNAME:老猎人,MOVE:1>#打听消息。]]>
			</progressing>
			<accomplishing>
			<![CDATA[找城外森林边上的#NPCLINK<STR:老猎人,NPCKEYNAME:老猎人,MOVE:1>#打听消息。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>