<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3023" name="[主线]-临行前的馈赠(1)" type="1" suggest_level="1" visible="1" next_id="3024">
		<description>
			在去巫山城之前，我有些礼物要送给你，等等我哦，我去取来
		</description>
		<dialogue>
			<brief>想不到你已经完成了技能的学习，真是一个了不得的天才！是要准备去巫山城了吗？离别让人有点伤感呢。\n　　外面的世界需要你去努力，记住哦，与恶魔的战斗，一定要小心呀！\n　　在去巫山城之前，我有些礼物要送给你，等等我哦，我去取来</brief>
			<await>外面的世界需要你去努力，记住哦，与恶魔的战斗，一定要小心呀！</await>
			<finish>接着吧，一点点心意！移动卷轴可以让你随机移动至另外一个位置，回城卷轴可以让你瞬间回到最近的安全区域。\n　　可惜没有回城石、定位石和逍遥游，它们在神战之后，大陆上只有少量珍藏了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3022" />
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
			<![CDATA[与#NPCLINK<STR:杂货商,NPCKEYNAME:新手村杂货商左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:杂货商,NPCKEYNAME:新手村杂货商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="13500" >
			<awards>
				<award keyname="回城卷包"  n="1" bind_require="1" />
				<award keyname="随机传送包"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>