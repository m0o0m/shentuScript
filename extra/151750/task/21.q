<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="21" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��֪�����ʦ" type="1" suggest_level="1" visible="1" next_id="22">
		<script name="����ִ�нű�" />
		<description>
			����Ӧ������֮��������ʤ����գ�����ز����٣�����ǰȥ֪ͨ�����ʦ��
		</description>
		<dialogue>
			<brief>����Ӧ������֮��������ʤ����գ�����ز����٣�����ǰȥ֪ͨ�����ʦ��</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�콲�콲���һ��кܶ������أ�����������󣩡��������������������ã��Ҹն͹��ļ��Ѷ��������֪��Ч������ء�͵͵�����㣬���������ڶ�һ�Ѿ�����������ˣ��øɻ��ˣ����������Ϣ�����ֳ����˸ɾ���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="20" />
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
			<![CDATA[�ظ� #NPCLINK<STR:�����ʦ,NPCKEYNAME:��ɽ�Ƕ����ʦ,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�����ʦ,NPCKEYNAME:��ɽ�Ƕ����ʦ,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>