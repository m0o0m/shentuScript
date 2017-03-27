<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3144" name="[主线]-反击开始" type="1" suggest_level="1" visible="1" next_id="3145">
		<description>
			现在，是时候开始真正的反击了，从根源上去解决才是最终的办法，我们第一个目标就是邪庙，既然是敌人的大本营，里面一定充满了危险，首先去邪庙消灭10个天原猛士、10个天原勇士、10个天原死士，测试一下自己的力量能否胜任这个任务。
		</description>
		<dialogue>
			<brief>现在，是时候开始真正的反击了，从根源上去解决才是最终的办法，我们第一个目标就是邪庙，既然是敌人的大本营，里面一定充满了危险，首先去邪庙消灭10个天原猛士、10个天原勇士、10个天原死士，测试一下自己的力量能否胜任这个任务。</brief>
			<await>区区30只妖魔，你都无法处理了吗？</await>
			<finish>你行动很迅速，实力也非常强大！\n　　但邪庙仍然极为危险！因为邪庙是邪恶最初的发源之地。很久之前，邪恶的死灵神降临天藏大陆，开启了黑暗纪元时代。他在最混乱的东北方，建立了第一座祭祀他的邪庙，这就是天荒邪庙。
			\n　　后来，虽然无数的邪庙被推倒，但处于混乱之地的天荒邪庙一直顽强地存留了下来，并且聚集收留了无数强大的恶魔以及堕落的人类。所以，对于邪庙的力量，必须保持永远的警惕，直到它被消灭！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3143" />
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
			<![CDATA[去#COLORCOLOR_YELLOW#天荒邪庙#COLOREND#消灭    10只#LINK<MAP:邪庙1,POSX:86,POSY:194,STR:天原猛士,MOVE:1>##MONSTERGROUP0# 10只#LINK<MAP:邪庙2,POSX:49,POSY:274,STR:天原勇士,MOVE:1>##MONSTERGROUP2# 10只#LINK<MAP:邪庙3,POSX:19,POSY:212,STR:天原死士,MOVE:1>##MONSTERGROUP1#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去告诉龙城的#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>#自己完成了任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="天原猛士1" />
					<group_hunting keyname="超级天原猛士1" />
					<group_hunting keyname="挖肉天原猛士1" />
					<group_hunting keyname="精英天原猛士1" />
				</group>
				<group n="10" >
					<group_hunting keyname="天原死士1" />
					<group_hunting keyname="天原死士2" />
					<group_hunting keyname="天原死士3" />
					<group_hunting keyname="挖肉天原死士1" />
					<group_hunting keyname="挖肉天原死士2" />
					<group_hunting keyname="挖肉天原死士2" />
					<group_hunting keyname="超级天原死士1" />
					<group_hunting keyname="精英天原死士1" />
				</group>
				<group n="10" >
					<group_hunting keyname="天原勇士1" />
					<group_hunting keyname="挖肉天原勇士1" />
					<group_hunting keyname="超级天原勇士1" />
					<group_hunting keyname="精英天原勇士1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1200000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>