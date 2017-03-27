<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3113" name="[主线]-达到27级" type="1" suggest_level="1" visible="1" next_id="3114">
		<description>
			升到27级再来找天机老人，他有新的任务交给我
		</description>
		<dialogue>
			<brief>你继续去努力提升实力吧，到27级时来找我，我会给你新的任务</brief>
			<await>你现在实力还太弱了，等到27级再来吧！你可以多去封魔阵和试炼场锻炼实力哈！</await>
			<finish>来的正好，妖山暗穴那里出了问题，我正准备派你去一趟</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3112" />
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
			<![CDATA[达到#COLORCOLOR_YELLOW#27级#COLOREND#后去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[恭喜你已经达到#COLORCOLOR_YELLOW#27级#COLOREND#了，快去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="27" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>