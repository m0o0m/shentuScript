<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="101" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��BOSS���ֵ��[����1]" type="1" suggest_level="1" visible="1" next_id="102">
		<script name="����ִ�нű�" />
		<description>
			BOSS����80������������������ɫ������ۺ�ʵ����
		</description>
		<dialogue>
			<brief>BOSS����80������������������ɫ������ۺ�ʵ����</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>BOSS���ֺ��ڿ��������ֲ����ۺ�ʵ���������ȥ�����ɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="100" />
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
			<![CDATA[����򿪣�#UILINK<STR:BOSS����,WND:ִ�нű�,PARAM:TaskBoss(10)># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�����ӳ�,NPCKEYNAME:��ɽ�������ӳ�,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="���Լ�" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>