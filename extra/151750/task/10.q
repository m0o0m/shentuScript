<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#Ѱ��Դͷ" type="1" suggest_level="1" visible="1" next_id="11">
		<script name="����ִ�нű�" />
		<description>
			С�ӣ����������á����������о���û�У��������߰ɡ�
		</description>
		<dialogue>
			<brief>С�ӣ����������á����������о���û�У��������߰ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�����ˣ�ʵ���пɡ��ܵ���������֤����ǵ���֮���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="9" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:106,POSY:91,STR:�󶴷ɶ�># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����ɢ��,NPCKEYNAME:������ɢ��>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="ɽ������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="10000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>