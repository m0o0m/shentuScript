<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="61" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#初入天荒" type="1" suggest_level="1" visible="1" next_id="62">
		<script name="61q" />
		<description>
			既然你想去除乱，我帮你一把吧。
		</description>
		<dialogue>
			<brief>既然你想去除乱，我帮你一把吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>一场血战之后，终于稳住了我们的阵脚，只不过，这种代价，还是太大了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="60" />
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
			<![CDATA[回复 #NPCLINK<STR:天荒阵守卫,NPCKEYNAME:天荒阵守卫一层,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:天荒阵守卫,NPCKEYNAME:天荒阵守卫一层,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="1" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>