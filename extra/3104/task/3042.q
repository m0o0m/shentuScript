<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3042" name="[主线]-骷髅暴动(2)" type="1" suggest_level="1" visible="1" next_id="3043">
		<description>
			这些从骷髅身上拆下来的骨头，有着更浓郁的邪恶之气！虽然不知道其中的详情，但是，可以肯定有恶魔进入其中，引发了它们的狂暴！该死的，真是可恶！\n　　城里的师徒管理员，他年青时曾是一名强大的冒险者，与恶魔有过多次战斗，你带上这些骨头，去问问他有什么意见。
		</description>
		<dialogue>
			<brief>这些从骷髅身上拆下来的骨头，有着更浓郁的邪恶之气！虽然不知道其中的详情，但是，可以肯定有恶魔进入其中，引发了它们的狂暴！该死的，真是可恶！\n　　城里的师徒管理员，他年青时曾是一名强大的冒险者，与恶魔有过多次战斗，你带上这些骨头，去问问他有什么意见。</brief>
			<await>寻找师徒管理员，从他那里了解情况。</await>
			<finish>这些骨头，已经被附上了一层诅咒的气息。为什么这群骨头架子上会有诅咒的气息呢？\n　　不好……！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3041" />
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
			<![CDATA[与#NPCLINK<STR:师徒管理员,NPCKEYNAME:师徒管理员,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:师徒管理员,NPCKEYNAME:师徒管理员,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="31000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>