<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10001" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#穿戴1件+6的装备" type="1" suggest_level="1" visible="1" next_id="94">
		<script name="任务执行脚本" />
		<description>
			虽然很危险，但是很值得再次一去，没错，锁魔宫是一个既危险又很值得一去的地方。因为里面的好东西实在太多了。
		</description>
		<dialogue>
			<brief>强化可以快速提升自己的实力，说再多不如你去试一试，去升级一件+6的装备看看。</brief>
			<await>打开强化界面，即可对选中的装备进行强化。</await>
			<finish>嗯，不错，强化武器、项链、手镯、戒指，只加攻击并不会增强防御，这点要注意哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="92" />
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
			<![CDATA[#COLORCOLOR_GOLD#快速完成：#COLOREND# #UILINK<STR:首充礼包,WND:执行脚本,PARAM:OpenFirstConsume()>#
#COLORCOLOR_BROWN#点击打开：#COLOREND# #UILINK<STR:强化界面,WND:执行脚本,PARAM:CL:OnOpenForge()>#
任务奖励：#COLORCOLOR_MAGENTA#400万经验#COLOREND# #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:锻造大师,NPCKEYNAME:巫山城锻造大师,MOVE:1>#]]>
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