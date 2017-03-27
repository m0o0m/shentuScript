<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3143" name="[主线]-邪庙的阴谋" type="1" suggest_level="1" visible="1" next_id="3144">
		<description>
			邪庙的妖魔来偷阵法研究笔记一定是有什么阴谋，得立刻去找天机老人商量一下对策!
		</description>
		<dialogue>
			<brief>他们既然派人来偷我的笔记，一定有什么阴谋，你快去找天机老人商量一下对策吧!</brief>
			<await>邪庙一定有什么阴谋，去找天机老人商量。</await>
			<finish>什么？他们居然想盗取魔语尊者的封印魔法阵的研究笔记，看来一切都是梵天僧捣的鬼。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3142" />
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
			<![CDATA[将这次的事件告知龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#并商量一下对策]]>
			</progressing>
			<accomplishing>
			<![CDATA[将这次的事件告知龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#并商量一下对策]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>