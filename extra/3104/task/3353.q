<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3353" name="[����]-�����Ľ�" type="1" suggest_level="1" visible="1" next_id="">
		<description>
			��Ȼ�����һ����ˣ������ý����ں�ˮ֮�У���ѽ��Ѿ�ʧȥ��ԭ�����ԣ�̫��ϧ�ˣ�\n����һ���з������Իָ��ģ�����˵���ǵ��������ⷽ�����Ÿ���ļ��������ܰ�����Ϊ���޸���ѽ���
		</description>
		<dialogue>
			<brief>��Ȼ�����һ����ˣ������ý����ں�ˮ֮�У���ѽ��Ѿ�ʧȥ��ԭ�����ԣ�̫��ϧ�ˣ�\n����һ���з������Իָ��ģ�����˵���ǵ��������ⷽ�����Ÿ���ļ��������ܰ�����Ϊ���޸���ѽ���</brief>
			<await>ȥѰ��һ�����������~</await>
			<finish>���Ѿ��ҵ���ѽ���������ѽ���������ϴ����Ѿ���������û���޸��İ취����Ǹ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3352" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="��ֵĽ�2"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[������#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:����,NPCKEYNAME:��������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>