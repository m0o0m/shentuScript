<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3035" name="[主线]-债务纠纷(4)" type="1" suggest_level="1" visible="1" next_id="3036">
		<description>
			非常抱歉一直没有实现支助装备大师的承诺！\n　　这事不能再拖了，这样吧，我与神之翼关系不错，你去跟她说，我目前资金有点麻烦，先让她支付一笔钱给装备大师吧。她会答应的！
		</description>
		<dialogue>
			<brief>非常抱歉一直没有实现支助装备大师的承诺！\n　　这事不能再拖了，这样吧，我与神之翼关系不错，你去跟她说，我目前资金有点麻烦，先让她支付一笔钱给装备大师吧。她会答应的！</brief>
			<await>与神之翼对话。</await>
			<finish>原来还有这等纠纷！好的，那就先让我赞助装备大师的研究吧。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3034" />
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
			<![CDATA[与#NPCLINK<STR:神之翼,NPCKEYNAME:神之翼,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:神之翼,NPCKEYNAME:神之翼,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>