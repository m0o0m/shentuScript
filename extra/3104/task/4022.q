<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4022" name="[֧��]-�����ŵ��о�" type="2" suggest_level="1" visible="1">
		<description>
			�ں����ؾ�������������֮ˮ���������ܣ�Ϊ�˽ҿ�������ܣ����Ѿ��������о��˺ܾá����ǣ����ʱ��һֱ�д����ĺ�ħצ�����ҷ���Ϯ�������ظ������ҵ��о���\n������ʿ��ϣ�����ܹ�Ϊ����������Щ��ħצ����ɱ��20ֻ��ħ�̴Ӻ�20ֻ��ħ������
		</description>
		<dialogue>
			<brief>�ں����ؾ�������������֮ˮ���������ܣ�Ϊ�˽ҿ�������ܣ����Ѿ��������о��˺ܾá����ǣ����ʱ��һֱ�д����ĺ�ħצ�����ҷ���Ϯ�������ظ������ҵ��о���\n������ʿ��ϣ�����ܹ�Ϊ����������Щ��ħצ����ɱ��20ֻ��ħ�̴Ӻ�20ֻ��ħ������</brief>
			<await>��ȥ������Щ��ħ�̴Ӻͺ�ħ�����ɣ�\n</await>
			<finish>��������ΪŰ���ײ��ޱȣ�������������ʵ����̫���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[����20ֻ#LINK<MAP:����4,POSX:140,POSY:70,STR:��ħ�̴�,MOVE:1>##MONSTERGROUP0#��20ֻ#LINK<MAP:����4,POSX:140,POSY:70,STR:��ħ����,MOVE:1>##MONSTERGROUP1#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[���Ѿ�������#COLORCOLOR_GREENG#��ħ�̴�#COLOREND#��#COLORCOLOR_GREENG#��ħ����#COLOREND#���س���һ����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#�ɣ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="��ħ�̴�1" />
					<group_hunting keyname="������ħ�̴�1" />
					<group_hunting keyname="��Ӣ��ħ�̴�1" />
				</group>
				<group n="20" >
					<group_hunting keyname="��ħ����1" />
					<group_hunting keyname="������ħ����1" />
					<group_hunting keyname="��Ӣ��ħ����1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="8888" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>