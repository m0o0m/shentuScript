<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3037" name="[����]-��������" type="1" suggest_level="1" visible="1" next_id="3038">
		<script name="3037" />
		<description>
			��·�����Ŵ�Ƭ���ֵ����أ�����׼������������֣�������·����ֲ��ʳ�����ǣ���·������������а����ʴ������񱩵�Գ����������ɳ���ʿȥ�����\n������Ը��ǰ����·�룬��������8ֻԳ����
		</description>
		<dialogue>
			<brief>��·�����Ŵ�Ƭ���ֵ����أ�����׼������������֣�������·����ֲ��ʳ�����ǣ���·������������а����ʴ������񱩵�Գ����������ɳ���ʿȥ�����\n������Ը��ǰ����·�룬��������8ֻԳ����</brief>
			<await>ǰ����·������8ֻԳ��</await>
			<finish>��Ȼ���ܳ��׽����·����Щ��Գ������һ��������þ�·�밲ȫ�ܶ࣬��������Σ�����ǵ�ũ���Ѿ������Լ�Ӧ���ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3036" />
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
			<![CDATA[ȥ��·�����#LINK<MAP:��·��,POSX:121,POSY:215,STR:Գ��,MOVE:1>##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="8" >
					<group_hunting keyname="Գ��" />
					<group_hunting keyname="�ױ�Գ��" />
					<group_hunting keyname="�����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="56000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>