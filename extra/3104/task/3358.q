<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3358" name="[主线]-修复剑的材料" type="1" suggest_level="1" visible="1">
		<description>
			因为这把剑长久浸泡在海水中，所以，需要清除海洋的侵蚀之力。如果你能找来第二块海魂石和5份精英海妖的血液，我就可以修复这把剑了。海魂石在精英海怪的身上都有可能找到。
		</description>
		<dialogue>
			<brief>因为这把剑长久浸泡在海水中，所以，需要清除海洋的侵蚀之力。如果你能找来第二块海魂石和5份精英海妖的血液，我就可以修复这把剑了。海魂石在类似深海巨螯怪等精英海怪的身上都可以找到。</brief>
			<await>还没有找到足够的材料吗?</await>
			<finish>放心，材料品质不错，我会让你满意的。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3357" />
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
				<trophy monster="精英石甲鱼1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="精英铁棘鱼1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="精英铁螯怪1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="精英巨钳蟹1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="精英秘境海妖1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="精英秘境歌妖1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="精英海魔侍从1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="精英海魔护卫1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="3333" />
				<trophy monster="深海巨螯怪1" item="海魂石" min_num="1" max_num="1" bind_require="1" limit="1" chance="5333" />
				<trophy monster="精英秘境海妖1" item="精英海妖之血" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[从任意精英级海怪的身上获得1块海魂石#ITEMGROUP0#,从精英秘境海妖身上获得10份精英海妖之血#ITEMGROUP1#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去与龙城#NPCLINK<STR:铁匠,NPCKEYNAME:龙城铁匠,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="海魂石" />
				</group>
				<group n="10" bind_require="1" >
					<group_item keyname="精英海妖之血" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2255000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>