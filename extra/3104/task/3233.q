<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3233" name="[主线]-可怕的谣言(3)" type="1" suggest_level="1" visible="1" next_id="3234">
		<description>
			你想进入天魔石窟寻找证据？不是我看轻你，天魔石窟的危险超过你的想象，你还没有遇上真正强大的天魔。\n　　如果你能证明你的实力，击败50个天魔先锋，可以告诉你一些真相。
		</description>
		<dialogue>
			<brief>你想进入天魔石窟寻找证据？不是我看轻你，天魔石窟的危险超过你的想象，你还没有遇上真正强大的天魔。\n　　如果你能证明你的实力，击败50个天魔先锋，可以告诉你一些真相。</brief>
			<await>去击败10个天魔先锋后回来见我吧。</await>
			<finish>你的确有几分实力，虽然未必能够应付所有的危险。好吧，我就将真相告诉你。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3232" />
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
			<![CDATA[在天魔石窟三层击败50个#LINK<MAP:天魔石窟3,POSX:38,POSY:38,STR:天魔先锋,MOVE:1>##MONSTERGROUP0#后找神秘老者]]>
			</progressing>
			<accomplishing>
			<![CDATA[与天魔石窟附近的#NPCLINK<STR:神秘老者,NPCKEYNAME:神秘老者,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="50" >
					<group_hunting keyname="天魔先锋1" />
					<group_hunting keyname="天魔先锋2" />
					<group_hunting keyname="天魔先锋说话1" />
					<group_hunting keyname="天魔先锋说话2" />
					<group_hunting keyname="天魔先锋说话3" />
					<group_hunting keyname="天魔先锋说话4" />
					<group_hunting keyname="精英天魔先锋1" />
					<group_hunting keyname="超级天魔先锋1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>