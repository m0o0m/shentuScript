<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5022" name="[剧情]-堕落者血手（2）" type="2" suggest_level="1" visible="1" next_id="5023">
		<description>
			原来你是来打听血手的消息的，嗯，确实有一线小小的线索，可是……虽然你对龙城做出了一些贡献，但我仍然不能确定你是否会坚定不移地守护天藏大陆的正义与和平。\n　　好吧，让我们简单一些，消息是不能免费给你，除非你能提供我一些护甲，嗯，你知道我们的军队战斗很艰苦，那么，3件22级的护甲吧。
		</description>
		<dialogue>
			<brief>原来你是来打听血手的消息的，嗯，确实有一线小小的线索，可是……虽然对龙城做出了一些贡献，但我仍然不能确定你是否会坚定不移地守护天藏大陆的正义与和平。\n　　好吧，让我们简单一些，消息是不能免费给你，除非你能提供我一些护甲，嗯，你知道我们的军队战斗很艰苦，那么，3件22级的护甲吧。</brief>
			<await>准备3件22级的护甲交给老兵。</await>
			<finish>不错，我很满意。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5021" />
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
			<![CDATA[需要提供3件22级护甲#ITEMGROUP0#，比如元灵铠甲、紫绸长袍、天心道衣都可以，男女不限。提醒一句，商店有卖哦。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将准备好的3件护甲交给#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="3" bind_require="2" >
					<group_item keyname="元灵铠甲(男)" />
					<group_item keyname="紫绸长袍(男)" />
					<group_item keyname="天心道衣(男)" />
					<group_item keyname="元灵铠甲(女)" />
					<group_item keyname="紫绸长袍(女)" />
					<group_item keyname="天心道衣(女)" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="21000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>