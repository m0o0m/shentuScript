<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3293" name="[主线]-水晶石的秘密(5)" type="1" suggest_level="1" visible="1" next_id="3294">
		<script name="3293" />
		<description>
			我用这些晶体在魔法阵的转化下，凝结成了另一种新的晶体。你仔细感受，这种晶体蕴含的力量柔和、湿润，如同水一般，我们可以称之为水之力晶体。\n　　我想，在海角秘境中，一定充斥着这种力量的气息吧？这便是海妖一族的力量。对了，还记得天魔石窟前的神秘老者吧,听说他去了海角秘境,你带上这枚晶体，找到他,给他看看。
		</description>
		<dialogue>
			<brief>我用这些晶体在魔法阵的转化下，凝结成了另一种新的晶体。你仔细感受，这种晶体蕴含的力量柔和、湿润，如同水一般，我们可以称之为水之力晶体。\n　　我想，在海角秘境中，一定充斥着这种力量的气息吧？这便是海妖一族的力量。对了，还记得天魔石窟前的神秘老者吧,他可是道家的大师啊,听说去了海角秘境,你带上这枚晶体，找到他,给他看看。</brief>
			<await>带上这枚晶石,去找天魔石窟前的神秘老者看看吧</await>
			<finish>水晶石！你居然有水晶石？虽然是用一种蓝色晶体在魔法阵的转化下得来，但仍然非同小可。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3301" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="水晶石"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去海底沉船找#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#问问]]>
			</progressing>
			<accomplishing>
			<![CDATA[去海底沉船找#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#问问]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="水晶石"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="482000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="祝福神水"  n="2" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>