<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3347" name="[����]-���յĽ���(3)" type="1" suggest_level="1" visible="1" next_id="">
		<script name="3347" />
		<description>
			�����ؾ���ˮ֮���Ѿ��������ɢ�����ڣ�����һ��������Ѿ�������������ʱ������ǵ���ɫ�����ˡ�\n�����Ҽǵ�����һ���Ѿ������˴����Ĺ����һ���㽫����ؾ�������ǿ��ĵ��ˣ��Ǿ��ǿ־�ĺ�ħ����.����5ֻ�͹���!
		</description>
		<dialogue>
			<brief>�����ؾ���ˮ֮���Ѿ��������ɢ�����ڣ�����һ��������Ѿ�������������ʱ������ǵ���ɫ�����ˡ�\n�����Ҽǵ�����һ���Ѿ������˴����Ĺ����һ���㽫����ؾ�������ǿ��ĵ��ˣ��Ǿ��ǿ־�ĺ�ħ����.����5ֻ�͹���!</brief>
			<await>��û�������㹻�ĺ�ħ������?</await>
			<finish>�ܺã�ǰ���ĵ�·�Ѿ�������������չ���Ժ�ħ�Ľ���!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="57" max_num="200" />
			<prologues>
				<group>
					<prologue id="3346" />
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
			<![CDATA[����#LINK<MAP:����5,POSX:39,POSY:95,STR:��ħ��Ѩ,MOVE:1>#,��ɱ5ֻ#LINK<MAP:����4,POSX:139,POSY:73,STR:��ħ����,MOVE:1>##MONSTERGROUP0#�����.]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�������ڴ�,��#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��ħ����1" />
					<group_hunting keyname="��ħ����2" />
					<group_hunting keyname="��ħ����3" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="7820000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>