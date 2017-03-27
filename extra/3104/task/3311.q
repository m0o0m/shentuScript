<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3311" name="[主线]-失败的远征(2)" type="1" suggest_level="1" visible="1">
		<script name="3311" />
		<description>
			有一件事难以启齿……我们牺牲了许多战友，但是，我们在撤退中没有带回他们的尸体……真是耻辱……\n　　惭愧！还是继续说事情吧，这些海妖似乎并不介意将人类的尸体当作食物……，是的，你已经懂了！那么，能请求你深入第三层找回10位士兵的尸体吗？
		</description>
		<dialogue>
			<brief>有一件事难以启齿……我们牺牲了许多战友，但是，我们在撤退中没有带回他们的尸体……真是耻辱……\n　　惭愧！还是继续说事情吧，这些海妖似乎并不介意将人类的尸体当作食物……，是的，你已经懂了！那么，能请求你深入第三层找回10位士兵的尸体吗？</brief>
			<await>还没找到士兵牺牲后的尸体吗?</await>
			<finish>谢谢！太谢谢你了！谢到所有的花都谢了我都要谢谢你！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="3310" />
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
				<trophy monster="秘境海妖1" item="牺牲士兵的尸体" min_num="1" max_num="1" bind_require="1" limit="10" chance="2600" />
				<trophy monster="秘境歌妖1" item="牺牲士兵的尸体" min_num="1" max_num="1" bind_require="1" limit="10" chance="2600" />
				<trophy monster="巨钳蟹1" item="牺牲士兵的尸体" min_num="1" max_num="1" bind_require="1" limit="10" chance="2000" />
				<trophy monster="铁螯怪1" item="牺牲士兵的尸体" min_num="1" max_num="1" bind_require="1" limit="10" chance="2000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在沉船三层,从海底怪物的手上抢回10具#LINK<MAP:海底3,POSX:69,POSY:134,STR:牺牲士兵的尸体,MOVE:1>##ITEM0#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="牺牲士兵的尸体"  n="10" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="8420000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="修复神水"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>