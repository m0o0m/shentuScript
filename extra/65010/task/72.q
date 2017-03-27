<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="72" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#装备加强" type="1" suggest_level="1" visible="1" next_id="73">
		<script name="任务执行脚本" />
		<description>
			看来你现在的装备已经无法满足你的要求了，每一件装备都有它们自己的潜力，只是寻常人永远不会懂。我来帮你一把。
		</description>
		<dialogue>
			<brief>看来你现在的装备已经无法满足你的要求了，每一件装备都有它们自己的潜力，只是寻常人永远不会懂。我来帮你一把。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>把装备提升到最大的能力，可以帮你更好的战斗，这是毋庸置疑的事实。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="71" />
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
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="38" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>