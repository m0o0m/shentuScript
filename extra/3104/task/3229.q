<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3229" name="[主线]-安息吧，英雄！" type="1" suggest_level="1" visible="1" next_id="3230">
		<description>
			人类高手的覆灭，给我们造成了非常严重的损失，无数高级技能再也没有得到传承，当然这事也不是我找你的理由，找回高级技能的传承，是我们所有人的努力方向，而我现在拜托你的事，是去找回这些英雄们的尸骨。\n　　我们不应该让他们的尸骨遗落恶魔腐臭之地，否则，心中真是愧疚难安。
		</description>
		<dialogue>
			<brief>人类高手的覆灭，给我们造成了非常严重的损失，无数高级技能再也没有得到传承，当然这事也不是我找你的理由，找回高级技能的传承，是我们所有人的努力方向，而我现在拜托你的事，是去找回这些英雄们的尸骨。\n　　我们不应该让他们的尸骨遗落恶魔腐臭之地，否则，心中真是愧疚难安。</brief>
			<await>请尽量找够10份英雄的尸骨吧。</await>
			<finish>安息吧，英雄！\n　　对了，提醒你一声，当年那些高手们带走了无数宫廷珍藏的装备哦……，你懂的，虽然时间已经久远，但是，真正顶级的装备，可不会损坏哦。也许，它们已经被天魔们藏了起来……</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3228" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="天魔奴仆1" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔奴仆2" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔守卫1" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔守卫2" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔奴仆说话1" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔奴仆说话2" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔奴仆说话3" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔奴仆说话4" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔守卫说话1" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔守卫说话2" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔守卫说话3" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="天魔守卫说话4" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="超级天魔奴仆1" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="超级天魔守卫1" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="精英天魔奴仆1" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
				<trophy monster="精英天魔守卫1" item="英雄的尸骨" min_num="1" max_num="1" bind_require="2" limit="10" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[在天魔石窟一层击败任意怪物，获取1份#LINK<MAP:天魔石窟1,POSX:56,POSY:148,STR:英雄的尸骨,MOVE:1>##ITEMGROUP0#后找龙城的天机老人]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="英雄的尸骨" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="250000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>