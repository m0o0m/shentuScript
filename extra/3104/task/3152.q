<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3152" name="[����]-�غ���ӡΣ��" type="1" suggest_level="1" visible="1" next_id="3153">
		<description>
			�ؾ��ڵĶ�ħ���ڳ����ӡ��Ϊ�˴�½�İ�ȫ����Ҫһλ�¸ҵ��˽����ؾ��������ػ�ʯ����Ը���ṩ������\n����ֻҪ������ؾ����Ҷ������300�������ػ�ʯ�Ĳ��ϡ���Ȼ����Ϊ���ν����ؾ�����ֻ��Ҫ�˽��˽�������ɡ�
		</description>
		<dialogue>
			<brief>�ؾ��ڵĶ�ħ���ڳ����ӡ��Ϊ�˴�½�İ�ȫ����Ҫһλ�¸ҵ��˽����ؾ��������ػ�ʯ����Ը���ṩ������\n����ֻҪ������ؾ����Ҷ������300�������ػ�ʯ�Ĳ��ϡ���Ȼ����Ϊ���ν����ؾ�����ֻ��Ҫ�˽��˽�������ɡ�</brief>
			<await>�����غ���ӡ֮�ڣ��˽��������ӡ�������</await>
			<finish>���꣬��������غ���ӡ����ħ��ʱ�̶����ų��Ʒ�ӡ�����½�����Ǳ���ʱ�̾��衣��Ϊ������������һ��ʱ֮ɳ���ɣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3151" />
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
			<![CDATA[�����غ���ӡ֮�ڣ����ؾ��ڵ�#COLORCOLOR_GOLD#�ؾ��ػ���#COLOREND#�Ի����˽��������ӡ�������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����غ���ӡ֮�ڣ����ؾ��ڵ�#COLORCOLOR_GOLD#�ؾ��ػ���#COLOREND#�Ի����˽��������ӡ�������]]>
			</accomplishing>
		</tracker>
		<rewards exp="120000" >
			<awards>
				<award keyname="ʱ֮ɳ��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>