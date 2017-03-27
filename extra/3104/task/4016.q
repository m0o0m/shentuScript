<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4016" name="[支线]-捕捉歌妖(2)" type="2" suggest_level="1" visible="1" next_id="4017">
		<description>
			自从发现了歌妖这种神奇美妙的海怪，许多人都非常感兴趣，我找到了一个大主顾，想要购买十只歌妖，如果你能帮我捕捉十只歌妖，我会付给你很多报酬。\n　　捕捉歌妖的笼子我已经托铁匠做好，你可以去他那儿领取。\n
		</description>
		<dialogue>
			<brief>自从发现了歌妖这种神奇美妙的海怪，许多人都非常感兴趣，我找到了一个大主顾，想要购买十只歌妖，如果你能帮我捕捉十只歌妖，我会付给你很多报酬。\n　　捕捉歌妖的笼子我已经托铁匠做好，你可以去他那儿领取。\n</brief>
			<await>去铁匠那儿领取笼子吧。\n</await>
			<finish>不错，杂货商确实在我这儿定制了十只笼子，你拿去回复杂货商吧。\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="4015" />
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
			<![CDATA[去找东临城的#NPCLINK<STR:铁匠,NPCKEYNAME:东临城铁匠,MOVE:1>#，索要#COLORCOLOR_GREENG#笼子#COLOREND#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[去找东临城的#NPCLINK<STR:铁匠,NPCKEYNAME:东临城铁匠,MOVE:1>#，索要#COLORCOLOR_GREENG#笼子#COLOREND#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000" ingot="0" bind_ingot="0" integral="0" gold="1000" bind_gold="0" >
			<awards>
				<award keyname="囚笼"  n="10" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>