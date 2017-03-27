<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3285" name="[主线]-危险的侦查(2)" type="1" suggest_level="1" visible="1" next_id="3303">
		<description>
			在任何一场战争中，地形的因素都是极为重要的。我们对沉船的布局和结构缺乏足够的了解，这对我们非常不利。\n　　据我所知，我一艘大船内都有着自己的结构图，但经过怪物的肆虐，这些图纸应该已落入了怪物的身上，请进入沉船一二层，从怪物的身上找到巨船的结构图吧。
		</description>
		<dialogue>
			<brief>在任何一场战争中，地形的因素都是极为重要的。我们对沉船的布局和结构缺乏足够的了解，这对我们非常不利。\n　　据我所知，我一艘大船内都有着自己的结构图，但经过怪物的肆虐，这些图纸应该已落入了怪物的身上，请进入沉船一二层，从怪物的身上找到巨船的结构图吧。</brief>
			<await>还没有找到巨船的结构图吗?</await>
			<finish>有了这份结构图，我们的行动将更有针对性。谢谢你</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="200" />
			<prologues>
				<group>
					<prologue id="3284" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="石甲鱼1" item="巨船的结构图" min_num="1" max_num="1" bind_require="1" limit="1" chance="300" />
				<trophy monster="铁棘鱼1" item="巨船的结构图" min_num="1" max_num="1" bind_require="1" limit="1" chance="400" />
				<trophy monster="铁螯怪1" item="巨船的结构图" min_num="1" max_num="1" bind_require="1" limit="1" chance="500" />
				<trophy monster="巨钳蟹1" item="巨船的结构图" min_num="1" max_num="1" bind_require="1" limit="1" chance="600" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[进入沉船一二层,从怪物身上获得#LINK<MAP:海底1,POSX:79,POSY:135,STR:巨船的结构图,MOVE:1>##ITEM0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到海底入口，将巨船的结构图交给#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="巨船的结构图"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1020000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="中级转神石"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>