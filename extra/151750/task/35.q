<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="35" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#���ͳ���" type="1" suggest_level="1" visible="1" next_id="36">
		<description>
			ǰ������Щ�޴�ĳ��ӣ�������������ǰһ��ǰȥ��ɱ�����Ӳ�������Ƕ�����ҧ��һ���ֱۣ�����Ѿ����Ǽ���֮���Ű����˾������������Ⱳ��Ҳ�Ǳ���Щ���������ˡ�
		</description>
		<dialogue>
			<brief>ǰ������Щ�޴�ĳ��ӣ�������������ǰһ��ǰȥ��ɱ�����Ӳ�������Ƕ�����ҧ��һ���ֱۣ�����Ѿ����Ǽ���֮���Ű����˾������������Ⱳ��Ҳ�Ǳ���Щ���������ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>˭������Զ�㡣�ף����˰�������Ϊ�ǳ����ء����£�ְҵ������Ҳ�ǹ���Ѱ�����𣿲��ǰ������Ҿͷ����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="34" />
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
			<![CDATA[#LINK<MAP:��򼶴����,POSX:34,POSY:102,STR:�ڰ�������,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:Ѱ����,NPCKEYNAME:���涴����Ѱ����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="а��ǯ��" />
				</group>
			</group_huntings>
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