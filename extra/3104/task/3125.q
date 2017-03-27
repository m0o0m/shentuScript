<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3125" name="[主线]-寻求解决魔化之心的办法" type="1" suggest_level="1" visible="1" next_id="3126">
		<description>
			带给天机老人看看吧，或许他有解决的办法。
		</description>
		<dialogue>
			<brief>带给天机老人看看吧，或许他有解决的办法。</brief>
			<await>魔化之心呢，你该不会弄丢了吧！</await>
			<finish>原来这就是牛族魔化的根源了，魔化之心，由自身先天生成，无法避免，只有从外部去控制它们的数量才行了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3124" />
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
			<![CDATA[将魔化之心带给龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#寻求解决之法]]>
			</progressing>
			<accomplishing>
			<![CDATA[将魔化之心带给龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#寻求解决之法]]>
			</accomplishing>
		</tracker>
		<rewards exp="22000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>