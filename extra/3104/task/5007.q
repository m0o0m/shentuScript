<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5007" name="[剧情]-雪域天狼的传说（7）" type="2" suggest_level="1" visible="1">
		<description>
			心情好呀，那就跟你说说白狼的故事吧。别看锁魔宫内的白狼嚣张，其实不过是利用雪域天狼的精血制造出来的半成品而已。\n　　不要惊讶，小白狼寻找的父亲其实便是雪域天狼。雪域天狼已经超越了凡俗，不可能轻易出现在大陆，除非成为某个强大英雄的坐骑！\n　　别多想了，想捕捉雪域天狼成为坐骑，你还要提升实力啊！将这消息告诉小白狼吧！希望它能顺利成长，这大陆就会出现更多的雪域天狼。
		</description>
		<dialogue>
			<brief>心情好呀，那就跟你说说白狼的故事吧。别看锁魔宫内的白狼嚣张，其实不过是利用雪域天狼的精血制造出来的半成品而已。\n　　不要惊讶，小白狼寻找的父亲其实便是雪域天狼。雪域天狼已经超越了凡俗，不可能轻易出现在大陆，除非成为某个强大英雄的坐骑！\n　　别多想了，想捕捉雪域天狼成为坐骑，你还要提升实力啊！将这消息告诉小白狼吧！希望它能顺利成长，这大陆就会出现更多的雪域天狼。</brief>
			<await>将这消息告诉小白狼吧！</await>
			<finish>我的父亲是雪域天狼！……我知道了，谢谢你，人类！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5006" />
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
			<![CDATA[将打听到的消息，告诉#NPCLINK<STR:小白狼,NPCKEYNAME:小白狼,MOVE:1>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将打听到的消息，告诉#NPCLINK<STR:小白狼,NPCKEYNAME:小白狼,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>