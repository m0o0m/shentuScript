<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1015" name="[����]-�˽���װ" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     ��#NPCLINK<STR:�������,NPCID:25001>#�Ի����˽����ڸø�ʲô

#IMAGE1902100024#
     ��#NPCLINK<STR:�������,NPCID:25001>#�Ի�


#IMAGE1902100025#

   �������飺40000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1014" />
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
			<![CDATA[ȥ����ɽ�ǵ�#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:232,POSY:291,STR:�������>##COLOREND#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001>##COLOREND#����һ�£��˽���ණ��]]>
			</accomplishing>
		</tracker>
		<rewards exp="40000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>