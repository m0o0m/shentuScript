<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5033" name="[֧��]-��·������������3��" type="2" suggest_level="1" visible="1" next_id="5034">
		<description>
			�������ϣ�����������һ�����Ӿ�·�ǣ�ͻȻ�м�����Ӱ����ΧǽԽ���ҵ�ͷ����ս�������������ˣ����ǻ������ң����ƺ����Ķ���̫���ִ�æ���뿪�ˡ�������ʵ��̫���·���ڵ�ţħ������ţħ��ʿ����ţħ����������������ţħ���������˵����ң��϶���δ֪��ǿ�С�\n�������ڣ������и��ֵ��Ѿ�׷����Ӱ��ȥ���ҵ���������Σ�գ���ʿ����ǰ����Ӧ�ɣ�
		</description>
		<dialogue>
			<brief>�������ϣ�����������һ�����Ӿ�·�ǣ�ͻȻ�м�����Ӱ����ΧǽԽ���ҵ�ͷ����ս�������������ˣ����ǻ������ң����ƺ����Ķ���̫���ִ�æ���뿪�ˡ�������ʵ��̫���·���ڵ�ţħ������ţħ��ʿ����ţħ����������������ţħ���������˵����ң��϶���δ֪��ǿ�С�\n�������ڣ������и��ֵ��Ѿ�׷����Ӱ��ȥ���ҵ���������Σ�գ���ʿ����ǰ����Ӧ�ɣ�</brief>
			<await>ǰ����·���ϲ�����׷����Ӱ�ľ�·��ʿ���Ի���</await>
			<finish>��ʿ����������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5032" />
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
			<![CDATA[ǰ����·���ϲ�����׷����Ӱ��ȥ��#NPCLINK<STR:��·��ʿ��,NPCKEYNAME:��·��ʿ��,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ����·���ϲ�����׷����Ӱ��ȥ��#NPCLINK<STR:��·��ʿ��,NPCKEYNAME:��·��ʿ��,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>