<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="810" name="#COLORCOLOR_YELLOW#[���] #COLORCOLOR_ORANGE#���ڿ�#COLORCOLOR_RED#(�ɽ�)" type="2" suggest_level="1" visible="1">
		<description>
			ȥ�����������8���������͸��������ש����ô���������������˰ɣ���������Ǯ���һ��׬�
		</description>
		<dialogue>
			<brief>ȥ�����������8��������͸��������ש����ô���������������˰ɣ���������Ǯ���һ��׬�</brief>
			<await>�Ͻ��ģ�ȥ����8�����������������û������ˡ�</await>
			<finish>��ô������ˣ�������������Ľ�ש���úÿ���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:�ھ�����8������,NPCKEYNAME:��ɽ�ǿ���,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����,NPCKEYNAME:��ɽ�ǿ���,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="8" >
					<group_hunting keyname="�ڿ�" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>