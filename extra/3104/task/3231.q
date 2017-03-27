<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3231" name="[主线]-可怕的谣言(1)" type="1" suggest_level="1" visible="1" next_id="3232">
		<description>
			你了解道士吗？他们为善可以治疗一切伤势，为恶则可以毒死一城，正是因为他们亦正亦邪。所以很多人都对道士敬而远之。\n　　现在东临城有着一个可怕的传言，他们说，道士暗中勾结了恶魔！是的，一切因为天魔石窟出现的天魔妖道，他们掌握着道士的部分技能。\n　　想要辨别真相，必须从天魔妖道的手上夺取一些技能书，你愿意接受这一任务吗？
		</description>
		<dialogue>
			<brief>你了解道士吗？他们为善可以治疗一切伤势，为恶则可以毒死一城，正是因为他们亦正亦邪。所以很多人都对道士敬而远之。\n　　现在东临城有着一个可怕的传言，他们说，道士暗中勾结了恶魔！是的，一切因为天魔石窟出现的天魔妖道，他们掌握着道士的部分技能。\n　　想要辨别真相，必须从天魔妖道的手上夺取一些技能书，你愿意接受这一任务吗？</brief>
			<await>去天魔石窟打败天魔妖道，获取一本妖道的秘籍</await>
			<finish>确实是道士的技能书。但是，我不相信有道士会与恶魔勾结，因为没有一颗赤子之心，将无法真正学习道术的奥义。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3230" />
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
				<trophy monster="天魔妖道1" item="妖道的秘籍" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道2" item="妖道的秘籍" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道说话1" item="妖道的秘籍" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道说话2" item="妖道的秘籍" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道说话3" item="妖道的秘籍" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道说话4" item="妖道的秘籍" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="超级天魔妖道1" item="妖道的秘籍" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="精英天魔妖道1" item="妖道的秘籍" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在天魔石窟二层或三层，击败天魔妖道获取1本#LINK<MAP:天魔石窟2,POSX:11,POSY:188,STR:妖道的秘籍,MOVE:1>##ITEMGROUP0#后找龙城的天机老人]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="妖道的秘籍" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>