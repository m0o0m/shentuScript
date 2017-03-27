<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4022" name="[支线]-被干扰的研究" type="2" suggest_level="1" visible="1">
		<description>
			在海角秘境中隐藏着五行之水灵力的秘密，为了揭开这个秘密，我已经在这里研究了很久。但是，这段时间一直有大量的海魔爪牙对我发动袭击，严重干扰了我的研究。\n　　勇士，希望你能够为他们肃清这些海魔爪牙，杀死20只海魔侍从和20只海魔护卫！
		</description>
		<dialogue>
			<brief>在海角秘境中隐藏着五行之水灵力的秘密，为了揭开这个秘密，我已经在这里研究了很久。但是，这段时间一直有大量的海魔爪牙对我发动袭击，严重干扰了我的研究。\n　　勇士，希望你能够为他们肃清这些海魔爪牙，杀死20只海魔侍从和20只海魔护卫！</brief>
			<await>请去消灭那些海魔侍从和海魔护卫吧！\n</await>
			<finish>它们助纣为虐，凶残无比，你能消灭它们实在是太好了。</finish>
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
			<![CDATA[消灭20只#LINK<MAP:海底4,POSX:140,POSY:70,STR:海魔侍从,MOVE:1>##MONSTERGROUP0#和20只#LINK<MAP:海底4,POSX:140,POSY:70,STR:海魔护卫,MOVE:1>##MONSTERGROUP1#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[你已经消灭了#COLORCOLOR_GREENG#海魔侍从#COLOREND#和#COLORCOLOR_GREENG#海魔护卫#COLOREND#，回沉船一层找#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#吧！]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="海魔侍从1" />
					<group_hunting keyname="超级海魔侍从1" />
					<group_hunting keyname="精英海魔侍从1" />
				</group>
				<group n="20" >
					<group_hunting keyname="海魔护卫1" />
					<group_hunting keyname="超级海魔护卫1" />
					<group_hunting keyname="精英海魔护卫1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="8888" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>