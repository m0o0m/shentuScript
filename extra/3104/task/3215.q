<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3215" name="[����]-���ص�����(7)" type="1" suggest_level="1" visible="1" next_id="3216">
		<description>
			�ǳ��������������ң�����ֻ��������ôǿ�����ʿ�����ܰ�����ˡ�\n������������ħʯ�߷����˻���ʯ������ֻ���ڵص��ҽ��вŻ�����ĸ�Ʒ�ʿ�ʯ���Ǵ��춥�������͸߷�װ���Ĳ��ϣ��ܹ����������Ū��10�������
		</description>
		<dialogue>
			<brief>�ǳ��������������ң�����ֻ��������ôǿ�����ʿ�����ܰ�����ˡ�\n������������ħʯ�߷����˻���ʯ������ֻ���ڵص��ҽ��вŻ�����ĸ�Ʒ�ʿ�ʯ���Ǵ��춥�������͸߷�װ���Ĳ��ϣ��ܹ����������Ū��10�������</brief>
			<await>��˵������ʯ���ҽ��緢������棬��ʯ���ڵ���ħū�����ղأ�ֻҪ��ɱ���ǣ����п����ҵ�����ʯ��</await>
			<finish>��Ȼ�Ƕ�����ѽ�����Կ��Ը��ܵ�ǿ��Ļ�ϵħ���Ĳ���������������ʯ��һ�����Դ��켸������������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="35" max_num="200" />
			<prologues>
				<group>
					<prologue id="3214" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="��ħū��1" item="����ʯ" min_num="1" max_num="1" bind_require="2" limit="10" chance="7500" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[����ħʯ�߻�����ħū�ͣ���ȡ10��#LINK<MAP:��ħʯ��1,POSX:56,POSY:148,STR:����ʯ,MOVE:1>##ITEMGROUP0#���Ҷ��ٳǵ�����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:����,NPCKEYNAME:���ٳ�����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="10" bind_require="2" >
					<group_item keyname="����ʯ" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="300000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>