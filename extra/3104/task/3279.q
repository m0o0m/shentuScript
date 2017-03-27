<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3279" name="[主线]-魔语尊者的笔记(3)" type="1" suggest_level="1" visible="1" next_id="3280">
		<description>
			我想，尊者的笔记中，一定有关于这件神器的研究，这是非常重要的秘密，绝不能让邪恶的人知道。尊者要确认你的品性，确实是应该的。\n　　至于你的品性，在你与恶魔的长期战斗中我已经了解得非常深刻，这封赞美信完全可以交给你。收好就快回去吧！
		</description>
		<dialogue>
			<brief>我想，尊者的笔记中，一定有关于这件神器的研究，这是非常重要的秘密，绝不能让邪恶的人知道。尊者要确认你的品性，确实是应该的。\n　　至于你的品性，在你与恶魔的长期战斗中我已经了解得非常深刻，这封赞美信完全可以交给你。收好就快回去吧！</brief>
			<await>你已经可以回去找引灵尊者了</await>
			<finish>既然老兵都相信你的人品，那么，这本研究笔记就交给你了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3278" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="确认信"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[回龙城找#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#借取笔记]]>
			</progressing>
			<accomplishing>
			<![CDATA[回龙城找#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#借取笔记]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="确认信"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="引灵尊者的笔记"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>