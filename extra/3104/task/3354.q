<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3354" name="[����]-ʧ����ת��" type="1" suggest_level="1" visible="1" next_id="">
		<description>
			��Ȼ�˽��ѡ���������������һ���˲��õ��񽣣�������а취�϶���ϧһ�д��۽����޸����ƣ��벻Ҫ����һ��������һ��ΰ����Ʒ���𾴣���������ϧ��û�а취����ת��˽������˰ɣ��Һܱ�Ǹ��
		</description>
		<dialogue>
			<brief>��Ȼ�˽��ѡ���������������һ���˲��õ��񽣣�������а취�϶���ϧһ�д��۽����޸����ƣ��벻Ҫ����һ��������һ��ΰ����Ʒ���𾴣���������ϧ��û�а취����ת��˽������˰ɣ��Һܱ�Ǹ��</brief>
			<await>��Ǹ,���򽣵�ԭ����ת���ҵ�Ǹ��~</await>
			<finish>��Ȼ���ź��������������ٴ��һ������ʧȥ�Ķ���������Ȼ�����ˣ�лл�㣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3353" />
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
			<![CDATA[ȥ�ؾ������Ĳ�,�������Ľ�����#NPCLINK<STR:ð����,NPCKEYNAME:ð����,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ�ؾ������Ĳ�,�������Ľ�����#NPCLINK<STR:ð����,NPCKEYNAME:ð����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="165000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��Ӱ����"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>