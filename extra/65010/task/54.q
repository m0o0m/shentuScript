<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="54" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#纷争之城" type="1" suggest_level="1" visible="1" next_id="55">
		<script name="任务执行脚本" />
		<description>
			不过与那座城比起来，龙城确实算比较和谐了。
		</description>
		<dialogue>
			<brief>不过与那座城比起来，龙城确实算比较和谐了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>名曰神歌，那一座城是真正的大陆最高权利与地位的象征。能够成为它的主人，无疑就等于称霸了这片大陆，成为最强的人。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="53" />
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
			<![CDATA[回复 #NPCLINK<STR:夺宝奇兵,NPCKEYNAME:土城夺宝奇兵,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:夺宝奇兵,NPCKEYNAME:土城夺宝奇兵,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>