<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="13" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#����ǰ��" type="1" suggest_level="1" visible="1" next_id="14">
		<script name="����ִ�нű�" />
		<description>
			Ӣ�����ȫ�п����ˣ��Ȱ�ȫ�ˣ���Ը����Լ��ڵĿ󶼸��㡣
		</description>
		<dialogue>
			<brief>Ӣ�����ȫ�п����ˣ��Ȱ�ȫ�ˣ���Ը����Լ��ڵĿ󶼸��㡣</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��л��ү��ȣ��ҵθ���ѽ�������̫�����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="12" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:147,POSY:89,STR:���ؽ�ʬ># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:������,NPCKEYNAME:��������>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��֫��ʬ" />
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