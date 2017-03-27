<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3242" name="[主线]-阻止恶魔的阴谋(6)" type="1" suggest_level="1" visible="1" next_id="3243">
		<description>
			真是太险了，该死的，居然设置了假的配方！\n　　幸好，我们对蚀心之毒的研究过程中发现，这种毒药很可能是天魔石窟内的天魔妖道配制的。因为上一次的谣言事件，我对天魔妖道可是很有研究，你去找天魔妖道，我们继续研究解药，希望时间还来得及！
		</description>
		<dialogue>
			<brief>真是太险了，该死的，居然设置了假的配方！\n　　幸好，我们对蚀心之毒的研究过程中发现，这种毒药很可能是天魔石窟内的天魔妖道配制的。因为上一次的谣言事件，我对天魔妖道可是很有研究，你去找天魔妖道，我们继续研究解药，希望时间还来得及！</brief>
			<await>去天魔石窟击败天魔妖道获取解药配方</await>
			<finish>居然真的在天魔妖道身上找到配方？我立即去试验！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3241" />
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
				<trophy monster="天魔妖道1" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="天魔妖道2" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="天魔妖道说话1" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="天魔妖道说话2" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="天魔妖道说话3" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="天魔妖道说话4" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="超级天魔妖道1" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
				<trophy monster="精英天魔妖道1" item="解药配方" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在天魔石窟击败天魔妖道，获取#LINK<MAP:天魔石窟2,POSX:11,POSY:188,STR:解药配方,MOVE:1>##ITEMGROUP0#后找巫山城的炼药师]]>
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
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>