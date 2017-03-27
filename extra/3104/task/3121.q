<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3121" name="[主线]-达到28级" type="1" suggest_level="1" visible="1" next_id="3161">
		<description>
			升到28级再来找天机老人，他有新的任务交给我
		</description>
		<dialogue>
			<brief>你继续去努力提升实力吧，到28级时来找我，我会给你新的任务，多安慰一下城里的老人们，他们年轻的时候也为龙城付出了太多青春。</brief>
			<await>你现在实力还太弱了，等到28级再来吧！你可以多去封魔阵和试炼场锻炼实力哈！</await>
			<finish>恩，你来了，我正好有任务给你！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3120" />
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
			<![CDATA[达到#COLORCOLOR_YELLOW#28级#COLOREND#后去找龙城的#COLORCOLOR_GREENG#天机老人#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[恭喜你已经达到#COLORCOLOR_YELLOW#28级#COLOREND#了，快去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="28" max_num="200" />
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