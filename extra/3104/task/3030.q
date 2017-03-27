<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3030" name="[主线]-装备的强化" type="1" suggest_level="1" visible="1" next_id="3031">
		<script name="3030" />
		<description>
			少年人不要急着走！呵呵，不要认为我那么小气哦，只是跟你开个玩笑。如果想尽快提升实力，你需要了解一些装备改造强化的情报。你愿意听听老头子的唠叨吗？
		</description>
		<dialogue>
			<brief>少年人不要急着走！呵呵，不要认为我那么小气哦，只是跟你开个玩笑。如果想尽快提升实力，你需要了解一些装备改造强化的情报。你愿意听听老头子的唠叨吗？</brief>
			<await>继续与装备大师对话！</await>
			<finish>装备的属性其实是可以继续提升的，这需要一种灵元珠的材料。\n　　如果你有封印鉴定符，还可以解开装备的封印，这也是一种提升装备属性的方法哦。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3028" />
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
			<![CDATA[与#NPCLINK<STR:装备大师,NPCKEYNAME:装备大师,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:装备大师,NPCKEYNAME:装备大师,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="28800" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>