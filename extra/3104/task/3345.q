<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3345" name="[����]-���յĽ���(1)" type="1" suggest_level="1" visible="1" next_id="3346">
		<script name="3345" />
		<description>
			�����ؾ���ˮ֮���Ѿ��������ɢ�����ڣ�����һ��������Ѿ�������������ʱ������ǵ���ɫ�����ˡ�\n������ȥ��ɱ30ֻ�ؾ�������30ֻ�ؾ������ɣ�Ϊ���ս��������ؾ��������ף�
		</description>
		<dialogue>
			<brief>�����ؾ���ˮ֮���Ѿ��������ɢ�����ڣ�����һ��������Ѿ�������������ʱ������ǵ���ɫ�����ˡ�\n������ȥ��ɱ30ֻ�ؾ�������30ֻ�ؾ������ɣ�Ϊ���ս��������ؾ��������ף�</brief>
			<await>��û�������㹻�ĺ����͸�����?</await>
			<finish>�ܺã���Ĺ�������һֱ�������¼��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="57" max_num="200" />
			<prologues>
				<group>
					<prologue id="3344" />
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
			<![CDATA[�����ؾ��������㣬��ɱ30ֻ#LINK<MAP:����3,POSX:69,POSY:134,STR:�ؾ�����,MOVE:1>##MONSTERGROUP0#,30ֻ#LINK<MAP:����3,POSX:73,POSY:138,STR:�ؾ�����,MOVE:1>##MONSTERGROUP1#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص�������ڴ�,��#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
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
		<rewards exp="10480000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>