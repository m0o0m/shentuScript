<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3100" name="[主线]-危难之城" type="1" suggest_level="1" visible="1" next_id="3101">
		<description>
			龙城是一座战火之城，在这里，有着很多镇压恶魔的封印。同时，龙城也是一座危难之城，它曾经贵为帝国国都，但却被无情的战火摧毁，并且在以后的岁月中一直承受恶魔的袭击。\n　　这里非常需要更多人的帮助，目前，封魔阵引路人向我发出了求助，你可以去找他。
		</description>
		<dialogue>
			<brief>龙城是一座战火之城，在这里，有着很多镇压恶魔的封印。同时，龙城也是一座危难之城，它曾经贵为帝国国都，但却被无情的战火摧毁，并且在以后的岁月中一直承受恶魔的袭击。\n　　这里非常需要更多人的帮助，目前，封魔阵引路人向我发出了求助，你可以去找他。</brief>
			<await>你没有足够的实力~,加油吧!</await>
			<finish>是的，我这里有麻烦，我需要一位勇士的帮助!</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3047" />
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
			<![CDATA[与龙城#NPCLINK<STR:封魔阵引路人,NPCKEYNAME:封魔阵引路人,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城#NPCLINK<STR:封魔阵引路人,NPCKEYNAME:封魔阵引路人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="38000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>