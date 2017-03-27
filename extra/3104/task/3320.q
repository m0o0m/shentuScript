<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3320" name="[主线]-奇怪的木牌" type="1" suggest_level="1" visible="1" next_id="3321">
		<script name="3320" />
		<description>
			虽然我们的进攻遭遇了失败,但在进攻三层的时候，我发现了一块奇怪的木牌。由于战斗过于激烈，我无暇仔细查看。如果你能找到，也许会发现一个大秘密！
		</description>
		<dialogue>
			<brief>虽然我们的进攻遭遇了失败,但在进攻三层的时候，我发现了一块奇怪的木牌。由于战斗过于激烈，我无暇仔细查看。如果你能找到，也许会发现一个大秘密！</brief>
			<await>快去吧，找到那块木牌要点时间！</await>
			<finish>j*u444^^k@Ehh****^……</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3319" />
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
			<![CDATA[在沉船三层，找到远征军统领说的#NPCLINK<STR:一块木牌,NPCKEYNAME:木牌,MOVE:1>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[在沉船三层，找到远征军统领说的#NPCLINK<STR:一块木牌,NPCKEYNAME:木牌,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>