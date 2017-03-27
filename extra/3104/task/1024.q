<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1024" name="[任务]-镇压封魔阵" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：封魔阵引路人#COLOREND#
 #COLORCOLOR_GREENG#交任务：封魔阵引路人#COLOREND#

#IMAGE1902100023#
     
     据说封魔阵中有一位极端邪恶的异位面强者会召唤很多分身，击败掉他的分身可以获得大量的金钱和循环魔咒，循环魔咒可以在天机老人处刷新悬赏任务。

#IMAGE1902100024#
     与#NPCLINK<STR:封魔阵引路人,NPCID:30022>#对话


#IMAGE1902100025#

   奖励经验：60000经验]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1023" />
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
			<![CDATA[去找龙城的#COLORCOLOR_GREENG##NPCLINK<STR:封魔阵引路人,NPCID:30022>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[击败#COLORCOLOR_GREENG#《封魔阵》#COLOREND#中的怪物，可以获得大量的经验还有金钱，告诉#COLORCOLOR_GREENG##NPCLINK<STR:封魔阵引路人,NPCID:30022>##COLOREND#自己已经了解这个活动了]]>
			</accomplishing>
		</tracker>
		<rewards exp="60000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>