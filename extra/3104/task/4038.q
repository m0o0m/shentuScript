<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4038" name="[֧��]-ѱ�޴��ˣ�3��" type="2" suggest_level="1" visible="1" next_id="4038">
		<description>
			���￪����ѱ�޵ĵڶ�����֮��Ҳ�����һ����������������ĵȼ��ˣ�ֻ��Ҫ��װ��һ���������ϣ����������������������ĵȼ���Ҳ����ʹ�����ﾭ�鵤��������ľ��顣�����ѱ���еĻ����ˣ��㻹��֪�����߼��ļ�����
		</description>
		<dialogue>
			<brief>���￪����ѱ�޵ĵڶ�����֮��Ҳ�����һ����������������ĵȼ��ˣ�ֻ��Ҫ��װ��һ���������ϣ����������������������ĵȼ���Ҳ����ʹ�����ﾭ�鵤��������ľ��顣�����ѱ���еĻ����ˣ��㻹��֪�����߼��ļ�����</brief>
			<await>��ѱ��ʦ�Ի���</await>
			<finish>���ѱ�޴��ˣ�һ�ǻ᲻ͣ�ؿ���ͬһֻ����Ի�ô�����Լӳɣ������׷����߼������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4037" />
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
			<![CDATA[��#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="30000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="20000" >
			<awards>
				<award keyname="�������ﾭ�鵤"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>