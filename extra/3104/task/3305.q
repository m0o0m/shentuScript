<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3305" name="[主线]-大师的礼物" type="1" suggest_level="1" visible="1" next_id="3306">
		<description>
			大师倒也有趣，他虽然嘴上不承认，可以我却知道他心底肯定不这么想。这可是大陆最漂亮的项链呢，如果不是对驯兽师大有情意，他怎么会想起这件礼物呢。\n　　那么，为了一段美妙的爱情，快去送给驯兽师吧。
		</description>
		<dialogue>
			<brief>大师倒也有趣，他虽然嘴上不承认，可以我却知道他心底肯定不这么想。这可是大陆最漂亮的项链呢，如果不是对驯兽师大有情意，他怎么会想起这件礼物呢。\n　　那么，为了一段美妙的爱情，快去送给驯兽师吧。</brief>
			<await>快去找驯兽师吧！</await>
			<finish>好漂亮的项链！这可不是稀世之珍呀，他既然送了我珍贵的项链，相信他对我并非全无情意。你说是不是？</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="45" max_num="100" />
			<prologues>
				<group>
					<prologue id="3297" />
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
			<![CDATA[将项链交给#NPCLINK<STR:驯兽师,NPCKEYNAME:驯兽师,MOVE:1>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将项链交给#NPCLINK<STR:驯兽师,NPCKEYNAME:驯兽师,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="星光灿烂"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="240000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="灵元珠"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>