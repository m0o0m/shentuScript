<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3145" name="[����]-�������" type="1" suggest_level="1" visible="1" next_id="3146">
		<description>
			�����ǽ�һ��̽��а���ʵ���ɡ���������а����ɱ30ֻа��ɮ�£�����̽���н�·�ߡ���Щɮ��������ɮ����ʵ��׷���ߣ�������Ȼ�������ͷ��һ�������޺������ӣ���������ȴ�Ǽ���а��ġ�
		</description>
		<dialogue>
			<brief>�����ǽ�һ��̽��а���ʵ���ɡ����������а����ɱ30ֻа��ɮ�£�����̽���н�·�ߡ�</brief>
			<await>·��̽�����ô���ˣ�</await>
			<finish>�ܺã�����һ��а��ĵ��ζ�����ˣ��������ˣ�����Ϣһ�£���һ���һὫһ���ǳ���Ҫ�����񽻸��㡣</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3144" />
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
			<![CDATA[ȥ#LINK<MAP:а��1,POSX:86,POSY:196,STR:���а��,MOVE:1>#����30ֻ����#COLORCOLOR_YELLOW#ҹ��ɮ����ɮ����������...#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ����#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#·���Ѿ�̽�����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="30" >
					<group_hunting keyname="ҹ��ɮ1" />
					<group_hunting keyname="����ҹ��ɮ1" />
					<group_hunting keyname="����ҹ��ɮ1" />
					<group_hunting keyname="��Ӣҹ��ɮ1" />
					<group_hunting keyname="��ɮ1" />
					<group_hunting keyname="������ɮ1" />
					<group_hunting keyname="������ɮ1" />
					<group_hunting keyname="��Ӣ��ɮ1" />
					<group_hunting keyname="��������1" />
					<group_hunting keyname="������������1" />
					<group_hunting keyname="�����������1" />
					<group_hunting keyname="��Ӣ��������1" />
					<group_hunting keyname="Ӱ��1" />
					<group_hunting keyname="Ӱ��2" />
					<group_hunting keyname="����Ӱ��1" />
					<group_hunting keyname="����Ӱ��1" />
					<group_hunting keyname="����Ӱ��2" />
					<group_hunting keyname="��ӢӰ��1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>