<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="29" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#黑暗降临" type="1" suggest_level="1" visible="1" next_id="30">
		<script name="任务执行脚本" />
		<description>
			都准备好了吗？一切都安排妥当了。那便出发吧！
		</description>
		<dialogue>
			<brief>都准备好了吗？一切都安排妥当了。那便出发吧！</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>总算来了帮手，我也可以缓口气了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="28" />
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
			<![CDATA[回复 #NPCLINK<STR:毒虫洞守卫,NPCKEYNAME:蜈蚣洞守卫一层,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:毒虫洞守卫,NPCKEYNAME:蜈蚣洞守卫一层,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" ingot="0" bind_ingot="500" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="4" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>