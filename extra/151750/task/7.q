<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="7" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#��Ů֮��" type="1" suggest_level="1" visible="1" next_id="8">
		<script name="����ִ�нű�" />
		<description>
			Ӣ�ۣ��ղ���һ��ͬʱ���ұ�����ֻ�Ǻ�������̫�࣬���Ǳ���ɢ�ˣ�ϣ��Ӣ���ܹ�ǰȥ��ȡ�
		</description>
		<dialogue>
			<brief>Ӣ�ۣ��ղ���һ��ͬʱ���ұ�����ֻ�Ǻ�������̫�࣬���Ǳ���ɢ�ˣ�ϣ��Ӣ���ܹ�ǰȥ��ȡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��лӢ����ȡ���λ����Ҳ��Ӣ����ȣ��������̫���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="6" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:71,POSY:111,STR:������># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ�#NPCLINK<STR:��·�Ĵ���,NPCKEYNAME:����·�Ĵ���>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="30000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="7000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>