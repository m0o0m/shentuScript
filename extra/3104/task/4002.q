<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4002" name="[֧��]-ί��(2)" type="2" suggest_level="1" visible="1">
		<description>
			����һ�������ߣ���˭˵�����߾�û�м��أ��ҵļ�����ں��С�\n����ÿ���Ҷ�ϲ�������󺣣���ϲ��ȥ�������㣬�ɼ����壬��ʰĵ�ã����˵�ʱ�򣬻���Ū��Щ���顣\n�����Դ�����������Ҿ���û�м�����Щ�����ˡ���\n�����������ڷ����˺����ؾ���������ܸ���Ū������һЩ�����ݺ�ɺ�����һ���㱨��ġ�\n��������˵�������ݾ����ؾ�������һ�����ڶ������ڴ��������ֺ;�ǯз��ϲ��ǯ��ɺ��������ĥצ�ӡ�
		</description>
		<dialogue>
			<brief>����һ�������ߣ���˭˵�����߾�û�м��أ��ҵļ�����ں��С�\n����ÿ���Ҷ�ϲ�������󺣣���ϲ��ȥ�������㣬�ɼ����壬��ʰĵ�ã����˵�ʱ�򣬻���Ū��Щ���顣\n�����Դ�����������Ҿ���û�м�����Щ�����ˡ���\n�����������ڷ����˺����ؾ���������ܸ���Ū������һЩ�����ݺ�ɺ�����һ���㱨��ġ�\n��������˵�������ݾ����ؾ�������һ�����ڶ������ڴ��������ֺ;�ǯз��ϲ��ǯ��ɺ��������ĥצ�ӡ�</brief>
			<await>��ҪһЩ�����ݺ�ɺ������\n</await>
			<finish>���ء��������ζ�����������ҵ����ѣ���Щ�������ҵ�һ�����⣬�����°ɡ�\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="100" />
			<prologues>
				<group>
					<prologue id="4001" />
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
				<trophy monster="������1" item="ɺ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="3333" />
				<trophy monster="����������1" item="ɺ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
				<trophy monster="��Ӣ������1" item="ɺ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
				<trophy monster="��ǯз1" item="ɺ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="3333" />
				<trophy monster="������ǯз1" item="ɺ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
				<trophy monster="��Ӣ��ǯз1" item="ɺ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="5000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ǰ��#LINK<MAP:����1,POSX:115,POSY:105,STR:�ؾ�����һ��,MOVE:1>#���ɼ�5��#LINK<MAP:����1,POSX:123,POSY:63,STR:������,MOVE:1>##ITEMGROUP0#��ɱ��#COLORCOLOR_GREENG#������#COLOREND#��#COLORCOLOR_GREENG#��ǯз#COLOREND#�õ�10��#LINK<MAP:����1,POSX:74,POSY:144,STR:ɺ��,MOVE:1>##ITEMGROUP1#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ض��ٳ���#NPCLINK<STR:������·��,NPCKEYNAME:�����ؾ�����,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="5" bind_require="2" >
					<group_item keyname="������" />
				</group>
				<group n="10" bind_require="1" >
					<group_item keyname="ɺ��" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
			<awards>
				<award keyname="����"  n="15" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>