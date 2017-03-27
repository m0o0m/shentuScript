<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3356" name="[主线]-新的尝试" type="1" suggest_level="1" visible="1" next_id="3357">
		<description>
			我有方法了！还记得上次你拿来的剑吗？我想到了一个修复的办法了，你先去把剑借来吧！
		</description>
		<dialogue>
			<brief>我有方法了！还记得上次你拿来的剑吗？我想到了一个修复的办法了，你先去把剑借来吧！</brief>
			<await>还没有把剑借来吗？</await>
			<finish>勇士，你是来看我的吗？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3355" />
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
			<![CDATA[找到秘境四层中的#NPCLINK<STR:冒险者,NPCKEYNAME:冒险者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[找到秘境四层中的#NPCLINK<STR:冒险者,NPCKEYNAME:冒险者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="195000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>