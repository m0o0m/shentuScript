<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3133" name="[主线]-绝路救援（五）" type="1" suggest_level="1" visible="1" next_id="3134">
		<description>
			已经获得了极品疗伤药，快点去绝路城救助受伤的弓箭手吧！
		</description>
		<dialogue>
			<brief>呐，这是极品疗伤药，拿去吧，服下后只需半个时辰就可以治愈重伤。
\n　　炼制这一枚极品疗伤药，极耗心力，得过段时间才能休养回来了，不过，为了救一名勇敢的战士，这是完全值得的！</brief>
			<await>药呢，我快死了，别开玩笑了！</await>
			<finish>这是什么药？我感到伤势在迅速回复！太好了，我感觉不需要半个时辰，我就可以彻底复原，只要我伤势一好，这点路途我完全可以自己杀出去。
			\n　　勇士，大恩不言谢，你的恩情我记在心里了，以后但有所需，我必舍命以赴。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3132" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="极品疗伤药"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[获得了极品疗伤药，赶快去绝路城东部救助#NPCLINK<STR:受伤的弓箭手,NPCKEYNAME:受伤的弓箭手,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[获得了极品疗伤药，赶快去绝路城东部救助#NPCLINK<STR:受伤的弓箭手,NPCKEYNAME:受伤的弓箭手,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<items>
				<item keyname="极品疗伤药"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>