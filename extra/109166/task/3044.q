<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3044" name="[����]-���ñ���" type="1" suggest_level="1" visible="1" next_id="3045">
		<description>
			�ǳ���лӢ�۶���ɽ�������Ĺ��ף��������ڲ��ǿ��ĵ�ʱ��ħ���ѱ���ѹ���������ö�ȴħ��������������ϣ��Ӣ��ǰȥ��ɱ��
		</description>
		<dialogue>
			<brief>�����ǽ�����ö��ĵ�Σ���ɣ�����մȾ�϶�ħ֮Ѫ�����ã����Ǿ�ȫ���������\n����ɱ�����������令����</brief>
			<await>ɱ�����������令������</await>
			<finish>�������ң�Ӣ�����ڿ������������ʵ���Ѿ��ǳ�ǿ�������ͨ���ϱ�ȥ���Ǽ���ǿ���Լ��ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3040" />
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
			<![CDATA[ȥ���ö���ɱ#LINK<MAP:���˹�Ĺһ��,POSX:332,POSY:296,STR:���þ���,MOVE:1>##MONSTERGROUP1# 
#LINK<MAP:���˹�Ĺһ��,POSX:308,POSY:298,STR:����սʿ,MOVE:1>##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�������,NPCKEYNAME:�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="79300" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>