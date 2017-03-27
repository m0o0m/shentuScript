<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="16" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#初入巫山城" type="1" suggest_level="1" visible="1" next_id="17">
		<script name="任务执行脚本" />
		<description>
			少侠是第一次来巫山城吗？正好可以逛逛巫山城，稍作休整。
		</description>
		<dialogue>
			<brief>少侠是第一次来巫山城吗？正好可以逛逛巫山城，稍作休整。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>终于有人过来了，这几天我这里只有人出去，一个进来的人都没有。看来这次的大动静告一段落了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="15" />
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
			<![CDATA[#NPCLINK<STR:王城守卫,NPCKEYNAME:巫山城王城守卫,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:王城守卫,NPCKEYNAME:巫山城王城守卫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>