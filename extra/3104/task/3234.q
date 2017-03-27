<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3234" name="[主线]-可怕的谣言(4)" type="1" suggest_level="1" visible="1" next_id="3235">
		<description>
			20年前，我遭遇了一只上半身为人身，下半身为蜘蛛的巨大怪物，我虽然最终逃了出来，却受了极重的伤势，我随身带的笔记也丢失在其中。那些天魔邪道，想来是研究了我的笔记，是以学到了些四不像的道术。\n　　让我道士一脉遭受如此侮辱，是我愧对老师！你如果能为我取回丢失的笔记，澄清关于道士的流言，我必有厚报。
		</description>
		<dialogue>
			<brief>20年前，我遭遇了一只上半身为人身，下半身为蜘蛛的巨大怪物，我虽然最终逃了出来，却受了极重的伤势，我随身带的笔记也丢失在其中。那些天魔邪道，想来是研究了我的笔记，是以学到了些四不像的道术。\n　　让我道士一脉遭受如此侮辱，是我愧对老师！你如果能为我取回丢失的笔记，澄清关于道士的流言，我必有厚报。</brief>
			<await>从天魔妖道身上取回老者丢失的笔记。</await>
			<finish>这正是我的笔记，惭愧，居然被恶魔学去了一部分，多谢！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3233" />
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
				<trophy monster="天魔妖道1" item="丢失的笔记" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道2" item="丢失的笔记" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道说话1" item="丢失的笔记" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道说话2" item="丢失的笔记" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道说话3" item="丢失的笔记" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="天魔妖道说话4" item="丢失的笔记" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="超级天魔妖道1" item="丢失的笔记" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
				<trophy monster="精英天魔妖道1" item="丢失的笔记" min_num="1" max_num="1" bind_require="2" limit="1" chance="3000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在天魔石窟二层或三层，击败天魔妖道获取1本#LINK<MAP:天魔石窟2,POSX:11,POSY:188,STR:丢失的笔记,MOVE:1>##ITEMGROUP0#后找神秘老者]]>
			</progressing>
			<accomplishing>
			<![CDATA[与天魔石窟外的的#NPCLINK<STR:神秘老者,NPCKEYNAME:神秘老者,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="丢失的笔记" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" >
			<awards>
				<award keyname="开光印"  n="3" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>