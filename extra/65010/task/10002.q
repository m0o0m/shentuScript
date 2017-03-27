<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10002" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#蕴魂一次装备" type="1" suggest_level="1" visible="1" next_id="91">
		<script name="任务执行脚本" />
		<description>
			蕴魂是将魂力蕴入装备之上，可以极大的提升装备的各项属性。说的再多不如去试一次，拿一件装备去尝试一下吧。
		</description>
		<dialogue>
			<brief>蕴魂是将魂力蕴入装备之上，可以极大的提升装备的各项属性。说的再多不如去试一次，拿一件装备去尝试一下吧。</brief>
			<await>打开强化界面，即可对选中的装备进行强化。</await>
			<finish>嗯，不错，蕴魂武器、项链、手镯、戒指，只加攻击并不会增强防御，这点要注意哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="90" />
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
			<![CDATA[#COLORCOLOR_BROWN#点击打开：#COLOREND# #UILINK<STR:蕴魂界面,WND:执行脚本,PARAM:TaskOpenForge(3)>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:屠夫,NPCKEYNAME:巫山城屠夫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
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
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>