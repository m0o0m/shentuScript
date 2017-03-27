<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3238" name="[主线]-阻止恶魔的阴谋(2)" type="1" suggest_level="1" visible="1" next_id="3239">
		<description>
			天魔与邪庙勾结，想要突袭东临城！现在既然被我知道了这个消息，我会严加防备，绝不会轻易给他们机会。\n　　如果能得到它们的行动计划那就好了……你去报告给天机老人吧，或许他有办法取得它们的行动计划。
		</description>
		<dialogue>
			<brief>天魔与邪庙勾结，想要突袭东临城！现在既然被我知道了这个消息，我会严加防备，绝不会轻易给他们机会。\n　　如果能得到它们的行动计划那就好了……你去报告给天机老人吧，或许他有办法取得它们的行动计划。</brief>
			<await>去找龙城的天机老人报告情况。</await>
			<finish>天魔与邪恶勾结？邪庙一直在我们的严密监视之下，邪庙若想勾结天魔发动对东临城的袭击，最适合的肯定是擅长于在黑暗之中行走的职业。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3237" />
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
			<![CDATA[到龙城找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="35000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>