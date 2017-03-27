<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3134" name="[主线]-达到32级" type="1" suggest_level="1" visible="1" next_id="3135">
		<description>
			到处去历练一下，当等级达到32级时再去找天机老人，他有新的任务交给我
		</description>
		<dialogue>
			<brief>这绝路城的牛魔虽然凶恶，但是对于实力的提升也是很显著的，你可以多在这里历练一下</brief>
			<await>你现在实力还太弱了，等到32级再来吧！你可以多去封魔阵和试炼场锻炼实力哈！</await>
			<finish>天荒阵祭坛经受了一次又一次的冲击，也不知道还能坚持多久了</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3133" />
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
			<![CDATA[达到#COLORCOLOR_YELLOW#32级#COLOREND#后去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[恭喜你已经达到#COLORCOLOR_YELLOW#32级#COLOREND#了，快去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="32" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>