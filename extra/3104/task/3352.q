<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3352" name="[����]-ʧ��֮��" type="1" suggest_level="1" visible="1" next_id="3253">
		<description>
			Ӣ�ۣ��ܹ������������˸��ˡ���֪���������������Ŵ�½��Ӣ�ۣ�ֻ�ǣ���һ��������ʧ���ˡ����꣬�����������ػ�һ�����������Ʒ�ľ޴��������Ҵ����ȴʧȥ����Ϣ��\n�������룬�ܿ����ǳ�û�˰ɣ��������˱��˵����¡��Ҽ��洫��һ������Ҳ��֮��ʧ�ˡ������˭�������һ��ǰѽ����������Ҽ�Ҳ�����һλ�������µ�Ӣ�ۣ�
		</description>
		<dialogue>
			<brief>Ӣ�ۣ��ܹ������������˸��ˡ���֪���������������Ŵ�½��Ӣ�ۣ�ֻ�ǣ���һ��������ʧ���ˡ����꣬�����������ػ�һ�����������Ʒ�ľ޴��������Ҵ����ȴʧȥ����Ϣ��\n�������룬�ܿ����ǳ�û�˰ɣ��������˱��˵����¡��Ҽ��洫��һ������Ҳ��֮��ʧ�ˡ������˭�������һ��ǰѽ����������Ҽ�Ҳ�����һλ�������µ�Ӣ�ۣ�</brief>
			<await>~</await>
			<finish>������ѽ���������ѽ������Ҽ��洫���Ǳ������㿴���⽣���������С��������������أ�������Ҽ���������д�ġ�����̫�м����ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3351" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<items>
				<item keyname="��ֵĽ�2"  n="1" bind_require="1" />
			</items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[�㷢�ֱ����еĽ�,Ҳ�����������Ѱ�ҵı���,������#NPCLINK<STR:ð����,NPCKEYNAME:ð����,MOVE:1>#�Ի�,������û�в¶�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�㷢�ֱ����еĽ�,Ҳ�����������Ѱ�ҵı���,������#NPCLINK<STR:ð����,NPCKEYNAME:ð����,MOVE:1>#�Ի�,������û�в¶�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="135000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>