<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3291" name="[����]-ˮ��ʯ������(3)" type="1" suggest_level="1" visible="1" next_id="3292">
		<description>
			ĳ���������Ũ�ȴﵽһ���̶ȣ�����ĳ������Ĺ��������۳ɾ��塣���������־���Ҳ�������γɡ�\n���������ҵĸ�Ӧ������֮���̺����������ƺ����������ڵ���������ĳ�������ԣ������ȥ��ħ�����ߣ�Ӧ�û��и����ջ�
		</description>
		<dialogue>
			<brief>ĳ���������Ũ�ȴﵽһ���̶ȣ�����ĳ������Ĺ��������۳ɾ��塣���������־���Ҳ�������γɡ�\n���������ҵĸ�Ӧ������֮���̺����������ƺ����������ڵ���������ĳ�������ԣ������ȥ��ħ�����ߣ�Ӧ�û��и����ջ�</brief>
			<await>ħ�����߻�����˽�������ɫ����</await>
			<finish>�ܸ����ٴμ����㡣�������ѯ�ʣ���ʹû�лþ������ߵĽ��ܣ���Ҳ�ǳ�����Ϊ����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3290" />
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
			<![CDATA[������#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#̸̸]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#̸̸]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>