<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4039" name="[支线]-驯兽达人（3）" type="2" suggest_level="1" visible="1">
		<description>
			重复开光同一只坐骑可以让坐骑拥有更高的属性加成；此外，对高级的、品种珍贵的坐骑的追求也不应该停止。我知道一个获得高级品种的坐骑的一个秘密，你想知道吗？呵呵，真乖巧，那就告诉你了哦，只要将一只普通的坐骑培养到30级，便可获得一只高级坐骑独角兽哦。
		</description>
		<dialogue>
			<brief>重复开光同一只坐骑可以让坐骑拥有更高的属性加成；此外，对高级的、品种珍贵的坐骑的追求也不应该停止。我知道一个获得高级品种的坐骑的一个秘密，你想知道吗？呵呵，真乖巧，那就告诉你了哦，只要将一只普通的坐骑培养到30级，便可获得一只高级坐骑独角兽哦。</brief>
			<await>与驯兽师对话。</await>
			<finish>如果将坐骑的级别提升到更高，还会继续有奖励哦！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4038" />
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
			<![CDATA[#IMAGE1903800054#里有丰富的成就奖励，点击它打开#COLORCOLOR_GOLD#目标系统#COLOREND#了解这些后，继续与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[#IMAGE1903800054#里有丰富的成就奖励，点击它打开#COLORCOLOR_GOLD#目标系统#COLOREND#了解这些后，继续与#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#对话。]]>
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
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>