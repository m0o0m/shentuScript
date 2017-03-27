<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4018" name="[支线]-秘境海妖之争(1)" type="2" suggest_level="1" visible="1" next_id="4019">
		<description>
			海妖是一个神奇的种族，她小时候雌雄同体，喜欢与比较相像的歌妖混居在一起，长大后，她们就会变成海魔，自愿成为雌性的海魔侍从或者是雄性的海魔护卫。\n　　你有没有注意到入口处的海妖王子？他（她）似乎受了重伤，可惜我也伤势在身，不敢轻举妄动，如果你对海妖一族有兴趣的话，去找他（她）探个究竟吧。
		</description>
		<dialogue>
			<brief>海妖是一个神奇的种族，她小时候雌雄同体，喜欢与比较相像的歌妖混居在一起，长大后，她们就会变成海魔，自愿成为雌性的海魔侍从或者是雄性的海魔护卫。\n　　你有没有注意到入口处的海妖王子？他（她）似乎受了重伤，可惜我也伤势在身，不敢轻举妄动，如果你对海妖一族有兴趣的话，去找他（她）探个究竟吧。</brief>
			<await>去找找秘境入口处的海妖王子问问~</await>
			<finish>是的，我在寻找帮助！虽然我是一只海妖，但我对人类没有敌意，你愿意帮我吗？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[与海角秘境入口处的#NPCLINK<STR:海妖王子,NPCKEYNAME:海妖王子,MOVE:1>#谈谈]]>
			</progressing>
			<accomplishing>
			<![CDATA[与海角秘境入口处的#NPCLINK<STR:海妖王子,NPCKEYNAME:海妖王子,MOVE:1>#谈谈]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>