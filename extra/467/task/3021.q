<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3021" name="[主线]-技能训练" type="1" suggest_level="1" visible="1" next_id="3022">
		<description>
			为了让你更快地熟悉技能，去村外竹林深处消灭5只驯兽。
		</description>
		<dialogue>
			<brief>你已经学会技能，不过，要记住哦，这可只是最初级的技能，只有多多使用，提升技能熟练度，技能的威力才会提升。\n　　为了让你更快地熟悉技能，我给你一个适合你的练习方案吧，去村外消灭5驯兽。</brief>
			<await>你击败5只驯兽了吗，击败可获得大量金币奖励？</await>
			<finish>做得很好，成大器者必须百般磨练，修习技能后须得勤加练习，有了充足的经验，才能发挥出技能的最大威力！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3016" />
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
			<![CDATA[在村子附近击败5只#LINK<MAP:新手村,POSX:165,POSY:149,STR:猪,MOVE:1>##MONSTERGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:新手村书商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="猪0" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="11200" ingot="0" bind_ingot="0" integral="0" gold="5000" bind_gold="0" >
			<awards>
				<award keyname="技能礼包"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>