<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1026" name="[����]-����������" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#������������ͷ#COLOREND#
 #COLORCOLOR_GREENG#������������ͷ#COLOREND#

#IMAGE1902100023#
     #NPCLINK<STR:������ͷ,NPCID:30006>#Ϊ��ָ����һ����ǿ��·���Ǿ��ǽ������������������������������ڵĹ����ǿ��������Ҫ��һ����ʵ����������������ÿ�춼�����������Լ�һ��


#IMAGE1902100024#
     ��#NPCLINK<STR:������ͷ,NPCID:30006>#�Ի�


#IMAGE1902100025#

   �������飺40000]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1025" />
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
			<![CDATA[ȥ�����ǵ�#COLORCOLOR_GREENG##NPCLINK<STR:������ͷ,NPCID:30006>##COLOREND#�Ի��������]]>
			</progressing>
			<accomplishing>
			<![CDATA[������ͷ˵#COLORCOLOR_GREENG#��������#COLOREND#���Ի�ô����ľ��飬��#COLORCOLOR_GREENG##NPCLINK<STR:������ͷ,NPCID:30006>##COLOREND#�Ի��������]]>
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