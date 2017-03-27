<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="38" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#降妖除魔" type="1" suggest_level="1" visible="1" next_id="39">
		<script name="48_reward" />
		<description>
			想要称霸一方，这点可远远不够哦，我可以帮助你提升，我这里有很多不同难度的任务，当然难得越大，获得的奖励也越高。来亲手试试吧。
		</description>
		<dialogue>
			<brief>想要称霸一方，这点可远远不够哦，我可以帮助你提升，我这里有很多不同难度的任务，当然难得越大，获得的奖励也越高。来亲手试试吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>亲手试一次吧，奖励很诱人哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="37" />
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
			<![CDATA[回复 #NPCLINK<STR:除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
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
			<accept enable="1" idletime="30" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>