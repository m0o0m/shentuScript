<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="63" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�������" type="1" suggest_level="1" visible="1" next_id="64">
		<script name="����ִ�нű�" />
		<description>
			�ǣ�СС�������к��ѡ����סǰ��Ĺ�������������ɡ�
		</description>
		<dialogue>
			<brief>�ǣ�СС�������к��ѡ����סǰ��Ĺ�������������ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��ô�о�����ͻȻ�ö��ˣ�Ҳ������ʼ�������ˡ��ƺ�����û�ˣ�̫���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="62" />
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
			<![CDATA[#LINK<MAP:��������һ��,POSX:107,POSY:137,STR:���սʿ,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��·��ʿ��,NPCKEYNAME:���һ��·��ʿ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="���սʿ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>