<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3346" name="[����]-���յĽ���(2)" type="1" suggest_level="1" visible="1" next_id="3347">
		<script name="3346" />
		<description>
			�����ؾ���ˮ֮���Ѿ��������ɢ�����ڣ�����һ��������Ѿ�������������ʱ������ǵ���ɫ�����ˡ�\n�����Ҽǵ�����һ���Ѿ������˴����ĺ����͸���������������ֻ��С��ɫ����ȥ��ɱ40ֻ��ħ�̴�,40ֻ��ħ�����ɣ����ǲ��Ǵ�һ
		</description>
		<dialogue>
			<brief>�����ؾ���ˮ֮���Ѿ��������ɢ�����ڣ�����һ��������Ѿ�������������ʱ������ǵ���ɫ�����ˡ�\n�����Ҽǵ�����һ���Ѿ������˴����ĺ����͸���������������ֻ��С��ɫ����ȥ��ɱ40ֻ��ħ�̴�,40ֻ��ħ�����ɣ����ǲ��Ǵ�һ</brief>
			<await>��û�������㹻�ĺ�ħ�̴Ӻͺ�ħ����~</await>
			<finish>�ܺã���Ĺ�������һֱ�������¼��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="56" max_num="200" />
			<prologues>
				<group>
					<prologue id="3345" />
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
			<![CDATA[�����ؾ������Ĳ㣬��ɱ40ֻ#LINK<MAP:����4,POSX:139,POSY:73,STR:��ħ�̴�,MOVE:1>##MONSTERGROUP0#,40ֻ#LINK<MAP:����4,POSX:139,POSY:73,STR:��ħ����,MOVE:1>##MONSTERGROUP1#�����.]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�������ڴ�,��#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="40" >
					<group_hunting keyname="��ħ�̴�1" />
				</group>
				<group n="40" >
					<group_hunting keyname="��ħ����1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="18720000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>