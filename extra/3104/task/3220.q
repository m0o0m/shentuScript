<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3220" name="[����]-�������ص�Լ��(4)" type="1" suggest_level="1" visible="1" next_id="3221">
		<description>
			���ź��ظ����㣬��࡭��������һ���¸ҵ�սʿ�������Ƿ�����ħʯ��֮�����Ͳμ����������ħʯ�ߵ���飬���ǣ�����Ҳû�л�����\n�������룬���Ѿ������ˣ�����Ҳ����ȷ�϶�����յ����������ǣ���ħʯ��̫Σ���ˣ���ô�����ܰ�����ǰ����ħʯ���һض���������
		</description>
		<dialogue>
			<brief>���ź��ظ����㣬��࡭��������һ���¸ҵ�սʿ�������Ƿ�����ħʯ��֮�����Ͳμ����������ħʯ�ߵ���飬���ǣ�����Ҳû�л�����\n�������룬���Ѿ������ˣ�����Ҳ����ȷ�϶�����յ����������ǣ���ħʯ��̫Σ���ˣ���ô�����ܰ�����ǰ����ħʯ���һض���������</brief>
			<await>ǰ����ʯ�ߣ��һض�������~</await>
			<finish>���Ƕ������š�����������ʧȥ��һ���¸ҵ�սʿ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3219" />
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
				<trophy monster="��ħ����1" item="մѪ������" min_num="1" max_num="1" bind_require="2" limit="1" chance="2000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[����ħʯ�߻�����ħ������ȡ��#LINK<MAP:��ħʯ��1,POSX:56,POSY:148,STR:մѪ������,MOVE:1>##ITEMGROUP0#���Ҷ��ٳǵ��ϱ�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�붫�ٳǵ�#NPCLINK<STR:�ϱ�,NPCKEYNAME:���ٳ��ϱ�,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="մѪ������" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>