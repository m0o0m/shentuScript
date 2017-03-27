<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1010" name="[任务]-百宝杂货" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：首饰商#COLOREND#
 #COLORCOLOR_GREENG#交任务：杂货商#COLOREND#

#IMAGE1902100023#
     首饰商没有银器，去杂货店的#COLORCOLOR_GREENG##NPCLINK<STR:杂货商,NPCID:15>##COLOREND#那里看看，据说杂货商有各种稀奇古怪的宝贝


#IMAGE1902100024#
     与#COLORCOLOR_GREENG##NPCLINK<STR:杂货商,NPCID:15>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：1500
   奖励道具：随机传送包
              回城卷包]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1009" />
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
			<![CDATA[去找天桑村的#COLORCOLOR_GREENG##NPCLINK<STR:杂货商,NPCID:15>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去杂货铺找#COLORCOLOR_GREENG##NPCLINK<STR:杂货商,NPCID:15>##COLOREND#问问]]>
			</accomplishing>
		</tracker>
		<rewards exp="1500" >
			<awards>
				<award keyname="随机传送包"  n="1" bind_require="1" />
				<award keyname="回城卷包"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>