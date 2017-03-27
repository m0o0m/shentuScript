<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3137" name="[主线]-修补天荒阵封印" type="1" suggest_level="1" visible="1" next_id="3138">
		<description>
			天荒阵祭坛经过这次动荡破坏不堪，封印必须尽快修补好以防止里面的妖魔破阵而出，天荒阵的守卫们正在那里忙碌着，去看看他们有没有什么需要帮助的。
		</description>
		<dialogue>
			<brief>天荒阵祭坛的封印必须尽快修补好，天荒阵的守卫们正在那里忙碌着，你去看看他们有没有什么需要，如果有，就竭尽你所能帮助他们吧</brief>
			<await>天荒阵守卫都很忙的，你也别闲着了，快去帮忙呀</await>
			<finish>是天机老人推荐来的勇士吗？看起来很不错的样子。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3136" />
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
			<![CDATA[去天荒阵找#NPCLINK<STR:天荒阵守卫,NPCKEYNAME:天荒阵守卫,MOVE:1>#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去天荒阵找#NPCLINK<STR:天荒阵守卫,NPCKEYNAME:天荒阵守卫,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<rewards exp="24000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>