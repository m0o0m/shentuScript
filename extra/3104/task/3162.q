<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3162" name="[����]-����ţħ��Ϯ����2��" type="1" suggest_level="1" visible="1" next_id="3162">
		<description>
			�ھ�·���������ţħռ�ݵľ�·�ǣ���Щ����������ֻ�Ǵ��ھ�·���ڣ����ٳ����ַ����࣬�����ڣ�����ͻȻ�ɳ�ţħ����ʼϮ�����ǵĿ�����Ա��\n�����������˽⣬Ϯ������һȺţħ�����Լ�����һֻ��Ӣţħ����ӢţħƮ�����������ҵ�����ȥ���10ֻţħ�����ɣ�
		</description>
		<dialogue>
			<brief>�ھ�·���������ţħռ�ݵľ�·�ǣ���Щ����������ֻ�Ǵ��ھ�·���ڣ����ٳ����ַ����࣬�����ڣ�����ͻȻ�ɳ�ţħ����ʼϮ�����ǵĿ�����Ա��\n�����������˽⣬Ϯ������һȺţħ�����Լ�����һֻ��Ӣţħ����ӢţħƮ�����������ҵ�����ȥ���10ֻţħ�����ɣ�</brief>
			<await>��ɱ10ֻţħ������</await>
			<finish>���úá�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3161" />
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
			<![CDATA[���ɱ10ֻ#LINK<MAP:��·��,POSX:64,POSY:89,STR:ţħ����,MOVE:1>##MONSTERGROUP0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:��·��ʿ��,NPCKEYNAME:��·��ʿ��,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="ţħ����1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>