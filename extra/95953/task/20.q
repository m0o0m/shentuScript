<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20" name="新手任务-武器店的秘密" type="1" suggest_level="1" visible="1" next_id="23">
		<description>
			有件事想拜托你，能不能替我去药店老板一趟，把这封信给药店老板，信里也没什么？你可一定要
亲手交给她哦！
		</description>
		<dialogue>
			<brief>有件事想拜托你，能不能替我去药店老板一趟，把这封信给药店老板，信里也没什么？你可一定要亲手交给她哦！</brief>
			<await>有件事想拜托你，能不能替我去药店老板一趟，把这封信给药店老板，信里也没什么？你可一定要亲手交给她哦！</await>
			<finish>武器店的信？唉，等了这么久，石头都快开花了，终于等到我家那兄长的信了。
</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="19" />
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
			<![CDATA[前往-#NPCLINK<STR:药店老板,NPCKEYNAME:龙城药店>#
  (点击可自动寻路)]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:药店老板,NPCKEYNAME:龙城药店>#
  (点击可自动寻路)]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>