<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3289" name="[主线]-水晶石的秘密(1)" type="1" suggest_level="1" visible="1" next_id="3290">
		<description>
			虽然看起来这种蓝色宝石只是一块纯粹的宝石，但以我识遍天下奇珍的眼光，这种蓝色宝石应该有着一个大秘密。如果你想研究这些，不妨去向天机老人请教。
		</description>
		<dialogue>
			<brief>虽然看起来这种蓝色宝石只是一块纯粹的宝石，但以我识遍天下奇珍的眼光，这种蓝色宝石应该有着一个大秘密。如果你想研究这些，不妨去向天机老人请教。</brief>
			<await>你应该去找天机老人</await>
			<finish>这是一位老人送给你的吗？确实非常的漂亮，不过，不能说它是宝石，实际上，这应该是某种力量的结晶。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3288" />
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
			<![CDATA[去龙城找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#询问蓝色宝石的事情。]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城找#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#询问蓝色宝石的事情。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="180000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>