<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#初涉大陆" type="1" suggest_level="1" visible="1" next_id="6">
		<script name="任务执行脚本" />
		<description>
			自古乱世出英雄，看来我们这些老家伙不用打破上古之约了。年轻人，此时正是好时机。既然你有这样的天缘可见并非池中之物，是时候该启程去了。
		</description>
		<dialogue>
			<brief>自古乱世出英雄，看来我们这些老家伙不用打破上古之约了。年轻人，此时正是好时机。既然你有这样的天缘可见并非池中之物，是时候该启程去了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>村长所托之人果然不凡，只是此地动荡已超出所料，这本秘籍便赠与你吧。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="4" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:66,POSY:148,STR:骷髅># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:力壮村民,NPCKEYNAME:矿洞力壮村民>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="骷髅" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="5000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>