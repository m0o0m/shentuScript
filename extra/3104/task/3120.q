<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3120" name="[主线]-向天机老人道谢" type="1" suggest_level="1" visible="1" next_id="3121">
		<description>
			谢谢你的关心，也麻烦你帮我谢谢天机老人的关心！
		</description>
		<dialogue>
			<brief>谢谢你的关心，也麻烦你帮我谢谢天机老人的关心！</brief>
			<await>替我谢谢天机老人</await>
			<finish>原来是因为这样，所以城里才陷入在悲伤的气氛中，也是因为你的发现才改变了他们的命运。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3119" />
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
			<![CDATA[替悲伤的老人们谢谢龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#关心]]>
			</progressing>
			<accomplishing>
			<![CDATA[替悲伤的老人们谢谢龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#关心]]>
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