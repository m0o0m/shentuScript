<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3322" name="[����]-���ԹŴ�������(2)" type="1" suggest_level="1" visible="1" next_id="3323">
		<description>
			��Щ�̿���ʹ�õİ�����Ŵ̿�ְҵ����ʧ����ʧ�ˣ����ڶ�����Щ���ֵġ���������ɽ�ǵ�ʦͽ����Ա���ܻ���ʶ�����ķ����������Ź�ǣ�ȥ�������ʰɡ�
		</description>
		<dialogue>
			<brief>��Щ�̿���ʹ�õİ�����Ŵ̿�ְҵ����ʧ����ʧ�ˣ����ڶ�����Щ���ֵġ���������ɽ�ǵ�ʦͽ����Ա���ܻ���ʶ�����ķ����������Ź�ǣ�ȥ�������ʰɡ�</brief>
			<await>ȥ����ɽ�ǵ�ʦͽ����Աѯ��һ����</await>
			<finish>�ܹ��ٴμ����㣬����̫�����ˡ����ڣ����Ѿ���Ϊ�������µ�Ӣ���ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="55" max_num="200" />
			<prologues>
				<group>
					<prologue id="3321" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="��д��"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[������ɽ�ǣ���#NPCLINK<STR:ʦͽ����Ա,NPCKEYNAME:ʦͽ����Ա,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[������ɽ�ǣ���#NPCLINK<STR:ʦͽ����Ա,NPCKEYNAME:ʦͽ����Ա,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="��д��"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="255000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>