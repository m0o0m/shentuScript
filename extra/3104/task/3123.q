<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3123" name="[主线]-查询魔化之骨的来源" type="1" suggest_level="1" visible="1" next_id="3124">
		<description>
			绝路城中到底是什么东西造成了牛族的魔化呢？
		\n　　天机老人也不知道，带上这些魔化之骨，去找巫山城的武斗场使者，他曾经游历天下，知识极为渊博，看看他有什么意见。
		</description>
		<dialogue>
			<brief>绝路城中到底是什么东西造成了牛族的魔化呢？
\n　　难道……，请带上这些魔化之骨，去找巫山城的武斗场使者，看看他有什么意见。他曾经游历天下，知识极为渊博。</brief>
			<await>魔化之骨!!!</await>
			<finish>这是被魔化到极深层次的怪物体内才能发现的魔化之骨，那么，必会有着一些特殊的牛魔，体内有着魔化之心！
\n　　因为这种程度的魔化，只有最邪恶的魔化之心才能造成。
\n　　让我想想，绝路城的牛魔中，到底是什么怪物拥有魔化之心呢？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3122" />
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
			<![CDATA[去巫山城找#NPCLINK<STR:武斗场使者,NPCKEYNAME:武斗场使者,MOVE:1>#询问对魔化之骨的看法]]>
			</progressing>
			<accomplishing>
			<![CDATA[去巫山城找#NPCLINK<STR:武斗场使者,NPCKEYNAME:武斗场使者,MOVE:1>#询问对魔化之骨的看法]]>
			</accomplishing>
		</tracker>
		<rewards exp="21000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>