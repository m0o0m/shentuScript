<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3047" name="[����]-��Ӧ���Ǻ���" type="1" suggest_level="1" visible="1" next_id="3100">
		<script name="3047" />
		<description>
			��Ӧ���Ǻ��٣�ȥ����Ѱ��������ˣ�
		</description>
		<dialogue>
			<brief>����������ɽ�ǣ���һ����ɽ���Һ�����ѽ��Ҫ��Ȼ���ཫ������һ������Ľ��ѣ�\n������ĳɳ�����������ο�����Ѿ���ȫ����ǰ�����ǣ����������ħ��ս���ˣ���ô���ұ������ǵ���ɣ�</brief>
			<await>ȥ����Ѱ��������ˣ�</await>
			<finish>�ܸ��������Ǽ����㣡��Ȼ���Ƽ��ѣ���ʱ��Σ�֣��α�Ӣ�ۣ�����������Ϊ��ɳ���������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3046" />
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
			<![CDATA[��#NPCLINK<STR:���ǵ��������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:���ǵ��������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="����"  n="6" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>