<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="25" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#委以重任" type="1" suggest_level="1" visible="1" next_id="26">
		<script name="任务执行脚本" />
		<description>
			自古英雄出少年，现在可是你建功立业的好时机哦。不瞒你说，目前出现异况的不只一地，希望你能前去探查，朕对你期望可是很高哦，你不会让朕失望吧？
		</description>
		<dialogue>
			<brief>自古英雄出少年，现在可是你建功立业的好时机哦。不瞒你说，目前出现异况的不只一地，希望你能前去探查，朕对你期望可是很高哦，你不会让朕失望吧？</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>恭喜少侠！少侠年纪轻轻便能得到国王赏识，真的让我们好生羡慕啊。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="24" />
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
			<![CDATA[回复 #NPCLINK<STR:皇宫守卫,NPCKEYNAME:巫山城皇宫守卫,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:皇宫守卫,NPCKEYNAME:巫山城皇宫守卫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>