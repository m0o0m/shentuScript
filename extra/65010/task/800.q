<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="800" name="#COLORCOLOR_YELLOW#[���]  #COLORCOLOR_ORANGE#���������" type="2" suggest_level="1" visible="1" next_id="">
		<script name="�ڿ�����" />
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
			<![CDATA[�Ͻ� #NPCLINK<STR:8�������ʯ,NPCKEYNAME:��ɽ�ǿ���,MOVE:1># #ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����,NPCKEYNAME:��ɽ�ǿ���,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="8" bind_require="2" >
					<group_item keyname="������" />
					<group_item keyname="�ƽ��" />
					<group_item keyname="������" />
					<group_item keyname="��ͭ��" />
				</group>
			</group_items>
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