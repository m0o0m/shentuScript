<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="1019" name="[����]-ʦͽ" type="1" suggest_level="1" visible="1">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#������װ����ʦ#COLOREND#
 #COLORCOLOR_GREENG#������ʦͽ����Ա#COLOREND#

#IMAGE1902100023#
     
     ��װ����ʦָ�㣬����Ϸ����һ��ʦ�������԰����Լ�������˽���;���磬�������ھ�ȥ#NPCLINK<STR:ʦͽ����Ա,NPCID:1005>#�����˽�һ��ʦͽϵͳ

#IMAGE1902100024#
     ��#NPCLINK<STR:ʦͽ����Ա,NPCID:1005>#�Ի��˽�ʦͽϵͳ


#IMAGE1902100025#

   �������飺55000����]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<level enable="1" min_num="199" max_num="200" />
			<prologues>
				<group>
					<prologue id="1018" />
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
			<![CDATA[ȥ����ɽ�ǵ�#COLORCOLOR_GREENG##NPCLINK<STR:ʦͽ����Ա,NPCID:1005>##COLOREND#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#COLORCOLOR_GREENG##NPCLINK<STR:ʦͽ����Ա,NPCID:1005>##COLOREND#�˽�ʦͽϵͳ]]>
			</accomplishing>
		</tracker>
		<rewards exp="55000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>