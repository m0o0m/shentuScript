<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5005" name="[剧情]-雪域天狼的传说（5）" type="2" suggest_level="1" visible="1" next_id="5006">
		<description>
			人类，你是好人啊！那你还能帮我一个忙吗？我一直在寻找我的父亲，可是，尽管森林很大，但我走遍了所有的角落都没有找到我父亲的踪迹。\n　　我想，人类也许更适合打听我父亲的消息，因为我的父亲白狼，是一只实力强大的异兽。我相信见闻广博的人类肯定听过我父亲的名字。
		</description>
		<dialogue>
			<brief>人类，你是好人啊！那你还能帮我一个忙吗？我一直在寻找我的父亲，可是，尽管森林很大，但我走遍了所有的角落都没有找到我父亲的踪迹。\n　　我想，人类也许更适合打听我父亲的消息，因为我的父亲白狼，是一只实力强大的异兽。我相信见闻广博的人类肯定听过我父亲的名字。</brief>
			<await>老兵见多识广，去找他打听消息。</await>
			<finish>白狼！？（缅怀……）那确实是一只实力强大的异兽！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5004" />
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
			<![CDATA[一生足迹遍天下，战斗无数的#NPCLINK<STR:龙城老兵,NPCKEYNAME:龙城老兵,MOVE:1>#，或许知道白狼的足迹]]>
			</progressing>
			<accomplishing>
			<![CDATA[一生足迹遍天下，战斗无数的#NPCLINK<STR:龙城老兵,NPCKEYNAME:龙城老兵,MOVE:1>#，或许知道白狼的足迹]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="47000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1100" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>