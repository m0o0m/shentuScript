<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5025" name="[剧情]-堕落者血手（5）" type="2" suggest_level="1" visible="1" next_id="5026">
		<description>
			是血手让他们来的，因为我看到了血手，他们肯定还会再来灭口的！好吧，既然血手想要让我死，只能先干掉血手！\n　　我现在就告诉你血手的踪影吧！我在巫山城外看到了血手，当时他正逃往绝路岭，我知道他最终目的是绝路城，如果你行动快点，可以在绝路岭截住他！
		</description>
		<dialogue>
			<brief>是血手让他们来的，因为我看到了血手，他们肯定还会再来灭口的！好吧，既然血手想要让我死，只能先干掉血手！\n　　我现在就告诉你血手的踪影吧！我在巫山城外看到了血手，当时他正逃往绝路岭，我知道他最终目的是绝路城，如果你行动快点，可以在绝路岭截住他！</brief>
			<await>赶往绝路岭，截杀堕落者血手。</await>
			<finish>……</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5024" />
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
			<![CDATA[赶往#COLORCOLOR_GOLD#绝路岭#COLOREND#，截住想逃往绝路城的#LINK<MAP:绝路岭,POSX:118,POSY:47,STR:血手>#，消灭它！]]>
			</progressing>
			<accomplishing>
			<![CDATA[垂死挣扎着爬起来的#COLORCOLOR_GOLD#血手#COLOREND#有话对你说，与#NPCLINK<STR:血手,NPCKEYNAME:血手>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="血手1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>