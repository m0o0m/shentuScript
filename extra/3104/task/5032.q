<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5032" name="[֧��]-��·������������2��" type="2" suggest_level="1" visible="1" next_id="5033">
		<description>
			���������ȱ�˵�������˵��ˣ��㿴�������ϵĴ���ʱ��ͻȻ���ڵ��ϣ���Ϊ�һ����������ȸ���ҩ���ˣ��ţ���5ƿǿЧ����ˮ�ɡ�
		</description>
		<dialogue>
			<brief>���������ȱ�˵�������˵��ˣ��㿴�������ϵĴ���ʱ��ͻȻ���ڵ��ϣ���Ϊ�һ����������ȸ���ҩ���ˣ��ţ���5ƿǿЧ����ˮ�ɡ�</brief>
			<await>���·�������ṩ5ƿǿЧ����ˮ��</await>
			<finish>лл�ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5031" />
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
			<![CDATA[Ϊ����#NPCLINK<STR:��·������,NPCKEYNAME:��·������,MOVE:1>#�����ƣ����ṩ5ƿǿЧ����ˮ#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��������ǿЧ����ˮ����#NPCLINK<STR:��·������,NPCKEYNAME:��·������,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="5" bind_require="2" >
					<group_item keyname="ǿЧ̫��ˮ" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="85000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="11000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>