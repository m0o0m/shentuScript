<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3102" name="[����]-׷Ѱʵ��" type="1" suggest_level="1" visible="1" next_id="3103">
		<description>
			��������Ҳ�������𣿲���ÿ��ɢһ����ħ�ķ������Եõ�������ս�����顣\n������Ȼ������ʵ����;���кܶ࣬�����ȥ��������ͷ���һ������Ȼ������һ�����������ģ��������ȫ��һ��ֵ���𾴵Ľ�ͷ��
		</description>
		<dialogue>
			<brief>��������Ҳ�������𣿲���ÿ��ɢһ����ħ�ķ������Եõ�������ս�����顣\n������Ȼ������ʵ����;���кܶ࣬�����ȥ��������ͷ���һ������Ȼ������һ�����������ģ��������ȫ��һ��ֵ���𾴵Ľ�ͷ��</brief>
			<await>��ɵվ�ţ���ȥ��������ͷ����</await>
			<finish>С�ӣ���Ҫ�ڳ����й䣬û�п���ÿ���˶���æ����������һΣ�յĵط��������ʺ����棡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3101" />
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
			<![CDATA[ȥ���ǵĹ㳡��#NPCLINK<STR:������ͷ,NPCKEYNAME:����������ͷ,MOVE:1>#Ѱ���ǿ�ķ���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ǵĹ㳡��#NPCLINK<STR:������ͷ,NPCKEYNAME:����������ͷ,MOVE:1>#Ѱ���ǿ�ķ���]]>
			</accomplishing>
		</tracker>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>