<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3228" name="[主线]-天魔石窟的秘密(5)" type="1" suggest_level="1" visible="1" next_id="3229">
		<description>
			落日盔甲既然最终是从天魔石窟中找回，那么，可以明确地证明，包括老师在内的人类高手团，最终确实进入了天魔石窟。\n　　老师……\n　　唉，谢谢你为我们找到了真相！顺便拜托你将此事转告天机老人吧。
		</description>
		<dialogue>
			<brief>落日盔甲既然最终是从天魔石窟中找回，那么，可以明确地证明，包括老师在内的人类高手团，最终确实进入了天魔石窟。\n　　老师……\n　　唉，谢谢你为我们找到了真相！顺便拜托你将此事转告天机老人吧。</brief>
			<await>将找回的真相转告天机老人。</await>
			<finish>人类高手团最终覆灭于天魔石窟的事情终于得到证实了……愿他们安息！\n　　……不，我们还有一件重要的事没做。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3227" />
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
			<![CDATA[找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="80000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>