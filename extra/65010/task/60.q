<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#天荒作乱" type="1" suggest_level="1" visible="1" next_id="61">
		<description>
			怎么样，是不是感觉自己的装备不一样了？不信？你去试试看，正好最近天荒作乱。你正好可以去试刀。
		</description>
		<dialogue>
			<brief>怎么样，是不是感觉自己的装备不一样了？不信？你去试试看，正好最近天荒作乱。你正好可以去试刀。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>看来天荒的事情，现在是路人皆知了。最近麻烦不断啊。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="59" />
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
			<![CDATA[回复 #NPCLINK<STR:传送员,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:传送员,NPCKEYNAME:巫山城传送员,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>