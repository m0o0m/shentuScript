<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3014" name="[����]-��Ѫ��������(2)" type="1" suggest_level="1" visible="1" next_id="3015">
		<script name="3014" />
		<description>
			������ΧͻȻ����������ľ���ˣ�Ҳ����������Ͽ����ҵ�������
		</description>
		<dialogue>
			<brief>������ΧͻȻ����������ľ���ˣ�Ҳ����������Ͽ����ҵ�������</brief>
			<await>��ľ��������Ѱ�������ɣ�</await>
			<finish>�������͸��ɷ�Ķ��������һֱ���������������Ȼ��ı����ˣ������˵ؿ���������\n������ʿ��лл������һ����ɷ����������ҵĸм������⣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3013" />
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
				<trophy monster="ľ����" item="��Ѫ��������" min_num="1" max_num="1" bind_require="1" limit="1" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڴ��Ӹ�������#LINK<MAP:���ִ�,POSX:186,POSY:162,STR:ľ����,MOVE:1>#��ô�Ѫ��������#ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:������,NPCKEYNAME:���ִ���������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="1" >
					<group_item keyname="��Ѫ��������" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2800" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="�ƽ�����"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>