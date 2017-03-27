<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3117" name="[主线]-悲伤的老人们" type="1" suggest_level="1" visible="1" next_id="3118">
		<description>
			最近城里的老人们充满了悲伤，去安抚一下他们吧，看看有什么可以帮助他们的。
		</description>
		<dialogue>
			<brief>最近城里的老人们充满了悲伤，你去安抚一下他们吧，看看有什么可以帮助他们的。</brief>
			<await>怎么样，那些老人们好些了吗</await>
			<finish>我已经听说过你的事迹，没有你，我们可能要很久才能发现妖山暗穴的秘密。但随着妖山暗穴的秘密公之于众，我们的心中却充满了无尽的悲伤。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3116" />
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
			<![CDATA[去城里安抚一下#NPCLINK<STR:悲伤的老人,NPCKEYNAME:悲伤的老人,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[去城里安抚一下#NPCLINK<STR:悲伤的老人,NPCKEYNAME:悲伤的老人,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>