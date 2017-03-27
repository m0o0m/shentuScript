<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="25" name="新手任务-学习技能" type="1" suggest_level="1" visible="1">
		<description>
			呵呵，看我，只顾看书，倒把你冷落了，来我给你讲讲技能的事情，你的基本技能会在任务中获得，英雄技能书要用书页在敖山庄园龙人处合成，学习技能也是有讲究的，不可乱来。
		</description>
		<dialogue>
			<brief>呵呵，看我，只顾看书，倒把你冷落了，来我给你讲讲技能的事情，你的基本技能会在任务中获得，英雄技能书要用书页在敖山庄园龙人处合成，学习技能也是有讲究的，不可乱来。</brief>
			<await>呵呵，看我，只顾看书，倒把你冷落了，来我给你讲讲技能的事情，你的基本技能会在任务中获得，英雄技能书要用书页在敖山庄园龙人处合成，学习技能也是有讲究的，不可乱来。</await>
			<finish>技能通过学习技能书获得，在历练中获得技能经验值，技能经验值可以提升技能等级，等级越高，技能威力就越大，对了，学习技能后，要先设置好技能快捷键才能使用。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="24" />
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
			<![CDATA[前往-#NPCLINK<STR:书店老板,NPCKEYNAME:龙城书店>#
  (点击可自动寻路)]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:任务使者,NPCKEYNAME:任务使者>#
  (点击可自动寻路)
  #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="5000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>