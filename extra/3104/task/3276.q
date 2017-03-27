<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3276" name="[主线]-藏宝阁守护人的笔记(4)" type="1" suggest_level="1" visible="1" next_id="3277">
		<description>
			知道了，知道了，我会尽快回去的啦，你走吧。顺便跟我的老师说声哦，小诗月才不是因为害怕而不敢去寻找自己的法杖哦！
		</description>
		<dialogue>
			<brief>知道了，知道了，我会尽快回去的啦，你走吧。顺便跟我的老师说声哦，小诗月才不是因为害怕而不敢去寻找自己的法杖哦！</brief>
			<await>快回去跟我的老师说声吧</await>
			<finish>既然你帮了我这么大一个忙，那么，我的研究笔记就暂时先借给你吧。一定要记得还哦！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3275" />
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
			<![CDATA[回到龙城，找到#NPCLINK<STR:藏宝阁守护人,NPCKEYNAME:藏宝阁守护人,MOVE:1>#，告诉他小诗月的消息.]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到龙城，找到#NPCLINK<STR:藏宝阁守护人,NPCKEYNAME:藏宝阁守护人,MOVE:1>#，告诉他小诗月的消息.]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="320000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="幻境引渡者的笔记"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>