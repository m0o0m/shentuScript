<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3024" name="[主线]-临行前的馈赠(2)" type="1" suggest_level="1" visible="1" next_id="3025">
		<script name="3024" />
		<description>
			咦……你带的东西可不少呀，如果就这样出发，不仅会非常不方便，还很容易丢失。去找找仓库管理员吧，他那里可以帮到你哦。
		</description>
		<dialogue>
			<brief>咦……你带的东西可不少呀，如果就这样出发，不仅会非常不方便，还很容易丢失。去找找仓库管理员吧，他那里可以帮到你哦。</brief>
			<await>去找找仓库管理员吧，他那里可以帮到你哦。</await>
			<finish>身上暂时不用的物品可以存在我这里哦，需要使用时，可以在其它任意仓库管理员处提取，这可是神秘的超时空存储技术哦。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3023" />
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
			<![CDATA[与#NPCLINK<STR:仓库管理员,NPCKEYNAME:新手村仓库管理员左,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:仓库管理员,NPCKEYNAME:新手村仓库管理员左,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="22000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>