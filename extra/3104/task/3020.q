<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3020" name="[主线]-了解技能(2)" type="1" suggest_level="1" visible="1" next_id="3021">
		<script name="3020" />
		<description>
			这是一件很不幸的事情！在我这里，只有一些低级、中级的技能书。想要得到更高级更神秘的技能，只能从怪物的巢穴中，从一些遗迹中去寻找了。\n　　为了人类的最终复兴，你愿意承担寻找高级技能传承的使命吗？当然，你现在实力太弱，只需将此使命放在心里即可。
		</description>
		<dialogue>
			<brief>这是一件很不幸的事情！在我这里，只有一些低级、中级的技能书。想要得到更高级更神秘的技能，只能从怪物的巢穴中，从一些遗迹中去寻找了。\n　　为了人类的最终复兴，你愿意承担寻找高级技能传承的使命吗？当然，你现在实力太弱，只需将此使命放在心里即可。</brief>
			<await>~~</await>
			<finish>很不错的少年！看看我商店里有没有你能学习的技能吧。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3018" />
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
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:新手村书商左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:书商,NPCKEYNAME:新手村书商左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4700" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>