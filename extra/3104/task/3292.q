<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3292" name="[����]-ˮ��ʯ������(4)" type="1" suggest_level="1" visible="1" next_id="3301">
		<script name="3292" />
		<description>
			��ö�����ڵ����������������ڵ�������ʵ����ܴ󣬵��ǣ�����֮���к����ԨԴ����\n��������Ҫ�������ɫ��������о������ܷ�������ȥѰ�Ҹ������ɫ���壿�������ϵ����ˣ�����˵�Ӻ��й�������Ͽ��Եõ���
		</description>
		<dialogue>
			<brief>��ö�����ڵ����������������ڵ�������ʵ����ܴ󣬵��ǣ�����֮���к����ԨԴ����\n��������Ҫ�������ɫ��������о������ܷ�������ȥѰ�Ҹ������ɫ���壿�������ϵ����ˣ�����˵�Ӻ��й�������Ͽ��Եõ���</brief>
			<await>��û���ռ���10ö��ɫ������?</await>
			<finish>������Щ��ɫ���壬Ӧ�ÿ����ڴ�һ������˼�ķ��֡�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="200" />
			<prologues>
				<group>
					<prologue id="3291" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<items>
				<item keyname="��ɫ��ʯ"  n="1" bind_require="1" />
			</items>
		</requirements>
		<process>
			<trophies>
				<trophy monster="ʯ����1" item="��ɫ����" min_num="1" max_num="1" bind_require="1" limit="10" chance="1500" />
				<trophy monster="������1" item="��ɫ����" min_num="1" max_num="1" bind_require="1" limit="10" chance="1600" />
				<trophy monster="������1" item="��ɫ����" min_num="1" max_num="2" bind_require="1" limit="10" chance="1800" />
				<trophy monster="��ǯз1" item="��ɫ����" min_num="1" max_num="1" bind_require="1" limit="10" chance="1800" />
				<trophy monster="�ؾ�����1" item="��ɫ����" min_num="1" max_num="2" bind_require="1" limit="10" chance="2000" />
				<trophy monster="�ؾ�����1" item="��ɫ����" min_num="1" max_num="2" bind_require="1" limit="10" chance="2000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[���뺣�׳���,ͨ����ɱ��������ռ�10ö#LINK<MAP:����1,POSX:85,POSY:141,STR:��ɫ����,MOVE:1>##ITEM0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ص����ǣ����ռ�������ɫ���彻��#NPCLINK<STR:ħ������,NPCKEYNAME:��������,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="��ɫ����"  n="10" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="6530000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��λʯ"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>