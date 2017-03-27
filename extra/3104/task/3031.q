<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3031" name="[主线]-获取支助" type="1" suggest_level="1" visible="1" next_id="3032">
		<description>
			为了揭开装备强化的终极秘密，我进行了长期的研究，这是一笔庞大的开支。\n　　元宝充值商人答应过支助我，但却一直没有实行。老头子脸皮薄，想委托你去帮我摧摧呢。
		</description>
		<dialogue>
			<brief>为了揭开装备强化的终极秘密，我进行了长期的研究，这是一笔庞大的开支。\n　　元宝充值商人答应过支助我，但却一直没有实行。老头子脸皮薄，想委托你去帮我摧摧呢。</brief>
			<await>支找元宝商人摧款。</await>
			<finish>我的确答应过支助大师的研究，只是这段时间我的资金非常紧张……，你别一副不相信的模样，我真的没钱呀。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3030" />
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
			<![CDATA[与#NPCLINK<STR:元宝充值,NPCKEYNAME:元宝充值,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:元宝充值,NPCKEYNAME:元宝充值,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="34000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="布鞋"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>