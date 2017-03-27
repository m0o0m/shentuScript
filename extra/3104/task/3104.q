<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3104" name="[主线]-达到25级" type="1" suggest_level="1" visible="1" next_id="3106">
		<script name="3104" />
		<description>
			实力的提升之路充满艰辛，你必须多多战斗才能进步更多。！如果你期待更精彩的冒险，那么，当你实力提升到25后，不妨回到龙城找天机老人，他会告诉你新的任务。
		</description>
		<dialogue>
			<brief>实力的提升之路充满艰辛，你必须多多战斗才能进步更多。！如果你期待更精彩的冒险，那么，当你实力提升到25后，不妨回到龙城找天机老人，他会告诉你新的任务。</brief>
			<await>你现在实力还太弱了，等到25级再来吧！你可以多去封魔阵、试炼场、秘海封印和木人巷锻炼实力哈！</await>
			<finish>呵呵，这么快就25级啦！你的成长速度可真快呀！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3155" />
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
			<![CDATA[达到#COLORCOLOR_YELLOW#25级#COLOREND#后去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[恭喜你已经达到#COLORCOLOR_YELLOW#25级#COLOREND#了，快去找龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#吧，他好象有什么事情]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="25" max_num="200" />
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