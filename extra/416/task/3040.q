<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3040" name="[主线]-狂蟒之灾" type="1" suggest_level="1" visible="1" next_id="3044">
		<description>
			巫山城东北面与北面妖雾弥漫，黑烟滚滚，魔物大量出现。找天机老人了解魔物信息，消灭魔物！
		</description>
		<dialogue>
			<brief>马上找天机老人咨询魔物信息，消灭之。</brief>
			<await>巫山城东北面群蛇峡谷的环境真的是太容易滋养蛇物了，可惜现在没有太多的心力彻底解决毒蛇的麻烦。\n
被魔化的怪物带有魔的气息，你要消灭魔物回来复命！英雄珍重！</await>
			<finish>恭喜英雄凯旋，这是给你的奖励！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3025" />
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
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城># 对话
杀死#LINK<MAP:绝路1,POSX:43,POSY:73,STR:红蛇,MOVE:1>##MONSTERGROUP0#
杀死#LINK<MAP:绝路1,POSX:142,POSY:147,STR:半兽人,MOVE:1>##MONSTERGROUP1# 
杀死#LINK<MAP:绝路1,POSX:150,POSY:116,STR:青蛇,MOVE:1>##MONSTERGROUP2#
杀死#LINK<MAP:绝路1,POSX:151,POSY:77,STR:多钩猫,MOVE:1>##MONSTERGROUP3#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="红蛇0" />
					<group_hunting keyname="红蛇" />
				</group>
				<group n="5" >
					<group_hunting keyname="半兽人" />
					<group_hunting keyname="半兽人0" />
				</group>
				<group n="5" >
					<group_hunting keyname="虎蛇0" />
					<group_hunting keyname="虎蛇" />
				</group>
				<group n="5" >
					<group_hunting keyname="多钩猫" />
					<group_hunting keyname="多钩猫0" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="26000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="毒牙"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>