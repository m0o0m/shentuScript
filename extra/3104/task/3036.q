<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3036" name="[主线]-强大的途径" type="1" suggest_level="1" visible="1" next_id="3037">
		<script name="3036" />
		<description>
			真是一个热心肠的少年啊！那么，让我为你指点一条明路吧。今后的日子要多去找天机老人，他老人家对于指导少年提升实力可是经验丰富哦！
		</description>
		<dialogue>
			<brief>真是一个热心肠的少年啊！那么，让我为你指点一条明路吧。今后的日子要多去找天机老人，他老人家对于指导少年提升实力可是经验丰富哦！</brief>
			<await>与天机老人对话</await>
			<finish>真是一个有趣的少年，从不停下追求强大的脚步！难得品性也是那么富有正义，呵呵，我老人家也不能小气。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3035" />
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
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="29000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>