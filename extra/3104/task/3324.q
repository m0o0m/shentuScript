<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3324" name="[����]-���ԹŴ�������(4)" type="1" suggest_level="1" visible="1" next_id="3325">
		<description>
			�ף�����һλ�̿�ǰ�������ԣ�����ֻǿ��ĺ�����ʳ�˹����ڹ�â�����б����ӵ�ж�ֻ���ֵ�ħ�����\n���������������������ƺ���ǿ��������ڴ����ۣ����к��������������ڶ����ܵ���������Ѹ������������\n���������ħ��ĺ�����׼�������������������������������\n�����⣡���ǡ�����\n���������ҵķ�����ż�����ȥ�������Զ����ͳ��ɡ�
		</description>
		<dialogue>
			<brief>�ף�����һλ�̿�ǰ�������ԣ�����ֻǿ��ĺ�����ʳ�˹����ڹ�â�����б����ӵ�ж�ֻ���ֵ�ħ�����\n���������������������ƺ���ǿ��������ڴ����ۣ����к��������������ڶ����ܵ���������Ѹ������������\n���������ħ��ĺ�����׼�������������������������������\n�����⣡���ǡ�����\n���������ҵķ�����ż�����ȥ�������Զ����ͳ��ɡ�</brief>
			<await>�������û�н���Զ����ͳ����?</await>
			<finish>��λ�̿�ǰ�����µĺ���Ƥ�ϣ�˵���˺�����ʳ������ͼ��Ƭ���������顣��Ȼ����������ͼ����Ƭ���ٳ��˺���һ��ľޱ䣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3323" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="�����"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�ص��������,�����������#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص��������,�����������#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="�����"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="315000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>