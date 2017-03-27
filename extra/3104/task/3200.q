<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3200" name="[主线]-进军东临城" type="1" suggest_level="1" visible="1" next_id="3201">
		<description>
			听说东临城附近的恶魔大军正在肆虐，如果你变得更强大，级别提升到35级，说不定就可以去和恶魔大军战斗了！
		</description>
		<dialogue>
			<brief>听说东临城附近的恶魔大军正在肆虐，如果你变得更强大，级别提升到35级，说不定就可以去和恶魔大军战斗了！</brief>
			<await>等你35级的时候再来找我吧</await>
			<finish>你终于变强大了啊，新的冒险就要开始了！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3147" />
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
			<![CDATA[达到35级时，到东临城找#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:东临城军需官,NPCKEYNAME:东临城军需官,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="35" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>