<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1010" name="[����]-�ٱ��ӻ�" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#������������#COLOREND#
 #COLORCOLOR_GREENG#�������ӻ���#COLOREND#

#IMAGE1902100023#
     ������û��������ȥ�ӻ����#COLORCOLOR_GREENG##NPCLINK<STR:�ӻ���,NPCID:15>##COLOREND#���￴������˵�ӻ����и���ϡ��Źֵı���


#IMAGE1902100024#
     ��#COLORCOLOR_GREENG##NPCLINK<STR:�ӻ���,NPCID:15>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺1500
   �������ߣ�������Ͱ�
              �سǾ��]]>
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
			<![CDATA[ȥ����ɣ���#COLORCOLOR_GREENG##NPCLINK<STR:�ӻ���,NPCID:15>##COLOREND#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ�ӻ�����#COLORCOLOR_GREENG##NPCLINK<STR:�ӻ���,NPCID:15>##COLOREND#����]]>
			</accomplishing>
		</tracker>
		<rewards exp="1500" >
			<awards>
				<award keyname="������Ͱ�"  n="1" bind_require="1" />
				<award keyname="�سǾ��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>