<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="31" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#������Ű" type="1" suggest_level="1" visible="1" next_id="32">
		<script name="����ִ�нű�" />
		<description>
			ʲô���㻹Ҫ������ȥ�����ˣ���Щ�������кܸߵĹ����ԣ����С���š�
		</description>
		<dialogue>
			<brief>ʲô���㻹Ҫ������ȥ�����ˣ���Щ�������кܸߵĹ����ԣ����С���š�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�ǣ�����һ��С�һ������������ˢ�ӣ��ܵ�������Բ����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="30" />
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
			<![CDATA[#LINK<MAP:��򼶴һ��,POSX:51,POSY:68,STR:�ڰ����,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ�#NPCLINK<STR:������,NPCKEYNAME:���涴һ��������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="8" >
					<group_hunting keyname="�������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>