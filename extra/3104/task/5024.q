<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5024" name="[剧情]-堕落者血手（4）" type="2" suggest_level="1" visible="1" next_id="5023">
		<description>
			既然你不想离开，那就随你啦，我正打算睡上一觉呢。唉，春乏秋困夏打盹，冬天睡觉不过瘾！大睡解大愁，小睡解小愁……\n　　啊！那边来了什么人？不好……年青的勇士，看到那边的来人了吗？那是一群堕落的罪人，如果你能让他们退走，我保证会给你血手的消息哦！
		</description>
		<dialogue>
			<brief>既然你不想离开，那就随你啦，我正打算睡上一觉呢。唉，春乏秋困夏打盹，冬天睡觉不过瘾！大睡解大愁，小睡解小愁……\n　　啊！那边来了什么人？不好……年青的勇士，看到那边的来人了吗？那是一群堕落的罪人，如果你能让他们退走，我保证会给你血手的消息哦！</brief>
			<await>击杀5名堕落者，惊退他们。</await>
			<finish>呼！他们退走了！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5023" />
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
			<![CDATA[为了惊退前来为难蟑螂的堕落者，需要至少击杀5名#LINK<MAP:龙城,POSX:69,POSY:380,STR:堕落者,MOVE:1>##MONSTERGROUP0#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:游荡者蟑螂,NPCKEYNAME:游荡者蟑螂,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="堕落者1" />
					<group_hunting keyname="堕落者2" />
					<group_hunting keyname="堕落者3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>