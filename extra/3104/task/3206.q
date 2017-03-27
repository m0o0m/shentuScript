<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3206" name="[主线]-侦查天魔石窟(1)" type="1" suggest_level="1" visible="1" next_id="3207">
		<description>
			虽然已经决定以半月为期的全力防御策略，但西北方的未知让人顾虑重重。我们派出的侦察小队，在对西北方的侦察中，出现大不可接受的伤亡。\n　　你的实力已经非常强大，可以轻松地胜任这一次的侦察。你能接受这一任务，侦查西北吗？\n　　城外的魔化沙虫、魔化蜥蜴、魔化蝎子，你出行之后随便测量下它们的实力吧。
		</description>
		<dialogue>
			<brief>虽然已经决定以半月为期的全力防御策略，但西北方的未知让人顾虑重重。我们派出的侦察小队，在对西北方的侦察中，出现大不可接受的伤亡。\n　　你的实力已经非常强大，可以轻松地胜任这一次的侦察。你能接受这一任务，侦查西北吗？\n　　城外的魔化沙虫、魔化蜥蜴、魔化蝎子，你出行之后随便测量下它们的实力吧。</brief>
			<await>往西北方向前进吧。</await>
			<finish>年青人止步，这里是天魔占据的石窟。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3205" />
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
			<![CDATA[打败15只#LINK<MAP:东临城,POSX:247,POSY:136,STR:魔化沙虫,MOVE:1>##MONSTERGROUP0#，15只#LINK<MAP:东临城,POSX:214,POSY:174,STR:魔化蝎子,MOVE:1>##MONSTERGROUP1#，15只#LINK<MAP:东临城,POSX:253,POSY:205,STR:魔化蜥蜴,MOVE:1>##MONSTERGROUP2#后找神秘老者]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:神秘老者,NPCKEYNAME:神秘老者,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="15" >
					<group_hunting keyname="魔化沙虫" />
				</group>
				<group n="15" >
					<group_hunting keyname="魔化蝎子" />
				</group>
				<group n="15" >
					<group_hunting keyname="魔化蜥蜴" />
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