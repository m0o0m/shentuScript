<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3109" name="[主线]-查询军需迟滞原因" type="1" suggest_level="1" visible="1" next_id="3110">
		<script name="3109" />
		<description>
			龙城正处于重建之中，每日都需要的海量的物资。但是，这两天以来军需官迟迟没有出现，所需的物质已经有两天没有送来了，前往军需官处，看看到底出了什么状况，龙城军需官在西南的密林之中
		</description>
		<dialogue>
			<brief>你也看到了，龙城正处于重建之中，每日都需要的海量的物资。但是，这两天以来军需官迟迟没有出现，所需的物质已经有两天没有送来了，你能前往军需官处，看看到底出了什么状况吗？龙城军需官在西南的密林之中，请抓紧时间前往吧！</brief>
			<await>谢谢你啊</await>
			<finish>我们这里储存着的物资，大概只够七天之用。在重建龙城中，最重要的物资来源是巫山城的支持。现在的问题是，我们已经有三天没有收到巫山城输送过来的物资了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3108" />
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
			<![CDATA[去龙城西南方的#NPCLINK<STR:龙城军需官,NPCKEYNAME:龙城军需官,MOVE:1>#那里查看物资迟滞到来的原因]]>
			</progressing>
			<accomplishing>
			<![CDATA[去龙城西南方的#NPCLINK<STR:龙城军需官,NPCKEYNAME:龙城军需官,MOVE:1>#那里查看物资迟滞到来的原因]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="15000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>