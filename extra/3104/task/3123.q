<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3123" name="[����]-��ѯħ��֮�ǵ���Դ" type="1" suggest_level="1" visible="1" next_id="3124">
		<description>
			��·���е�����ʲô���������ţ���ħ���أ�
		\n�����������Ҳ��֪����������Щħ��֮�ǣ�ȥ����ɽ�ǵ��䶷��ʹ�ߣ��������������£�֪ʶ��ΪԨ������������ʲô�����
		</description>
		<dialogue>
			<brief>��·���е�����ʲô���������ţ���ħ���أ�
\n�����ѵ��������������Щħ��֮�ǣ�ȥ����ɽ�ǵ��䶷��ʹ�ߣ���������ʲô������������������£�֪ʶ��ΪԨ����</brief>
			<await>ħ��֮��!!!</await>
			<finish>���Ǳ�ħ���������εĹ������ڲ��ܷ��ֵ�ħ��֮�ǣ���ô���ػ�����һЩ�����ţħ����������ħ��֮�ģ�
\n������Ϊ���̶ֳȵ�ħ����ֻ����а���ħ��֮�Ĳ�����ɡ�
\n�����������룬��·�ǵ�ţħ�У�������ʲô����ӵ��ħ��֮���أ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3122" />
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
			<![CDATA[ȥ��ɽ����#NPCLINK<STR:�䶷��ʹ��,NPCKEYNAME:�䶷��ʹ��,MOVE:1>#ѯ�ʶ�ħ��֮�ǵĿ���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ��ɽ����#NPCLINK<STR:�䶷��ʹ��,NPCKEYNAME:�䶷��ʹ��,MOVE:1>#ѯ�ʶ�ħ��֮�ǵĿ���]]>
			</accomplishing>
		</tracker>
		<rewards exp="21000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>