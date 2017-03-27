<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3241" name="[主线]-阻止恶魔的阴谋(5)" type="1" suggest_level="1" visible="1" next_id="3242">
		<description>
			唉，半天的时间实在是太急迫了！我们必须两手准备。你现在立即赶往东临城外，从那群天魔密探身上，看能不能获得解药的配方。
		</description>
		<dialogue>
			<brief>唉，半天的时间实在是太急迫了！我们必须两手准备。你现在立即赶往东临城外，从那群天魔密探身上，看能不能获得解药的配方。</brief>
			<await>去东临城北面击败天魔密探获取解药配方</await>
			<finish>蚀心之毒的解药我们还没有研究出来，幸好你已经取回了配方。咦，等等，必须试验真假才能使用，恶魔的歹毒可是早有领教的。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3240" />
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
				<trophy monster="天魔密探" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在东临城北方击败天魔密探，获取#LINK<MAP:东临城,POSX:389,POSY:223,STR:解药配方,MOVE:1>##ITEMGROUP0#后找巫山城的炼药师]]>
			</progressing>
			<accomplishing>
			<![CDATA[与巫山城的#NPCLINK<STR:炼药师,NPCKEYNAME:巫山城炼药师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="解药配方" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>