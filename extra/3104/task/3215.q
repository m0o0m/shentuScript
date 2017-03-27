<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3215" name="[主线]-奇特的物质(7)" type="1" suggest_level="1" visible="1" next_id="3216">
		<description>
			非常高兴你能来找我，现在只有像你这么强大的勇士，才能帮得上了。\n　　有人在天魔石窟发现了火炎石，这是只有在地底岩浆中才会产生的高品质矿石，是打造顶级武器和高防装备的材料，能够拜托你帮我弄回10块回来吗？
		</description>
		<dialogue>
			<brief>非常高兴你能来找我，现在只有像你这么强大的勇士，才能帮得上了。\n　　有人在天魔石窟发现了火炎石，这是只有在地底岩浆中才会产生的高品质矿石，是打造顶级武器和高防装备的材料，能够拜托你帮我弄回10块回来吗？</brief>
			<await>听说，火炎石随岩浆喷发跌落地面，被石窟内的天魔奴仆们收藏，只要击杀它们，就有可能找到火炎石。</await>
			<finish>果然是顶级矿呀，明显可以感受到强大的火系魔法的波动，有了这批矿石，一定可以打造几件顶级武器。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3214" />
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
				<trophy monster="天魔奴仆1" item="火炎石" min_num="1" max_num="1" bind_require="2" limit="10" chance="7500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在天魔石窟击败天魔奴仆，获取10份#LINK<MAP:天魔石窟1,POSX:56,POSY:148,STR:火炎石,MOVE:1>##ITEMGROUP0#后找东临城的铁匠]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:铁匠,NPCKEYNAME:东临城铁匠,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="火炎石" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>