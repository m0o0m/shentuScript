<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="70" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��ȡ����" type="1" suggest_level="1" visible="1" next_id="71">
		<description>
			��ĵı����Ҳ�ܲ��죬����ǰ���ƺ��������ǵ���Ҳ�����ܹ�֪��������ԭ��
		</description>
		<dialogue>
			<brief>��ĵı����Ҳ�ܲ��죬����ǰ���ƺ��������ǵ���Ҳ�����ܹ�֪��������ԭ��</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>ԭ��֪����Ľ�����û��������Ϊ��Ľ����Ľ��٣��������Ķ��ҵ�����ԭ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="69" />
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
			<![CDATA[#LINK<MAP:�����������,POSX:79,POSY:128,STR:��Ķ�ͳ,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:л����,NPCKEYNAME:��������л����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="��Ķ�ͳ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="2000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>