<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3038" name="[主线]-毒蛇之灾(1)" type="1" suggest_level="1" visible="1" next_id="3039">
		<script name="3038" />
		<description>
			去绝路谷找当地的杂货商人打听情况。
		</description>
		<dialogue>
			<brief>由于城外的野兽动物都发生了变异，我非常担心那些深陷野外的人们！你能否替我去一趟绝路谷，打探绝路谷的情况？\n　　绝路谷是巫山城东北方向的一片山谷，以前那是兽人活动的范围，因为邪庙的入侵，绝路山脉化为废墟荒地。如今谷中湿气深重，成了毒蛇的乐园。\n　　你去到那里之后，可以去找当地的杂货商人打听。</brief>
			<await>去绝路谷，寻找绝路谷的杂货商了解情况。</await>
			<finish>啊，巫山城终于派人来了，真是太好了！我就知道巫山城不会放弃我们的！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3037" />
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
			<![CDATA[与#NPCLINK<STR:绝路谷杂货商,NPCKEYNAME:绝路谷杂货商,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:绝路谷杂货商,NPCKEYNAME:绝路谷杂货商,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>