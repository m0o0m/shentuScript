<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="45" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#恐怖的数量" type="1" suggest_level="1" visible="1" next_id="46">
		<script name="任务执行脚本" />
		<description>
			也不知道哪里冒出来的，这么多，这个数量还在不断的增加。目前我们只能想尽一切办法去控制它们的数量，否则，这里所有的人都会死！
		</description>
		<dialogue>
			<brief>也不知道哪里冒出来的，这么多，这个数量还在不断的增加。目前我们只能想尽一切办法去控制它们的数量，否则，这里所有的人都会死！</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>感谢大侠救命之恩。嗯……其实我也只是混碗饭吃，也不知道是谁把我推进来的。这里……好可怕……</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="10000" />
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
			<![CDATA[#LINK<MAP:猪洞二层,POSX:47,POSY:77,STR:食人恶魔,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:冒牌道人,NPCKEYNAME:食人二冒牌道人,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="15" >
					<group_hunting keyname="食人恶魔" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="160000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>