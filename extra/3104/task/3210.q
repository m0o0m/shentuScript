<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3210" name="[主线]-奇特的物质(2)" type="1" suggest_level="1" visible="1" next_id="3211">
		<description>
			对了，城里的裁缝也在寻找一位强大的勇士，如果你不是太忙，就去看看吧。
		</description>
		<dialogue>
			<brief>对了，城里的裁缝也在寻找一位强大的勇士，如果你不是太忙，就去看看吧。</brief>
			<await>裁缝就在城内，快去找她吧。</await>
			<finish>你来得正好，能不能帮我一个忙呢？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3209" />
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
			<![CDATA[与东临城的#NPCLINK<STR:裁缝,NPCKEYNAME:东临城裁缝,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:裁缝,NPCKEYNAME:东临城裁缝,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>