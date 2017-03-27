<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3283" name="[主线]-南方海域的冒险" type="1" suggest_level="1" visible="1" next_id="3284">
		<script name="3283" />
		<description>
			在绝秘的历史真实记录中，大龙帝国曾经从南方海域得到过一块生死轮图的碎片，但是，运送这块矿片的大船，却最终沉没于海底，这块碎片自然也消失在茫茫大海之中。\n　　你愿意前往南方海域寻找这块碎片吗？正好，情报说南方海域有海妖作乱，便请你顺手解决这些麻烦吧！在海底入口处,远征军统领可以向你提供更多的情报。
		</description>
		<dialogue>
			<brief>在绝秘的历史真实记录中，大龙帝国曾经从南方海域得到过一块生死轮图的碎片，但是，运送这块矿片的大船，却最终沉没于海底，这块碎片自然也消失在茫茫大海之中。\n　　你愿意前往南方海域寻找这块碎片吗？正好，情报说南方海域有海妖作乱，便请你顺手解决这些麻烦吧！在海底入口处,远征军统领可以向你提供更多的情报。</brief>
			<await>南方海域需要你的努力！</await>
			<finish>受天机老人所托而来的勇士，很高兴见到你！我们在这里发现了一艘古代的沉船,并遇上比已知的恶魔更加的强大的怪物!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="200" />
			<prologues>
				<group>
					<prologue id="3282" />
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
			<![CDATA[从东临城#NPCLINK<STR:海角引路人,NPCKEYNAME:海角秘境传送,MOVE:1>#处到达海底入口，找到#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[从东临城#NPCLINK<STR:海角引路人,NPCKEYNAME:海角秘境传送,MOVE:1>#处到达海底入口，找到#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
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