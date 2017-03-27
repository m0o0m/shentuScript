<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="95" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#护身符升至2级" type="1" suggest_level="1" visible="1" next_id="96">
		<script name="任务执行脚本" />
		<description>
			护身符可以极大提升角色生存能力，并且具有升级功能，需要消耗护符印记。护符印记小怪和BOSS均有产出。
		</description>
		<dialogue>
			<brief>护身符可以极大提升角色生存能力，并且具有升级功能，需要消耗护符印记。护符印记小怪和BOSS均有产出。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>不要忘记升级它，无论打BOSS还是打架，这是一件无与伦比的神装备。</finish>
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
			<![CDATA[#COLORCOLOR_BROWN#点击打开：#COLOREND# #UILINK<STR:护符升级,WND:执行脚本,PARAM:TaskFurnace(1)>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:防具尊者,NPCKEYNAME:防具尊者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="测试鸡" />
				</group>
			</group_huntings>
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