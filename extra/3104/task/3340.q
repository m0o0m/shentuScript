<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3340" name="[主线]-运转的五行法阵" type="1" suggest_level="1" visible="1" next_id="3344">
		<script name="3340" />
		<description>
			五行阵旗全部就位，五行轮转之阵已经开始动作！你快回去转告远征军统领吧，请他们等待一段时间，让五行法阵消弥秘境中的水之力后，就可以发动正式的进攻了！
		</description>
		<dialogue>
			<brief>五行阵旗全部就位，五行轮转之阵已经开始动作！你快回去转告远征军统领吧，请他们等待一段时间，让五行法阵消弥秘境中的水之力后，就可以发动正式的进攻了！</brief>
			<await>将五行法阵已经启动的消息告诉远征军统领吧~</await>
			<finish>我已经感觉到阵法已经运转，现在海角秘境中的水行之力已经开始消弥。多亏了你的努力，这是给你的奖励！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3339" />
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
			<![CDATA[回到海底入口处,告诉#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#五行之阵已经开始运转]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到海底入口处,告诉#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#五行之阵已经开始运转]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="515000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>