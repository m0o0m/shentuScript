<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3225" name="[����]-��ħʯ�ߵ�����(2)" type="1" suggest_level="1" visible="1" next_id="3226">
		<description>
			�����ǵ�ʷ�ϼ��أ�����������ڽ���а���·�ϣ�ͻȻ��·�ĵ������������������Ʋ�ܿ��ܱ��ǽ�������ħʯ�ߡ�\n������һ����Ҫ��֤���ǣ���������ħʯ���ҵ�һЩ�����װ������˵���Ǹ�����ʹ�ù��ġ�\n����Ϊ��ȷ�����࣬��Ҫ����ħʯ���ҵ��������ʧװ����
		</description>
		<dialogue>
			<brief>�����ǵ�ʷ�ϼ��أ�����������ڽ���а���·�ϣ�ͻȻ��·�ĵ������������������Ʋ�ܿ��ܱ��ǽ�������ħʯ�ߡ�\n������һ����Ҫ��֤���ǣ���������ħʯ���ҵ�һЩ�����װ������˵���Ǹ�����ʹ�ù��ġ�\n����Ϊ��ȷ�����࣬��Ҫ����ħʯ���ҵ��������ʧװ����</brief>
			<await>ȥ��ħʯ��Ѱ�ҵ�ĳ������װ����</await>
			<finish>�������ȷʵ�е����⣬������ϸ���һ����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3224" />
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
				<trophy monster="��ħ����1" item="�⼣�߰ߵĿ���" min_num="1" max_num="1" bind_require="2" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[��#COLORCOLOR_SKYBLUE#��ħ����#COLOREND#����ȡ��#LINK<MAP:��ħʯ��1,POSX:56,POSY:148,STR:�⼣�߰ߵĿ���,MOVE:1>##ITEMGROUP0#�������ǵ��������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="�⼣�߰ߵĿ���" />
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