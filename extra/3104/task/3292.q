<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3292" name="[主线]-水晶石的秘密(4)" type="1" suggest_level="1" visible="1" next_id="3301">
		<script name="3292" />
		<description>
			这枚晶体内的力量，与引灵寺内的力量其实差异很大，但是，两者之间有很深的渊源……\n　　我需要更多的蓝色晶体进行研究。我能否请求你去寻找更多的蓝色晶体？你所遇上的老人，不是说从海中怪物的身上可以得到吗？
		</description>
		<dialogue>
			<brief>这枚晶体内的力量，与引灵寺内的力量其实差异很大，但是，两者之间有很深的渊源……\n　　我需要更多的蓝色晶体进行研究。我能否请求你去寻找更多的蓝色晶体？你所遇上的老人，不是说从海中怪物的身上可以得到吗？</brief>
			<await>还没有收集到10枚蓝色晶体吗?</await>
			<finish>有了这些蓝色晶体，应该可以期待一个有意思的发现。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3291" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<items>
				<item keyname="蓝色宝石"  n="1" bind_require="1" />
			</items>
		</requirements>
		<process>
			<trophies>
				<trophy monster="石甲鱼1" item="蓝色晶体" min_num="1" max_num="1" bind_require="1" limit="10" chance="1500" />
				<trophy monster="铁棘鱼1" item="蓝色晶体" min_num="1" max_num="1" bind_require="1" limit="10" chance="1600" />
				<trophy monster="铁螯怪1" item="蓝色晶体" min_num="1" max_num="2" bind_require="1" limit="10" chance="1800" />
				<trophy monster="巨钳蟹1" item="蓝色晶体" min_num="1" max_num="1" bind_require="1" limit="10" chance="1800" />
				<trophy monster="秘境海妖1" item="蓝色晶体" min_num="1" max_num="2" bind_require="1" limit="10" chance="2000" />
				<trophy monster="秘境歌妖1" item="蓝色晶体" min_num="1" max_num="2" bind_require="1" limit="10" chance="2000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[进入海底沉船,通过击杀任意怪物收集10枚#LINK<MAP:海底1,POSX:85,POSY:141,STR:蓝色晶体,MOVE:1>##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到龙城，交收集到的蓝色晶体交给#NPCLINK<STR:魔语尊者,NPCKEYNAME:引灵尊者,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="蓝色晶体"  n="10" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="6530000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="定位石"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>