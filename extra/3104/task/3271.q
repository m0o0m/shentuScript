<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3271" name="[主线]-绝望的士兵（1）" type="1" suggest_level="1" visible="1" next_id="3272">
		<description>
			因为天魔神的一次次死而复生，许多士兵失去了战胜恶魔的勇气和自信。必须解决这个问题，否则士气下降的东临城，会在恶魔的侵袭下毁灭！
		</description>
		<dialogue>
			<brief>“那群胆小鬼，他们害怕了恶魔！真是不可饶恕！”\n　　你还在问我在生气什么？那群胆小鬼，因为天魔神的一次次死而复生，他们失去了战胜天魔神的勇气和自信！你说，我能不生气吗？\n　　你问是谁在害怕？你最好去问问东临城那些懦夫！</brief>
			<await>快去吧，局势已经不能再缓了！</await>
			<finish>虽然我感到耻辱，但是，我们确实感到了害怕。\n　　我们付出牺牲击杀天魔神已经有无数次了，最后仍是看到它一次次地复活。而我们死去的兄弟却永远地死去了！最终有一天，我们都会被恶魔杀死，而我们无可奈何。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去东临城外找#NPCLINK<STR:百夫长,NPCKEYNAME:百夫长,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去东临城外找#NPCLINK<STR:百夫长,NPCKEYNAME:百夫长,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="7500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>