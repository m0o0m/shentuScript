<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3107" name="[����]-�ӻ��̵�����" type="1" suggest_level="1" visible="1" next_id="3108">
		<script name="3107" />
		<description>
			���������֩�����ڿ��ٷ�ֳ����һ���Ǳ���ħ��а����ʴ��Ե�ʣ�������ЩС��������ʲô�����Ǳ���ʴ������ǣ�ӵ�и�ǿ�ҵĶ��ԣ������С�ı�����ҧ�ˣ���ǳ����鷳����ϧ��ʵ�����㣬�޷��������֩��Ķ�Һ�����ܳ�������10ֻ����֩�����һ�����ǵ������������Ҵ���3�ݶ�Һ��
		</description>
		<dialogue>
			<brief>���������֩�����ڿ��ٷ�ֳ����һ���Ǳ���ħ��а����ʴ��Ե�ʣ�������ЩС��������ʲô�����Ǳ���ʴ������ǣ�ӵ�и�ǿ�ҵĶ��ԣ������С�ı�����ҧ�ˣ���ǳ����鷳����ϧ��ʵ�����㣬�޷��������֩��Ķ�Һ�����ܳ�������10ֻ����֩�����һ�����ǵ������������Ҵ���3�ݶ�Һ��</brief>
			<await>��ɱ��10ֻ����֩����3�ݶ�Һ��������</await>
			<finish>������Һ��Ʒ�ʷǳ��Ĳ����Ǻǣ�лл�㣬��������Σ�գ��ָ��Ҵ�����Ī��ĺô���СС��Ʒ�����ɾ��⡣</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3106" />
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
				<trophy monster="����֩��" item="��Һ" min_num="1" max_num="1" bind_require="1" limit="3" chance="10000" />
				<trophy monster="��������֩��" item="��Һ" min_num="1" max_num="1" bind_require="1" limit="3" chance="10000" />
				<trophy monster="��������֩��" item="��Һ" min_num="1" max_num="1" bind_require="1" limit="3" chance="10000" />
				<trophy monster="��Ӣ����֩��" item="��Һ" min_num="1" max_num="1" bind_require="1" limit="3" chance="10000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ȥ������ɱ��10ֻ#LINK<MAP:����,POSX:164,POSY:102,STR:����֩��,MOVE:1>##MONSTERGROUP0#��������3��#COLORCOLOR_YELLOW#��Һ#COLOREND##ITEMGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�Ѷ�Һ�������ǵ�#NPCLINK<STR:�ӻ���,NPCKEYNAME:�����ӻ���,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_items>
				<group n="3" bind_require="1" >
					<group_item keyname="��Һ" />
				</group>
			</group_items>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="����֩��" />
					<group_hunting keyname="��������֩��" />
					<group_hunting keyname="��������֩��" />
					<group_hunting keyname="��Ӣ����֩��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>