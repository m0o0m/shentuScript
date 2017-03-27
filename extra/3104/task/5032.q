<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5032" name="[支线]-绝路城守卫的请求（2）" type="2" suggest_level="1" visible="1" next_id="5033">
		<description>
			其它事情先别说，我受了点伤，你看，我手上的大刀有时会突然掉在地上，因为我浑身无力，先给点药治伤！嗯，来5瓶强效回阳水吧。
		</description>
		<dialogue>
			<brief>其它事情先别说，我受了点伤，你看，我手上的大刀有时会突然掉在地上，因为我浑身无力，先给点药治伤！嗯，来5瓶强效回阳水吧。</brief>
			<await>向绝路城守卫提供5瓶强效回阳水。</await>
			<finish>谢谢了！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5031" />
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
			<![CDATA[为治疗#NPCLINK<STR:绝路城守卫,NPCKEYNAME:绝路城守卫,MOVE:1>#的伤势，需提供5瓶强效回阳水#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[将带来的强效回阳水交给#NPCLINK<STR:绝路城守卫,NPCKEYNAME:绝路城守卫,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="5" bind_require="2" >
					<group_item keyname="强效太阳水" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="85000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="11000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>