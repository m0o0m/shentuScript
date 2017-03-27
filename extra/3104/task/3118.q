<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3118" name="[主线]-寻求释放被囚禁灵魂的方法" type="1" suggest_level="1" visible="1" next_id="3119">
		<description>
			原来老人们是因为那些在妖山暗穴中灵魂被囚禁的尸奴们悲伤，他们原来是老人们的父辈！为了帮助老人们的父辈从被奴役的命中解脱出来，去找藏宝阁守护人问问，有没有释放灵魂的方法。
		</description>
		<dialogue>
			<brief>或许你感觉不到，因为，只有老人们才会知道，那些灵魂被囚禁的尸奴，他们原来是我们的父辈啊！我们岂能忍受父辈的灵魂被妖魔奴役的命运？
\n　　请一定要帮帮我们，释放被千年树魔奴役的灵魂吧！
\n　　去问问藏宝阁守护人，他是曾经的宫廷大法师的学生，一定可以知道释放灵魂的方法。</brief>
			<await>呜~~~~~~~</await>
			<finish>关于妖山暗穴被囚禁的灵魂吗？
			\n　　事实上，在妖山暗穴的秘密公布之后，我就已经开始研究了，这还要先要谢谢你的发现！千年树魔的做法实在非常可恨，幸好，我从老师留下的笔记中找到了破除灵魂囚禁的方法。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3117" />
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
			<![CDATA[去龙城的广场找#NPCLINK<STR:藏宝阁守护者,NPCKEYNAME:藏宝阁守护人,MOVE:1>#寻求释放被囚禁灵魂的方法]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城的广场找#NPCLINK<STR:藏宝阁守护者,NPCKEYNAME:藏宝阁守护人,MOVE:1>#寻求释放被囚禁灵魂的方法]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
			<buffs>
				<buff keyname="神圣之光"  manual_time="0" />
			</buffs>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>