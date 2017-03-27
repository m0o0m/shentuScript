<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3211" name="[主线]-奇特的物质(3)" type="1" suggest_level="1" visible="1" next_id="3212">
		<description>
			我这位置好像有点偏远哦，平时来到我这里的勇士可不多，所以我就委托了杂货商帮我找人。\n　　是这样的，城外的魔化蜥蜴，他们的厚厚的皮是制作防具的极品材料，你如果有时间的话，去帮我弄10份魔化蜥蜴的皮革回来吧。
		</description>
		<dialogue>
			<brief>我这位置好像有点偏远哦，平时来到我这里的勇士可不多，所以我就委托了杂货商帮我找人。\n　　是这样的，城外的魔化蜥蜴，他们的厚厚的皮是制作防具的极品材料，你如果有时间的话，去帮我弄10份魔化蜥蜴的皮革回来吧。</brief>
			<await>你如果有时间的话，去帮我弄10份的蜥蜴皮革回来吧。</await>
			<finish>真的是太强大了，这种可怕的魔物，居然被你轻而易举地击杀。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3210" />
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
				<trophy monster="魔化蜥蜴" item="蜥蜴皮革" min_num="1" max_num="1" bind_require="2" limit="10" chance="7500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在东临城附近击败魔化蜥蜴，获取10份#LINK<MAP:东临城,POSX:253,POSY:205,STR:蜥蜴皮革,MOVE:1>##ITEMGROUP0#后找东临城的裁缝]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:裁缝,NPCKEYNAME:东临城裁缝,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="蜥蜴皮革" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>