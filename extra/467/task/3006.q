<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3006" name="[����]-���Ǹ漱" type="1" suggest_level="1" visible="1" next_id="3007">
		<description>
			��ʿ�ǣ������۹������ż�����������Σ��֮�У��ڰ��Ķ�ħ���ٴμ��ᲢϮ�������ǣ��ؽ��ĳǳ��ٴλ���ս�𣡸�������������Ѿ����޿��ˣ�ս���ɣ�������Ҫ�����ؽ����ߣ���Ҫ�������ʿ������أ�\n����������ɽ��?�������\n������������ʿ������Σ�����������ǹ���������
		</description>
		<dialogue>
			<brief>��ʿ�ǣ������۹������ż�����������Σ��֮�У��ڰ��Ķ�ħ���ٴμ��ᲢϮ�������ǣ��ؽ��ĳǳ��ٴλ���ս�𣡸�������������Ѿ����޿��ˣ�ս���ɣ�������Ҫ�����ؽ����ߣ���Ҫ�������ʿ������أ�\n����������ɽ��?�������\n������������ʿ������Σ�����������ǹ������������Ƿ���־�������ǣ������ħ�����</brief>
			<await>��Ȼ�����ٴα���ħ�ݻ٣���������ÿһ��Ŭ�������꣬���Ƕ�������Ϊ����������ش�½����ϣ����</await>
			<finish>������7222�������ս����������189�꣬��ħ�����໥���������������ٴξ�ս��ʱ���Ѿ��ƽ���лл�㣬��������ʿ��������ÿһ��Ŭ�������궼������Ϊ����������ش�½����ϣ����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ұ�����#NPCLINK<STR:��������Ա,NPCKEYNAME:��������Ա��,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��������Ա,NPCKEYNAME:��������Ա��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100" ingot="100" bind_ingot="100" integral="100" gold="100" bind_gold="100" >
			<awards>
				<award keyname="ľ��"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>