<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1018" name="[����]-��������" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#������װ����ʦ#COLOREND#
 #COLORCOLOR_GREENG#������װ����ʦ#COLOREND#

#IMAGE1902100023#
     #NPCLINK<STR:װ����ʦ,NPCID:1004>#��֪
     װ����������Ҫ��Ԫ��ſɾ����������Ի��˽���ࡣ

#IMAGE1902100024#
     ��#NPCLINK<STR:װ����ʦ,NPCID:1004>#�Ի�


#IMAGE1902100025#

   �������飺50000����
   ����սʿ�����ĳ���
       ��ʦ��ҹ��ì
       ��ʿ������]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1017" />
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
			<![CDATA[ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:װ����ʦ,NPCID:1004>##COLOREND#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#COLORCOLOR_GREENG##NPCLINK<STR:װ����ʦ,NPCID:1004>##COLOREND#�Ի����˽���ණ��]]>
			</accomplishing>
		</tracker>
		<rewards exp="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>