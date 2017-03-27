<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3018" name="[主线]-了解技能(1)" type="1" suggest_level="1" visible="1" next_id="3020">
		<description>
			你已经找我很久了吗？不用说，一定是因为想要学习战斗的技能！那么，先听我说说技能的由来吧。\n　　你可要听好了，当父神教建立之后，父神降下了元素法则，信徒从祈祷之中，接受了父神的教导，于是技能就这样出现在了大陆之上。你听明白了吗？
		</description>
		<dialogue>
			<brief>你已经找我很久了吗？不用说，一定是因为想要学习战斗的技能！那么，先听我说说技能的由来吧。\n　　你可要听好了，当父神教建立之后，父神降下了元素法则，信徒从祈祷之中，接受了父神的教导，于是技能就这样出现在了大陆之上。你听明白了吗？</brief>
			<await>~</await>
			<finish>如今大陆破碎，许多顶尖的强者在与恶魔的决战中牺牲，很多知识都湮灭了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3017" />
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
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:新手村书商左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:新手村书商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="4600" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>