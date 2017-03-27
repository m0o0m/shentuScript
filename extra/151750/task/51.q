<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="51" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#初入龙城" type="1" suggest_level="1" visible="1" next_id="52">
		<script name="51q" />
		<description>
			此番你要去的地方是龙城。那可是一个曾经最辉煌的城市之一，当年数以万计的大陆顶尖人士云集的地方。好了，不啰嗦了。走吧！
		</description>
		<dialogue>
			<brief>此番你要去的地方是龙城。那可是一个曾经最辉煌的城市之一，当年数以万计的大陆顶尖人士云集的地方。好了，不啰嗦了。走吧！</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>你是新来的吧？我说怎么没有见过，第一次来龙城吧？</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="50" />
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
			<![CDATA[回复 #NPCLINK<STR:谁与争锋,NPCKEYNAME:土城谁与争锋,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:谁与争锋,NPCKEYNAME:土城谁与争锋,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>