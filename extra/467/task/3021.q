<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3021" name="[����]-����ѵ��" type="1" suggest_level="1" visible="1" next_id="3022">
		<description>
			Ϊ������������Ϥ���ܣ�ȥ�������������5ֻѱ�ޡ�
		</description>
		<dialogue>
			<brief>���Ѿ�ѧ�Ἴ�ܣ�������Ҫ��סŶ�����ֻ��������ļ��ܣ�ֻ�ж��ʹ�ã��������������ȣ����ܵ������Ż�������\n����Ϊ������������Ϥ���ܣ��Ҹ���һ���ʺ������ϰ�����ɣ�ȥ��������5ѱ�ޡ�</brief>
			<await>�����5ֻѱ�����𣬻��ܿɻ�ô�����ҽ�����</await>
			<finish>���úܺã��ɴ����߱���ٰ�ĥ������ϰ���ܺ�����ڼ���ϰ�����˳���ľ��飬���ܷ��ӳ����ܵ����������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3016" />
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
			<![CDATA[�ڴ��Ӹ�������5ֻ#LINK<MAP:���ִ�,POSX:165,POSY:149,STR:��,MOVE:1>##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��0" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="11200" ingot="0" bind_ingot="0" integral="0" gold="5000" bind_gold="0" >
			<awards>
				<award keyname="�������"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>