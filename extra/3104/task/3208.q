<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3208" name="[主线]-侦查天魔石窟(3)" type="1" suggest_level="1" visible="1" next_id="3209">
		<description>
			城里的杂货商正在寻找一位强大的勇士，如果你不是太忙，就去看看吧。
		</description>
		<dialogue>
			<brief>城里的杂货商正在寻找一位强大的勇士，如果你不是太忙，就去看看吧。</brief>
			<await>来得正好，我正有事要找你帮忙。</await>
			<finish>来得正好，我正有事要找你帮忙。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3207" />
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
			<![CDATA[找东临城的#NPCLINK<STR:杂货商,NPCKEYNAME:东临城杂货商,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:杂货商,NPCKEYNAME:东临城杂货商,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>