<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3011" name="[����]-�÷�ĳ��" type="1" suggest_level="1" visible="1" next_id="3012">
		<description>
			���ͻȻ������һȺ�ɶ�Ĺ��ÿ���˶�Ӧ�����÷��߱������Լ��������������ҿ�����Ů��һ���ܵ��˺����ҿ�����Ů������ֻ���ڴ����ˣ���ͱ�ͻȻ���ֵİ�é�˴������ֱۣ�\n������ʿ����Ҫ�Ǵ�Ӧ�Ժ��л������ҳ����Ļ����һ������㼸�����ߣ�
		</description>
		<dialogue>
			<brief>���ͻȻ������һȺ�ɶ�Ĺ��ÿ���˶�Ӧ�����÷��߱������Լ��������������ҿ�����Ů��һ���ܵ��˺����ҿ�����Ů������ֻ���ڴ����ˣ���ͱ�ͻȻ���ֵ�����ҧ�����ֱۣ�\n������ʿ����Ҫ�Ǵ�Ӧ�Ժ��л������ҳ����Ļ����һ������㼸�����ߣ�</brief>
			<await>�����Ķ��ߣ�</await>
			<finish>�������������ɣ�һ��Ҫ�ǵ���ɱ����Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3010" />
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
			<![CDATA[��#NPCLINK<STR:�÷�,NPCKEYNAME:���ִ�÷���,MOVE:1>#�Ի�
#LINK<MAP:���ִ�,POSX:189,POSY:211,STR:����,MOVE:1>##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�÷�,NPCKEYNAME:���ִ�÷���,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1200" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>