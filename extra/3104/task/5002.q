<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5002" name="[剧情]-雪域天狼的传说（2）" type="2" suggest_level="1" visible="1" next_id="5003">
		<description>
			你想要打听小白狼的故事？既然杂货商已经证明你并非一个邪恶的人，告诉你小白狼的事情也并非不可以。\n　　那是一只充满灵性和爱的白狼，虽然它还小，但是，它的实力也不可小觑，受伤的人类遇上它，它会保护着此人离开森林。你想要去见见它？我不知道它具体在哪，但好运时或许会遇上！
		</description>
		<dialogue>
			<brief>你想要打听小白狼的故事？既然杂货商已经证明你并非一个邪恶的人，告诉你小白狼的事情也并非不可以。\n　　那是一只充满灵性和爱的白狼，虽然它还小，但是，它的实力也不可小觑，受伤的人类遇上它，它会保护着此人离开森林。你想要去见见它？我不知道它具体在哪，但好运时或许会遇上！</brief>
			<await>在林中找到一只小白狼。</await>
			<finish>从远方来森林的客人，你好。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5001" />
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
			<![CDATA[在森林中找到#NPCLINK<STR:小白狼,NPCKEYNAME:小白狼>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[在森林中找到#NPCLINK<STR:小白狼,NPCKEYNAME:小白狼>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>