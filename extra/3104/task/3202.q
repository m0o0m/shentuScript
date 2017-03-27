<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3202" name="[主线]-被劫走的粮食(1)" type="1" suggest_level="1" visible="1" next_id="3203">
		<description>
			因为有像你这样的勇士的努力，前往东临城输送物质的路线已经可以保证安全。但是，在这此前我们的损失非常惨重。
		</description>
		<dialogue>
			<brief>前几天，我们输送粮食前往东临城的队伍，在途中被大批天魔密探袭击，这批粮食因此丢失，我刚得到消息，这批粮食还在天魔密探的身上，如果现在开始行动，至少可以追回10大包粮食。</brief>
			<await>如果现在开始行动，至少可以追回10大包粮食。</await>
			<finish>哈，终于以可弥补一点损失了，我就知道你的行动永远都是那么迅速！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3201" />
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
				<trophy monster="天魔密探" item="一袋粮食" min_num="1" max_num="1" bind_require="2" limit="10" chance="5000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在东临城北面击败天魔密探，获取#LINK<MAP:东临城,POSX:389,POSY:223,STR:粮食,MOVE:1>##ITEMGROUP0#后找东临城军需官]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="一袋粮食" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="750000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>