<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5047" name="[剧情]-血手的过往（2）" type="2" suggest_level="1" visible="1" next_id="5048">
		<description>
			血手的亲人？血手的亲人已经死于七年前的恶魔袭村事件当中，你看看这满眼的废墟，全是七年前恶魔袭击村子后留下。当时无数的村民被恶魔杀害，只有一小部分逃往了绝路谷，最终去往了巫山城……。\n　　事实上，没有看到过血手的亲人被恶魔杀害，但是，自从血手堕入邪恶之后，村里的人就再也希望看到血手的亲人。如果你想了解更多，巫山城的老兵或许会知道一些。
		</description>
		<dialogue>
			<brief>血手的亲人？血手的亲人已经死于七年前的恶魔袭村事件当中，你看看这满眼的废墟，全是七年前恶魔袭击村子后留下。当时无数的村民被恶魔杀害，只有一小部分逃往了绝路谷，最终去往了巫山城……。\n　　事实上，没有看到过血手的亲人被恶魔杀害，但是，自从血手堕入邪恶之后，村里的人就再也希望看到血手的亲人。如果你想了解更多，巫山城的老兵或许会知道一些。</brief>
			<await>去巫山城找老兵了解情况。</await>
			<finish>你在打听血手的过往吗？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5046" />
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
			<![CDATA[与#NPCLINK<STR:巫山城老兵,NPCKEYNAME:巫山城老兵,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:巫山城老兵,NPCKEYNAME:巫山城老兵,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>