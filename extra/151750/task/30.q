<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="30" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#���붴Ѩ" type="1" suggest_level="1" visible="1" next_id="31">
		<description>
			��Щ�����淳��ɱ��һֻ����һֻ���·�û���������Ҫ�ָ�һ�£�ʣ�µĽ������ˡ�
		</description>
		<dialogue>
			<brief>��Щ�����淳��ɱ��һֻ����һֻ���·�û���������Ҫ�ָ�һ�£�ʣ�µĽ������ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>Ӣ�ۡ������ˣ����ˣ����ҳ�ȥ�ɣ����ﲻ���˴��ĵط���̫�����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="29" />
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
			<![CDATA[#LINK<MAP:��򼶴һ��,POSX:80,POSY:81,STR:���,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:���˺�,NPCKEYNAME:���涴һ�����˺�,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="���" />
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