<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="26" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#未雨绸缪" type="1" suggest_level="1" visible="1" next_id="27">
		<script name="任务执行脚本" />
		<description>
			少侠，既要前往，也不急于一时，做足准备再前往，这样才能确保万无一失。有个地方，去了对你有百益无一害。何处？去了便知。
		</description>
		<dialogue>
			<brief>少侠，既要前往，也不急于一时，做足准备再前往，这样才能确保万无一失。有个地方，去了对你有百益无一害。何处？去了便知。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>传言不假，果然是年轻之辈。年轻人，工欲善其事，必先利其器。既然有缘，这东西便赠与你了，拿去吧。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="25" />
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
			<![CDATA[回复 #NPCLINK<STR:副本使节,NPCKEYNAME:巫山城副本使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:副本使节,NPCKEYNAME:巫山城副本使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>