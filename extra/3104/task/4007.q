<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4007" name="[֧��]-׽��" type="2" suggest_level="1" visible="1" next_id="4008">
		<description>
			С�ӣ���Ҳ��ǰ��̽���İɣ��˴�Σ�����أ�ˮ���ܼ���һ��С�ľͻ�����Σ��֮�У���Ȱ�㻹�ǲ�Ҫ��������ĺá�\n�����������˴�������ʯ����������㣬��Ȼ���ײУ���������ȴ�ر������������ɲ��Ⱥ󣬷�����֭��ɫ��ζŨ�����Դ������������벻����Ч����������Ϊ��׽��ʯ����������㣬�ҿ���������ʳ��󣬸���һЩ��\n
		</description>
		<dialogue>
			<brief>С�ӣ���Ҳ��ǰ��̽���İɣ��˴�Σ�����أ�ˮ���ܼ���һ��С�ľͻ�����Σ��֮�У���Ȱ�㻹�ǲ�Ҫ��������ĺá�\n�����������˴�������ʯ����������㣬��Ȼ���ײУ���������ȴ�ر������������ɲ��Ⱥ󣬷�����֭��ɫ��ζŨ�����Դ������������벻����Ч����������Ϊ��׽��ʯ����������㣬�ҿ���������ʳ��󣬸���һЩ��\n</brief>
			<await>��ȥץЩʯ��������������ɡ�\n</await>
			<finish>��ô���׽��ʯ������������ˣ�\n������Ĳ������������㣬�����ϰ�����������ʳ���һ������ʧ���ģ���������\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="45" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ǰ��#LINK<MAP:����1,POSX:74,POSY:144,STR:�����ؾ�һ��,MOVE:1>#��ɱ��#LINK<MAP:����1,POSX:74,POSY:144,STR:ʯ����,MOVE:1>#��#LINK<MAP:����1,POSX:74,POSY:144,STR:������,MOVE:1>#�����10ֻ#COLORCOLOR_GREENG#���ʵ�ʯ����#COLOREND##ITEM0#��10ֻ#COLORCOLOR_GREENG#���ʵ�������#COLOREND##ITEM1#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�غ�����ڣ���#NPCLINK<STR:�ؾ�����,NPCKEYNAME:�ؾ�����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="���ʵ�ʯ����"  n="10" bind_require="2" />
				<item keyname="���ʵ�������"  n="10" bind_require="2" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="70000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
			<awards>
				<award keyname="ʯ���㴮��"  n="1" bind_require="0" />
				<award keyname="�����㿾��Ƭ"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>