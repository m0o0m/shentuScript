<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3151" name="[����]-������ͷ�Ľ���" type="1" suggest_level="1" visible="1" next_id="3152">
		<description>
			�ӷ�ħ���ð�գ������������������������ǵ�Ŭ���Ҷ����������Ȼ���׷��ʵ�����ִ�ţ�˵����Ҫָ����һ���ݾ��ˣ������Աߵ��ؾ��ػ�������ȥ�����ɣ�
		</description>
		<dialogue>
			<brief>�ӷ�ħ���ð�գ������������������������ǵ�Ŭ���Ҷ����������Ȼ���׷��ʵ�����ִ�ţ�˵����Ҫָ����һ���ݾ��ˣ������Աߵ��ؾ��ػ�������ȥ�����ɣ�</brief>
			<await>�ؾ��ػ��߾��ڸ����أ��Ҳ�����</await>
			<finish>Ϊ�ػ����ǣ�����ʵ�����������꣬��ӭ�㡣</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3103" />
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
			<![CDATA[�������ǹ㳡��#NPCLINK<STR:�ؾ��ػ���,NPCKEYNAME:�ؾ��ػ�������,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[�������ǹ㳡��#NPCLINK<STR:�ؾ��ػ���,NPCKEYNAME:�ؾ��ػ�������,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<rewards exp="45000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>