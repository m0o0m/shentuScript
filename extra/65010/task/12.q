<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="12" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#��������" type="1" suggest_level="1" visible="1" next_id="13">
		<description>
			��Ȼ��������������ǰ���ȥ·Ҳ�����ﵲס�ˣ�ϣ��Ӣ���ܹ���ͨ��·��Ҳ�����ҵ�ȫ����ˡ�
		</description>
		<dialogue>
			<brief>��Ȼ��������������ǰ���ȥ·Ҳ�����ﵲס�ˣ�ϣ��Ӣ���ܹ���ͨ��·��Ҳ�����ҵ�ȫ����ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��Щ��������ǵ��������������𣿲��Ƕ������𣿰�������ͷ��̫�ѵ��ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="11" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:125,POSY:113,STR:��ʬ># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��·�Ŀ�,NPCKEYNAME:����·�Ŀ�>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��ʬ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>