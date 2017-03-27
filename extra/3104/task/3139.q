<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3139" name="[主线]-达到34级" type="1" suggest_level="1" visible="1" next_id="3140">
		<description>
			接下来的任务非常危险，你如果没有34级的实力，我可不能再麻烦你了。当你提升到34级时，可以去魔语尊者，他一定任务给你！
		</description>
		<dialogue>
			<brief>接下来的任务非常危险，你如果没有34级的实力，我可不能再麻烦你了。当你提升到34级时，可以去魔语尊者，他一定任务给你！</brief>
			<await>你现在实力还太弱了，等到34级再来吧！你可以多去封魔阵和试炼场锻炼实力哈！</await>
			<finish>你的实力已经足够，正好我在寻找一位有能力的勇士。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3138" />
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
			<![CDATA[提升至#COLORCOLOR_YELLOW#34级#COLOREND#才有实力继续冒险>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[恭喜你已经达到#COLORCOLOR_YELLOW#34级#COLOREND#了，快去找龙城天荒阵前的#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="34" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>