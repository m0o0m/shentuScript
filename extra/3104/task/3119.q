<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3119" name="[����]-���ȱ����������" type="1" suggest_level="1" visible="1" next_id="3120">
		<script name="3118" />
		<description>
			�������Ѿ��������ʥ��ף����������Ҫ������������ʧ֮ǰ���ƻ�ʬū��ʬ��������Ǳ���������꣡
		</description>
		<dialogue>
			<brief>��ϸ���ܣ��������Ѿ��������ʥ��ף��������ֻҪ������������ʧ֮ǰ���ƻ�ʬū��ʬ���Ϳ��Խ��ǧ����ħʩ�����������ϵ���������������ͷ����ǵ�����ˣ�</brief>
			<await>̫���ˣ���ȥ���������汲������</await>
			<finish>лл�����Ѿ��о��������׵���꣬�����˱�ū�۵����ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3118" />
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
			<![CDATA[���ѻ������ʥ����������ȥ��ɽ��Ѩ�ƻ�20ֻ����#LINK<MAP:��ɽ��Ѩ1,POSX:82,POSY:171,STR:ʬū,MOVE:1>##MONSTERGROUP0#��ʬ���ͷ����ǵ����]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��������ɵ���Ϣ�������ǵ�#NPCLINK<STR:���˵�����,NPCKEYNAME:���˵�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="ʬū1" />
					<group_hunting keyname="ʬū2" />
					<group_hunting keyname="ʬū3" />
					<group_hunting keyname="����ʬū1" />
					<group_hunting keyname="����ʬū1" />
					<group_hunting keyname="����ʬū2" />
					<group_hunting keyname="����ʬū3" />
					<group_hunting keyname="��Ӣʬū1" />
					<group_hunting keyname="���ʬū1" />
					<group_hunting keyname="���ʬū2" />
					<group_hunting keyname="���ʬū3" />
					<group_hunting keyname="�������ʬū1" />
					<group_hunting keyname="������ʬū1" />
					<group_hunting keyname="������ʬū2" />
					<group_hunting keyname="������ʬū3" />
					<group_hunting keyname="��Ӣ���ʬū1" />
					<group_hunting keyname="����ʬū1" />
					<group_hunting keyname="����ʬū2" />
					<group_hunting keyname="����ʬū3" />
					<group_hunting keyname="����ʬū4" />
					<group_hunting keyname="��������ʬū1" />
					<group_hunting keyname="��������ʬū1" />
					<group_hunting keyname="��������ʬū2" />
					<group_hunting keyname="��������ʬū3" />
					<group_hunting keyname="��������ʬū4" />
					<group_hunting keyname="��Ӣ����ʬū1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>