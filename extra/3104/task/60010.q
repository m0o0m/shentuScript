<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="60010" name="[֧��]-���·�ħ" type="2" suggest_level="1" visible="1">
		<description>
			��ħ���е�ħ����ʱ�п��ܳ��Ʒ�ħ������Ҫ���������ֽ��������������ķ���һ�˹���һ�������ȿ���������ǿ����ʿ����Ҳ��һ��΢��֮����
		</description>
		<dialogue>
			<brief>��ħ���е�ħ����ʱ�п��ܳ��Ʒ�ħ������Ҫ���������ֽ��������������ķ���һ�˹���һ�������ȿ���������ǿ����ʿ����Ҳ��һ��΢��֮����</brief>
			<await>ÿ����ֻ��Ҫ����66ֻаħ��ż����������ħ�˳��Ʒ�ħ��</await>
			<finish>�ǳ���л�������Ԯ��֮�֣���������и������������ĵ��˾�̫���ˣ��Ժ���ÿ�춼���μӷ�ħ�ɣ������ţ����Ѿ������˷�ħ�ĺô���</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="22" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ͨ��#NPCLINK<STR:��ħ����·��,NPCKEYNAME:��ħ����·��,MOVE:1>#����#COLORCOLOR_YELLOW#��ħ��#COLOREND#ɱ��66ֻ#COLORCOLOR_YELLOW#аħ��ż#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ǹ㳡��#NPCLINK<STR:��ħ����·��,NPCKEYNAME:��ħ����·��,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="66" >
					<group_hunting keyname="аħ��ż1" />
					<group_hunting keyname="аħ��ż2" />
					<group_hunting keyname="аħ��ż3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>