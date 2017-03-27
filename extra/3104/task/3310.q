<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3310" name="[主线]-失败的远征(1)" type="1" suggest_level="1" visible="1" next_id="3311">
		<description>
			我们认识到了战胜海妖的困难，不幸的是，我们没有找到战胜它们的正确方法。\n　　在进攻海角秘境的战争中，我们在第三层遭遇了失败！现在,受伤的士兵急需治疗，可是，我们缺乏足够的药材！你愿意帮忙吗？我们需要10份生生草，5朵幽暗之花。幽暗之花可以在沉船三层找到。
		</description>
		<dialogue>
			<brief>我们认识到了战胜海妖的困难，不幸的是，我们没有找到战胜它们的正确方法。\n　　在进攻海角秘境的战争中，我们在第三层遭遇了失败！现在,受伤的士兵急需治疗，可是，我们缺乏足够的药材！你愿意帮忙吗？我们需要10份生生草，5朵幽暗之花。幽暗之花可以在沉船三层找到。</brief>
			<await>还没找到急需的药材吗?</await>
			<finish>太感谢你了！有了这批药材，受伤的士兵将可以得到及时的治疗。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="3309" />
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
			<![CDATA[收集10份#LINK<MAP:海底1,POSX:123,POSY:63,STR:生生草,MOVE:1>##ITEMGROUP0#,5朵#LINK<MAP:海底3,POSX:108,POSY:119,STR:幽暗之花,MOVE:1>##ITEMGROUP1#.	幽暗之花可以在沉船三层找到。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将收集到的药材交给海底入口处的#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="生生草" />
				</group>
				<group n="5" bind_require="2" >
					<group_item keyname="幽暗之花" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="280000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>