<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="11" name="新手任务-屠夫家的婚宴" type="1" suggest_level="1" visible="1" next_id="12">
		<description>
			红烧猪蹄，四喜丸子，水煮羊肉……….哎呀,怎么忘了,咱家祖传秘制沙锅鸡？说起来这杀
鸡取肉是有讲究的，你知道怎么操作吗？
		</description>
		<dialogue>
			<brief>红烧猪蹄，四喜丸子，水煮羊肉………哎呀,怎么忘了,咱家祖传秘制沙锅鸡？说起来这杀鸡取肉是有讲究的，你知道怎么操作吗？</brief>
			<await>红烧猪蹄，四喜丸子，水煮羊肉………哎呀,怎么忘了,咱家祖传秘制沙锅鸡？说起来这杀鸡取肉是有讲究的，你知道怎么操作吗？</await>
			<finish>把鸡杀死之后，按住（ALT+鼠标左键）就可以挖肉了，不止鸡，很多动物的尸体可都可以挖的，挖了肉卖给我，我的秤是绝对的公平，钱也不会少你的。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="10" />
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
			<![CDATA[ 杀死#LINK<MAP:龙城,POSX:299,POSY:208,STR:鸡>##MONSTERGROUP0#
  (点击可自动寻路)
  (组队可增加效率)
  #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[  前往-#NPCLINK<STR:屠夫,NPCKEYNAME:龙城屠夫>#
  (点击可自动寻路)
  #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>