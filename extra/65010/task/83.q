<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="83" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#���������" type="1" suggest_level="1" visible="1" next_id="84">
		<script name="����ִ�нű�" />
		<description>
			����Ǹ��ö������������ĳ������Ķ������벻�����Կ���ֻҪ�����8���������Ҿ͸���3����ש��
		</description>
		<dialogue>
			<brief>����Ǹ��ö������������ĳ������Ķ������벻�����Կ���ֻҪ�����8���������Ҿ͸���3��С������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>ÿ��2�λ��ᣬÿ��3��С������������Ҳ��ݴ����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="82" />
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
			<![CDATA[�Ͻ� #NPCLINK<STR:8�������ʯ,NPCKEYNAME:��ɽ�ǿ���,MOVE:1># #ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����,NPCKEYNAME:��ɽ�ǿ���,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="8" bind_require="2" >
					<group_item keyname="������" />
					<group_item keyname="�ƽ��" />
					<group_item keyname="������" />
					<group_item keyname="��ͭ��" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>