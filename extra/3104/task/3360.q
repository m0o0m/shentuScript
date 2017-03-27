<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3360" name="[主线]-修复完的神剑" type="1" suggest_level="1" visible="1" next_id="">
		<description>
			这把剑已经修复好了！真是了不得的名剑啊，寒气森森，剑气逼人，我分明听到到这把剑痛饮恶魔之血的呐喊！……给你吧，你拿去还给他的主人吧。
		</description>
		<dialogue>
			<brief>这把剑已经修复好了！真是了不得的名剑啊，寒气森森，剑气逼人，我分明听到到这把剑痛饮恶魔之血的呐喊！……给你吧，你拿去还给他的主人吧。</brief>
			<await>快将修复好的剑交给他的主人吧!</await>
			<finish>谢谢你！我一定会让此剑饱饮恶魔的鲜血！这是一点心意，惭愧，不足你对我帮助的万一呀！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3358" />
				</group>
			</prologues>
			<jobs>
				<job id="2" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="神剑"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[将修复好的神剑交给沉船四层的#NPCLINK<STR:冒险者,NPCKEYNAME:冒险者,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[将修复好的神剑交给沉船四层的#NPCLINK<STR:冒险者,NPCKEYNAME:冒险者,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="火灵项链"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>