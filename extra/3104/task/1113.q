<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1113" name="[任务]-包裹和高级仓库扩充" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：书店老板#COLOREND#
 #COLORCOLOR_GREENG#交任务：仓库管理员#COLOREND#

#IMAGE1902100023#
     与#COLORCOLOR_GREENG##NPCLINK<STR:仓库管理员,NPCID:8>##COLOREND#对话，他会送你一个包裹来扩充包裹空间。


#IMAGE1902100024#
     与#COLORCOLOR_GREENG##NPCLINK<STR:仓库管理员,NPCID:8>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：30000经验
   奖励道具：一个包裹
              一个高级仓库扩充]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1112" />
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
			<![CDATA[找辟岭村#COLORCOLOR_GREENG##NPCLINK<STR:仓库管理员,NPCID:8>##COLOREND#对话]]>
			</progressing>
			<accomplishing>
			<![CDATA[去找#COLORCOLOR_GREENG##NPCLINK<STR:仓库管理员,NPCID:8>##COLOREND#对话了解仓库存储知识]]>
			</accomplishing>
		</tracker>
		<rewards exp="30000" >
			<awards>
				<award keyname="麻布袋"  n="1" bind_require="1" />
				<award keyname="储存箱(1格)"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>