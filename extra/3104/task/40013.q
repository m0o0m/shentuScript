<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="40013" name="[����]-�ַ���·��" type="2" suggest_level="1" visible="0">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#�������������#COLOREND#
 #COLORCOLOR_GREENG#�������������#COLOREND#

#IMAGE1902100023#
     ȥ#COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:288,POSY:496,STR:��·�Ƕ���,MOVE:1>##COLOREND#����10ֻ����#COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:288,POSY:496,STR:ţħ,MOVE:1>##COLOREND#���������


#IMAGE1902100024#
     ����10ֻ#COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:288,POSY:496,STR:��·��,MOVE:1>##COLOREND#������#COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:288,POSY:496,STR:ţħ,MOVE:1>##COLOREND#����#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCID:25001,MOVE:1>##COLOREND#�Ի�


#IMAGE1902100025#

   �������飺��ɫ�ȼ�Խ�߻��Խ��]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="30" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ȥ#COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:288,POSY:496,STR:��·��,MOVE:1>##COLOREND#����10ֻ����#COLORCOLOR_GREENG##LINK<MAP:��·��1,POSX:288,POSY:496,STR:ţħ,MOVE:1>##COLOREND##MONSTERGROUP0#���������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>##COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="����ţħ1" />
					<group_hunting keyname="����ţħ1" />
					<group_hunting keyname="ţħ����1" />
					<group_hunting keyname="����ţħ2" />
					<group_hunting keyname="ţħ����2" />
					<group_hunting keyname="ţħ����3" />
					<group_hunting keyname="ţħ��ʿ1" />
					<group_hunting keyname="�����ɶ�" />
					<group_hunting keyname="����ţħ����1" />
					<group_hunting keyname="��������ţħ1" />
					<group_hunting keyname="����ţħ��ʿ2" />
					<group_hunting keyname="��������ţħ1" />
					<group_hunting keyname="����ţħ��ʿ1" />
					<group_hunting keyname="����ɶ�" />
					<group_hunting keyname="�������ţħ1" />
					<group_hunting keyname="�������ţħ1" />
					<group_hunting keyname="����ţħ����1" />
					<group_hunting keyname="�������ţħ2" />
					<group_hunting keyname="����ţħ����2" />
					<group_hunting keyname="����ţħ����3" />
					<group_hunting keyname="����ţħ��ʿ1" />
					<group_hunting keyname="��Ӣ�ɶ�" />
					<group_hunting keyname="��Ӣţħ����1" />
					<group_hunting keyname="��Ӣ����ţħ1" />
					<group_hunting keyname="��Ӣţħ��ʿ2" />
					<group_hunting keyname="��Ӣ����ţħ1" />
					<group_hunting keyname="��Ӣţħ��ʿ1" />
					<group_hunting keyname="ţħ����" />
					<group_hunting keyname="ţħ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>