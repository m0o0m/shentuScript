<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4019" name="[支线]-秘境海妖之争(2)" type="2" suggest_level="1" visible="1" next_id="4020">
		<script name="4019" />
		<description>
			尊敬的人类勇士，你很强大，能否帮我一个小忙，事成之后，我将给予你丰厚的报酬。\n　　我其实是秘境海妖的王子，一直在父母的关爱下长大，可是前不久，我父亲突然去世，母亲按照族规随之殉葬。可是在葬礼之后，我的二叔突然发难，将我父亲的手下全都杀死，并要杀我。我拼死逃出，手下也因此死光了，二叔的手下现正一路追杀过来，如果你能替我传信给我三叔，请他助我，我夺回王位之后，将给你丰厚的报酬。\n　　我的三叔一直隐居在海角秘境看顾幼小海妖，不问世事，所以这次事件被二叔蒙蔽，三叔他也不知道，你可以拿我的信件去找他。\n
		</description>
		<dialogue>
			<brief>尊敬的人类勇士，你很强大，能否帮我一个小忙，事成之后，我将给予你丰厚的报酬。\n　　我其实是秘境海妖的王子，一直在父母的关爱下长大，可是前不久，我父亲突然去世，母亲按照族规随之殉葬。可是在葬礼之后，我的二叔突然发难，将我父亲的手下全都杀死，并要杀我。我拼死逃出，手下也因此死光了，二叔的手下现正一路追杀过来，如果你能替我传信给我三叔，请他助我，我夺回王位之后，将给你丰厚的报酬。\n　　我的三叔一直隐居在海角秘境看顾幼小海妖，不问世事，所以这次事件被二叔蒙蔽，三叔他也不知道，你可以拿我的信件去找他。\n</brief>
			<await>勇士，请帮我挡住追兵，替我送信给三叔吧。\n</await>
			<finish>什么？竟有此事？快将信拿给我看看！\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="4018" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="海妖王子的信"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[帮助#COLORCOLOR_GREENG#海妖王子#COLOREND#消灭海妖追兵#MONSTERGROUP0#和海妖将军#MONSTERGROUP1#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往#LINK<MAP:海底3,POSX:66,POSY:96,STR:秘境沉船三层,MOVE:1>#进入#LINK<MAP:海底3野外,POSX:34,POSY:102,STR:海角秘境,MOVE:1>#，找到#LINK<MAP:海底3野外,POSX:42,POSY:48,STR:海妖三王爷,MOVE:1># 。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="海妖追兵1" />
					<group_hunting keyname="海妖追兵2" />
				</group>
				<group n="1" >
					<group_hunting keyname="海妖将军" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="90000" ingot="0" bind_ingot="0" integral="0" gold="8888" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>