<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3154" name="[����]-̽���ر���" type="1" suggest_level="1" visible="1" next_id="3155">
		<description>
			�ر�������ϡ���ı�������ռ����ܡ�ϡ�������Ԫ��ȵȣ�������Ǯ���򲻵������Ȼ��˵���ٶ࣬���������������һ�������ң��ر����ڵĴ����ˣ��������ȤΪ�㽲�⡣���ã��㱳���е�ʱ֮ɳ�����Զһ�����ر����ʱ�䡣�㲻���᲻�ðɣ�
		</description>
		<dialogue>
			<brief>�ر�������ϡ���ı�������ռ����ܡ�ϡ�������Ԫ��ȵȣ�������Ǯ���򲻵������Ȼ��˵���ٶ࣬���������������һ�������ң��ر����ڵĴ����ˣ��������ȤΪ�㽲�⡣���ã��㱳���е�ʱ֮ɳ�����Զһ�����ر����ʱ�䡣�㲻���᲻�ðɣ�</brief>
			<await>��ȥ�ɣ�����ˣ�ʱ��ܱ���</await>
			<finish>��ӭ�����ر��������������ǲر����ڲ��ռ䣬����ľ������вؾ�¥�����������䱦�����ٲ��á�����������ħ�������ط�Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3153" />
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
			<![CDATA[ʹ��#COLORCOLOR_GOLD#ʱ֮ɳ��#COLOREND#�һ��ر����̽��ʱ�䣬֮�����ر����ڵ�ľ�����#NPCLINK<STR:ľ���ﴫ����,NPCKEYNAME:ľ���ﴫ����,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ʹ��#COLORCOLOR_GOLD#ʱ֮ɳ��#COLOREND#�һ��ر����̽��ʱ�䣬֮�����ر����ڵ�ľ�����#NPCLINK<STR:ľ���ﴫ����,NPCKEYNAME:ľ���ﴫ����,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>