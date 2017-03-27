<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3007" name="[主线]-凶猛的家鸡" type="1" suggest_level="1" visible="1" next_id="3008">
		<description>
			保护龙城、消灭恶魔是长期的艰辛战斗，它远比想象中要艰难，我必须给你一些必要的指导，……不要如此骄傲，我看你完全没有战斗的经验嘛，先去杀3只鸡回来见我吧！
		</description>
		<dialogue>
			<brief>保护龙城、消灭恶魔是长期的艰辛战斗，它远比想象中要艰难，我必须给你一些必要的指导，……不要如此骄傲，我看你完全没有战斗的经验嘛，先去杀3只鸡回来见我吧！</brief>
			<await>不要轻视它们，当恶魔的大军逼近时，邪恶会侵蚀所有的生物，这些鸡因被邪恶侵蚀而变异，所以，我们必须时刻小心。</await>
			<finish>虽然不算完美，但还算不错！这些是你的奖励，请不要拒绝！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3006" />
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
			<![CDATA[在村子附近击败5只#LINK<MAP:新手村,POSX:263,POSY:298,STR:鸡,MOVE:1,ATK:1>##MONSTERGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:新手引导员,NPCKEYNAME:新手引导员左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="超级鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>