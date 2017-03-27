<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="19" name="新手任务-趁手的兵器" type="1" suggest_level="1" visible="1" next_id="20">
		<description>
			看上去你已经差不多把全身的行头集齐了，身穿布衣，脚踩长靴，腰束金丝带，手拿铸铁
剑…….不对.怎么是木剑,你还是去趟武器店吧,不过你最好别空着手去,听说他最近正在研究钉
耙猫的钉耙对武器锻造的作用,如果你给他带1块钉耙去,他一定会很开心的.
		</description>
		<dialogue>
			<brief>看上去你已经差不多把全身的行头集齐了，身穿布衣，脚踩长靴，腰束金丝带，手拿铸铁剑……不对，怎么是木剑，你还是去趟武器店吧，不过你最好别空着手去，听说他最近正在研究钉耙猫的钉耙对武器锻造的作用，如果你给他带1块钉耙去，他一定会很开心的。</brief>
			<await>看上去你已经差不多把全身的行头集齐了，身穿布衣，脚踩长靴，腰束金丝带，手拿铸铁剑……不对，怎么是木剑，你还是去趟武器店吧，不过你最好别空着手去，听说他最近正在研究钉耙猫的钉耙对武器锻造的作用，如果你给他带1块钉耙去，他一定会很开心的。</await>
			<finish>这钉耙你要给我？那我就收下了。兵器？你先打开你的新手礼包，里面就有一把嘛。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="18" />
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
			<![CDATA[杀#LINK<MAP:龙城,POSX:66,POSY:234,STR:钉耙猫>##MONSTERGROUP0# 
  (点击可自动寻路)
  (组队可增加效率)]]>
			</progressing>
			<accomplishing>
			<![CDATA[前往-#NPCLINK<STR:武器店老板,NPCKEYNAME:龙城武器店>#
  (点击可自动寻路)
  #COLORCOLOR_RED#按[Tab]键打开地图#COLOREND#
]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="钉耙猫" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>