<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4036" name="[֧��]-ѱ�޴��ˣ�1��" type="2" suggest_level="1" visible="1" next_id="4037">
		<description>
			���ﲻ���������������ƶ������һ����������ʵ����ø�ǿ���ӳ����ԣ�����ˣ�������ÿһ��ð���ߵĲ���ȱ�ٵĻ�顣��ɽ�������������������Ұ��������������Ľ���������ѱ��Ϊ����Ҹ���5����������ȥ׽һֻҰ������ɡ�
		</description>
		<dialogue>
			<brief>���ﲻ���������������ƶ������һ����������ʵ����ø�ǿ���ӳ����ԣ�����ˣ�������ÿһ��ð���ߵĲ���ȱ�ٵĻ�顣��ɽ�������������������Ұ��������������Ľ���������ѱ��Ϊ����Ҹ���5����������ȥ׽һֻҰ������ɡ�</brief>
			<await>ȥ��ɽ���������׽һֻҰ��</await>
			<finish>������ô���ѧ���˲�׽Ұ���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="4035" />
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
			<![CDATA[ȥ#LINK<MAP:��,POSX:78,POSY:93,STR:��ɽ����,MOVE:1>#��׽һֻҰ��#ITEMGROUP0#�����ѣ���׽Ұ����������ӻ��̴�Ҳ�г��ۡ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ����#NPCLINK<STR:ѱ��ʦ,NPCKEYNAME:��ɽ��ѱ��ʦ,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="��Ѫ(δ����)" />
					<group_item keyname="����(δ����)" />
					<group_item keyname="��Ӱ(δ����)" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="25000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="����(δ����)"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>