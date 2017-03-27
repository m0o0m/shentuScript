<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3130" name="[主线]-绝路救援（二）" type="1" suggest_level="1" visible="1" next_id="3131">
		<description>
			终于找到了那名勇敢的弓箭手，可是他身受重伤，无法移动，现在只有回去找武馆教练寻找到能快速恢复伤势的药来救弓箭手了
		</description>
		<dialogue>
			<brief>以我现在的状态……即使跟随着你，我恐怕也是坚持不出去了。现在我需要治疗一下伤势才能行动，能够快速治愈伤势的药，这个世界上有，但是，我不知道在那里，你先回去找我老师吧，他应该知道去那里找！</brief>
			<await>我…快不行了，快去找我的老师吧</await>
			<finish>我的学生受了重伤，还活着吗？还活着，这……还好，只要生命没事，就能治愈。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3129" />
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
			<![CDATA[回巫山城去询问#NPCLINK<STR:武馆教练,NPCKEYNAME:武馆教练场外,MOVE:1>#接下来怎么办]]>
			</progressing>
			<accomplishing>
			<![CDATA[回巫山城去询问#NPCLINK<STR:武馆教练,NPCKEYNAME:武馆教练场外,MOVE:1>#接下来怎么办]]>
			</accomplishing>
		</tracker>
		<rewards exp="21000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>