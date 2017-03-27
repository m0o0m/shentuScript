<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60006" name="[支线]-争锋武斗场" type="2" suggest_level="1" visible="1">
		<description>
			“十步杀一人，千里不留行。事了拂衣去，深藏功与名。”是英雄就当进入武斗场较量一翻，我将你送进去后就会在武斗场中等你，你进来了再找我吧。
		</description>
		<dialogue>
			<brief>“十步杀一人，千里不留行。事了拂衣去，深藏功与名。”是英雄就当进入武斗场较量一翻，我将你送进去后就会在武斗场中等你，你进来了再找我吧。</brief>
			<await>哈哈，英雄，英雄</await>
			<finish>哈哈哈哈，果然是英雄，好胆量，过一会儿地上就会出现许多极品装备，你可要快速获取哦。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="23" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[武斗场活动开启时，进入#COLORCOLOR_YELLOW#武斗场#COLOREND#与场内的#NPCLINK<STR:武斗场使者,NPCKEYNAME:武斗场使者,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[武斗场活动开启时，进入#COLORCOLOR_YELLOW#武斗场#COLOREND#与场内的#NPCLINK<STR:武斗场使者,NPCKEYNAME:武斗场使者,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>