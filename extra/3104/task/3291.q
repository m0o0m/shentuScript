<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3291" name="[主线]-水晶石的秘密(3)" type="1" suggest_level="1" visible="1" next_id="3292">
		<description>
			某种力量如果浓度达到一定程度，会在某种神奇的规则下凝聚成晶体。我相信这种晶体也是这样形成。\n　　根据我的感应，晶体之内蕴含的力量，似乎与引灵寺内的力量有着某种相似性，如果你去找魔语尊者，应该会有更多收获！
		</description>
		<dialogue>
			<brief>某种力量如果浓度达到一定程度，会在某种神奇的规则下凝聚成晶体。我相信这种晶体也是这样形成。\n　　根据我的感应，晶体之内蕴含的力量，似乎与引灵寺内的力量有着某种相似性，如果你去找魔语尊者，应该会有更多收获！</brief>
			<await>魔语尊者会更加了解这种蓝色晶体</await>
			<finish>很高兴再次见到你。关于你的询问，即使没有幻境引渡者的介绍，我也非常乐意为你解惑。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3290" />
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
			<![CDATA[与龙城#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#谈谈]]>
			</progressing>
			<accomplishing>
			<![CDATA[与龙城#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#谈谈]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>