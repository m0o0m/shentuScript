<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="24" name="新手任务-偶然得到的秘笈" type="1" suggest_level="1" visible="1" next_id="25">
		<description>
			等等，先别走，我想起前些日子，在神歌城当兵的表哥给我捎来一本书！说是在秘道发现的，帮我把书请书店老板帮我忙看看，是不是很值钱的东西？
		</description>
		<dialogue>
			<brief>等等，先别走，我想起前些日子，在神歌城当兵的表哥给我捎来一本书！说是在秘道发现的，帮我把书请书店老板帮我忙看看，是不是很值钱的东西？</brief>
			<await>等等，先别走，我想起前些日子，在神歌城当兵的表哥给我捎来一本书！说是在秘道发现的，帮我把书请书店老板帮我忙看看，是不是很值钱的东西？</await>
			<finish>这就是传说中的秘笈？哈哈哈哈哈，这书我这里就有卖，你要吗？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="23" />
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
			<![CDATA[前往-#NPCLINK<STR:书店老板,NPCKEYNAME:龙城书店>#
  (点击可自动寻路)]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:书店老板,NPCKEYNAME:龙城书店>#
  (点击可自动寻路)
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
		<rewards exp="4000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>