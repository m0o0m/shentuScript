<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3146" name="[主线]-倾天一击（一）" type="1" suggest_level="1" visible="1" next_id="3147">
		<description>
			如今天藏大陆已经集齐了所有的魔法师，准备倾尽全力发动一个超大魔法，一举毁灭邪庙。\n　　现在我需要你深入邪庙第三层，找一个空旷的地点放下指引魔阵指引，为我们的攻击指引方向。
		</description>
		<dialogue>
			<brief>我已经聚集了大陆上所有的魔法师，准备倾尽全力发动一个超大魔法，一举毁灭邪庙。\n　　现在我需要你深入邪庙第三层，找一个空旷的地点放下指引魔阵指引，为我们的攻击指引方向。</brief>
			<await>你身上没有信标魔阵无法启动信标</await>
			<finish>启动信标~~~~</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3145" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="信标魔阵"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[深入天荒邪庙三层将#NPCLINK<STR:信标,NPCKEYNAME:信标,MOVE:1>#启动]]>
			</progressing>
			<accomplishing>
			<![CDATA[深入天荒邪庙三层将#NPCLINK<STR:信标,NPCKEYNAME:信标,MOVE:1>#启动]]>
			</accomplishing>
		</tracker>
		<achievements>
			<items>
				<item keyname="信标魔阵"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>