<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1105" name="[����]-����װ��" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#��������������Ա#COLOREND#
 #COLORCOLOR_GREENG#�����񣺲÷�#COLOREND#

#IMAGE1902100023#
     ��÷���ϰ�#COLORCOLOR_GREENG##NPCLINK<STR:�÷�,NPCID:4>##COLOREND#�Ի����˽����

#IMAGE1902100024#
     ��÷���ϰ�#COLORCOLOR_GREENG##NPCLINK<STR:�÷�,NPCID:4>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺700
   ����װ�����鲼��
              ����ͷ��
              ����֮Ь]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1104" />
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
			<![CDATA[��#COLORCOLOR_GREENG##NPCLINK<STR:�÷�,NPCID:4>##COLOREND#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��÷���ϰ�#COLORCOLOR_GREENG##NPCLINK<STR:�÷�,NPCID:4>##COLOREND#�Ի����˽����]]>
			</accomplishing>
		</tracker>
		<rewards exp="700" >
			<awards>
				<award keyname="����ͷ��"  n="1" bind_require="1" />
				<award keyname="����֮Ь"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>