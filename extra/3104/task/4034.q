<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4034" name="[֧��]-ʱ֮ɳ����2��" type="2" suggest_level="1" visible="1">
		<description>
			��ô�����ڱ���Ļ��ﵥ�п��ҵ�ʱ֮ɳ����˵����һ��ʱ֮ɳ�����Զһ��ر�����Сʱ��ʱ�䣬���Ƿǳ�����Ŷ�����ң��󶨽��Ҳ���Թ���ʱ֮ɳ���ء�����㹺��һ��ʱ֮ɳ����Ϊ�����͸��ر����ػ��ˣ���������ö���ĺô���
		</description>
		<dialogue>
			<brief>��ô�����ڱ���Ļ��ﵥ�п��ҵ�ʱ֮ɳ����˵����һ��ʱ֮ɳ�����Զһ��ر�����Сʱ��ʱ�䣬���Ƿǳ�����Ŷ�����ң��󶨽��Ҳ���Թ���ʱ֮ɳ���ء�����㹺��һ��ʱ֮ɳ����Ϊ�����͸��ر����ػ��ˣ���������ö���ĺô���</brief>
			<await>���ӻ��̴�����һ��ʱ֮ɳ����</await>
			<finish>����ʵֻ��һ��������ѣ�������һ��ʱ֮ɳ�����һ���������Ŷ������������ô�õ�ʱ֮ɳ���˰ɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="0" max_num="200" />
			<prologues>
				<group>
					<prologue id="4033" />
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
			<![CDATA[�������ӻ��̴�����1��#COLORCOLOR_GOLD#ʱ֮ɳ��#COLOREND##ITEM0#���������ʱ֮ɳ���͸�#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�������ӻ��̴�����1��#COLORCOLOR_GOLD#ʱ֮ɳ��#COLOREND##ITEM0#���������#COLORCOLOR_GOLD#ʱ֮ɳ��#COLOREND#�͸�#NPCLINK<STR:�ر����ػ���,NPCKEYNAME:�ر����ػ���>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="ʱ֮ɳ��"  n="1" bind_require="2" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="ʱ֮ɳ��"  n="2" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>