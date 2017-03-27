<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="22" name="新手任务-走路的技巧" type="1" suggest_level="1" visible="1" next_id="10">
		<description>
			下面我要告诉你走路的技巧,点击鼠标左键可以行走，如果你赶时间，点击鼠标右键可以跑动。当然你想偷懒，直接点带下划线的人名也可以自动跑过去.
		</description>
		<dialogue>
			<brief>下面我要告诉你走路的技巧,点击鼠标左键可以行走，如果你赶时间，点击鼠标右键可以跑动。当然你想偷懒，直接点带下划线的人名也可以自动跑过去。当HP（生命值）低于10点，或者背包负重满了，是没法跑步的。</brief>
			<await>下面我要告诉你走路的技巧,点击鼠标左键可以行走，如果你赶时间，点击鼠标右键可以跑动。当然你想偷懒，直接点带下划线的人名也可以自动跑过去。当HP（生命值）低于10点，或者背包负重满了，是没法跑步的。</await>
			<finish>下面我要告诉你走路的技巧,点击鼠标左键可以行走，如果你赶时间，点击鼠标右键可以跑动。当然你想偷懒，直接点带下划线的人名也可以自动跑过去。当HP（生命值）低于10点，或者背包负重满了，是没法跑步的。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="21" />
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
			<![CDATA[前往-#NPCLINK<STR:新手指导员,NPCKEYNAME:新手指导员>#
 （点击可自动寻路）
 #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:新手指导员,NPCKEYNAME:新手指导员>#
 （点击可自动寻路）
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
		<rewards exp="20" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>