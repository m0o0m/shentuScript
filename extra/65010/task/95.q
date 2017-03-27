<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="95" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#称号的升级" type="1" suggest_level="1" visible="1" next_id="96">
		<script name="任务执行脚本" />
		<description>
			称号可以极大提升角色综合实力，并且具有升级功能，需要消耗功勋值。功勋值可以通过完成除魔任务来提升。
		</description>
		<dialogue>
			<brief>称号可以极大提升角色综合实力，并且具有升级功能，需要消耗功勋值。功勋值可以通过完成除魔任务来提升。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>不要忘记升级，无论打BOSS还是打架都非常好用。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="94" />
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
			<![CDATA[获取功勋值：#NPCLINK<STR:除魔使节,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:防具尊者,NPCKEYNAME:防具尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>