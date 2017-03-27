<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3161" name="[主线]-来自牛魔的袭击（1）" type="1" suggest_level="1" visible="1" next_id="3162">
		<description>
			年青的勇士，还记得那次清除绝路岭的猿猴的行动吗？你离开巫山城之后，我们就开始委派人手前往开荒了，但现在开荒的行动遇上了麻烦。你愿意前往为我们解决吗？先找绝路岭的士兵了解详情吧！
		</description>
		<dialogue>
			<brief>年青的勇士，还记得那次清除绝路岭的猿猴的行动吗？你离开巫山城之后，我们就开始委派人手前往开荒了，但现在开荒的行动遇上了麻烦。你愿意前往为我们解决吗？先找绝路岭的士兵了解详情吧！</brief>
			<await>去找绝路岭士兵打听详情。</await>
			<finish>是的，我们遇上了大麻烦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3121" />
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
			<![CDATA[找#NPCLINK<STR:绝路岭士兵,NPCKEYNAME:绝路岭士兵,MOVE:1>#打听消息。]]>
			</progressing>
			<accomplishing>
			<![CDATA[找#NPCLINK<STR:绝路岭士兵,NPCKEYNAME:绝路岭士兵,MOVE:1>#打听消息。]]>
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