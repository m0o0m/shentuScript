<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4038" name="[支线]-驯兽达人（3）" type="2" suggest_level="1" visible="1" next_id="4038">
		<description>
			坐骑开光是驯兽的第二步，之后，也是最后一步，便是提升坐骑的等级了，只需要像装备一样带在身上，便可以在练级中提升坐骑的等级，也可以使用坐骑经验丹提升坐骑的经验。这就是驯兽中的基本了，你还想知道更高级的技巧吗？
		</description>
		<dialogue>
			<brief>坐骑开光是驯兽的第二步，之后，也是最后一步，便是提升坐骑的等级了，只需要像装备一样带在身上，便可以在练级中提升坐骑的等级，也可以使用坐骑经验丹提升坐骑的经验。这就是驯兽中的基本了，你还想知道更高级的技巧吗？</brief>
			<await>与驯兽师对话。</await>
			<finish>真的驯兽达人，一是会不停地开光同一只坐骑，以获得大的属性加成，二则会追求更高级的坐骑。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4037" />
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
			<![CDATA[与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="30000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="20000" >
			<awards>
				<award keyname="中型坐骑经验丹"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>