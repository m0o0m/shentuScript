<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3325" name="[����]-���ԹŴ�������(5)" type="1" suggest_level="1" visible="1" next_id="3326">
		<script name="3325" />
		<description>
			����λ�̿�ǰ���������У����ǿ��Կ���սʤ��ħ�ķ��������٣���Ϊ����Ƭ��������ɢ���������ϣ����ִ͸�����������������ܾ������������֣���ɱ��������ô��������������ħ��������\n������ȥ��ɱ2ֻ��ħ���֣�30ֻ�ؾ�������30ֻ�ؾ������ɡ�
		</description>
		<dialogue>
			<brief>����λ�̿�ǰ���������У����ǿ��Կ���սʤ��ħ�ķ��������٣���Ϊ����Ƭ��������ɢ���������ϣ����ִ͸�����������������ܾ������������֣���ɱ��������ô��������������ħ��������\n������ȥ��ɱ2ֻ��ħ���֣�30ֻ�ؾ�������30ֻ�ؾ������ɡ�</brief>
			<await>�㻹û�������㹻��Ĵ��ֺͺ�����</await>
			<finish>����սʤ��ħ�ĵ�һ���������Ժ��ð���о�����������ֺͺ����ɣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3324" />
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
			<![CDATA[���뺣���ؾ�������Ĳ㣬����2ֻ#LINK<MAP:����4,POSX:139,POSY:73,STR:��ħ����,MOVE:1>##MONSTERGROUP0#��30ֻ#LINK<MAP:����3,POSX:73,POSY:138,STR:�ؾ�����,MOVE:1>##MONSTERGROUP1#��30ֻ#LINK<MAP:����3,POSX:69,POSY:134,STR:�ؾ�����,MOVE:1>##MONSTERGROUP2#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�غ������,��#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="2" >
					<group_hunting keyname="��ħ����1" />
					<group_hunting keyname="��ħ����2" />
					<group_hunting keyname="��ħ����3" />
				</group>
				<group n="30" >
					<group_hunting keyname="�ؾ�����1" />
				</group>
				<group n="30" >
					<group_hunting keyname="�ؾ�����1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10480000" ingot="0" bind_ingot="0" integral="0" gold="100000" bind_gold="0" >
			<awards>
				<award keyname="����ѩ˪��"  n="5" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>