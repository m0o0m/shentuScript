<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3212" name="[主线]-奇特的物质(4)" type="1" suggest_level="1" visible="1" next_id="3213">
		<description>
			你一定要去东临城军需官处哦，这段时间以来他为了向东临城提供足够的食物，可是不得安宁。真让人为他担心呀！你可不要误会哦，他可是我哥哥呢。
		</description>
		<dialogue>
			<brief>你一定要去东临城军需官处哦，这段时间以来他为了向东临城提供足够的食物，可是不得安宁。真让人为他担心呀！你可不要误会哦，他可是我哥哥呢。</brief>
			<await>军需官在西南方的城门外呢。</await>
			<finish>你来了啊，我正想找人帮忙呢</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3211" />
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
			<![CDATA[与#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>