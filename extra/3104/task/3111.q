<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3111" name="[主线]-补给队的困难（二）" type="1" suggest_level="1" visible="1" next_id="3112">
		<script name="3111" />
		<description>
			物资补给队刚要出发，却在前面的大路上发现了一大群饿狼挡道，帮人帮到底，帮助补给队将这群挡道的饿狼清除
		</description>
		<dialogue>
			<brief>勇士，稍等，刚刚接到报告说，前面路上集结了一大群饿狼，数量太多，我们无法抵挡，还请少侠再次帮助我们</brief>
			<await>勇士，加油</await>
			<finish>勇士果然神勇，三两下就把那群饿狼打的作鸟兽散了，这点小意思，虽然不多，还请不要拒绝！</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3110" />
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
			<![CDATA[去前方杀死10只挡道的#COLORCOLOR_GREENG##LINK<MAP:龙城,POSX:259,POSY:709,STR:野狼,MOVE:1>##COLOREND##MONSTERGROUP0#，以此惊散狼群]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去告诉#NPCLINK<STR:龙城军需官,NPCKEYNAME:龙城军需官,MOVE:1>#阻碍已经清除]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="野狼" />
					<group_hunting keyname="超级野狼" />
					<group_hunting keyname="精英野狼" />
					<group_hunting keyname="挖肉野狼" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>