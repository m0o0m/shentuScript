<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3213" name="[主线]-奇特的物质(5)" type="1" suggest_level="1" visible="1" next_id="3214">
		<description>
			啊，是妹妹委托你来的吗？真是……真是太感激你了。\n　　事情是这样的，虽然我们已经付出两倍的努力，但是，足够的物质供应仍是困难重重，我听说城外魔化沙虫的肉非常鲜美并且有着非常高的营养，你能为我们猎取10份魔化沙虫的肉吗？
		</description>
		<dialogue>
			<brief>啊，是妹妹委托你来的吗？真是……真是太感激你了。\n　　事情是这样的，虽然我们已经付出两倍的努力，但是，足够的物质供应仍是困难重重，我听说城外魔化沙虫的肉非常鲜美并且有着非常高的营养，你能为我们猎取10份魔化沙虫的肉吗？</brief>
			<await>去帮我弄10份的沙虫肉回来吧。</await>
			<finish>太好了，这批沙虫肉，品质可真高呀。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3212" />
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
				<trophy monster="魔化沙虫" item="沙虫肉" min_num="1" max_num="1" bind_require="2" limit="10" chance="7500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在东临城附近击败魔化沙虫，获取10份#LINK<MAP:东临城,POSX:247,POSY:136,STR:沙虫肉,MOVE:1>##ITEMGROUP0#后找东临城军需官]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="沙虫肉" />
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