<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="46" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��Ѩ���" type="1" suggest_level="1" visible="1" next_id="47">
		<description>
			����������ȥӦ����ͨ����һ�����ڣ�����������㶼�����ֲ��ˣ��²����ô������֪��������ô֪�����ߣ��ô���Ҳ������֮�ˣ���ͨ���ģ���֪���������ðɺðɣ�֮ǰ����һ���Ϻ��У��������ҵġ�����ǰ������ڶ࣬����ֻ��ɱ��ȥ�ˡ�
		</description>
		<dialogue>
			<brief>����������ȥӦ����ͨ����һ�����ڣ�����������㶼�����ֲ��ˣ��²����ô������֪��������ô֪�����ߣ��ô���Ҳ������֮�ˣ���ͨ���ģ���֪���������ðɺðɣ�֮ǰ����һ���Ϻ��У��������ҵġ�����ǰ������ڶ࣬����ֻ��ɱ��ȥ�ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>������̽Ѱ���˴������ʩ��Ҳ������Ѱ���˵ȡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="45" />
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
			<![CDATA[#LINK<MAP:������,POSX:34,POSY:43,STR:ʳ��Ы��,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�Ϻ���,NPCKEYNAME:ʳ�˶��Ϻ���,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="15" >
					<group_hunting keyname="ʳ��Ы��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="5300000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>