<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3011" name="[主线]-裁缝的仇恨" type="1" suggest_level="1" visible="1" next_id="3012">
		<script name="3011" />
		<description>
			村口突然出现了一群可恶的怪物，每个人都应该利用防具保护好自己，否则就你会像我可怜的女儿一样受到伤害！我可怜的女儿，她只是在村口玩耍，就被突然出现的白茅人打折了手臂！\n　　勇士，你要是答应以后有机会替我出气的话，我会先送你几件防具！
		</description>
		<dialogue>
			<brief>村口突然出现了一群可恶的怪物，每个人都应该利用防具保护好自己，否则就你会像我可怜的女儿一样受到伤害！我可怜的女儿，她只是在村口玩耍，就被突然出现的白茅人打折了手臂！\n　　勇士，你要是答应以后有机会替我出气的话，我会先送你几件防具！</brief>
			<await>该死的白毛人！</await>
			<finish>请收下这点心意吧，一定要记得多杀几白茅人哦！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3010" />
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
			<![CDATA[与#NPCLINK<STR:裁缝,NPCKEYNAME:新手村裁缝左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:裁缝,NPCKEYNAME:新手村裁缝左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="1200" >
			<awards>
				<award keyname="小护腕"  n="1" bind_require="1" />
				<award keyname="草鞋"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>