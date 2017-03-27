<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3016" name="[主线]-药材采集" type="1" suggest_level="1" visible="1" next_id="3021">
		<description>
			很多人都说我是奸商！其实这是天藏大陆最大的误会，只是因药材稀少难寻，所以制作的药品自然显得贵了那么一点点。如果你能为我采集5株星灵花回来的话，我会为向你提供一批药材哦。
		</description>
		<dialogue>
			<brief>很多人都说我是奸商！其实这是天藏大陆最大的误会，只是因药材稀少难寻，所以制作的药品自然显得贵了那么一点点。如果你能为我采集5株星灵花回来的话，我会为向你提供一批药材哦。</brief>
			<await>星灵花就在附近哦！</await>
			<finish>采集技术不错呀，这几株星灵花品质很高呢。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3015" />
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
			<![CDATA[在附近采集5株#LINK<MAP:新手村,POSX:243,POSY:309,STR:星灵花,MOVE:1>##ITEM0#后交与药材商。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将采集的星灵花交给#NPCLINK<STR:药材商,NPCKEYNAME:新手村药材商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="星灵花"  n="5" bind_require="0" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="3150" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="超级魔法药"  n="1" bind_require="1" />
				<award keyname="超级金创药"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>