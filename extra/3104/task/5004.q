<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5004" name="[����]-ѩ�����ǵĴ�˵��4��" type="2" suggest_level="1" visible="1" next_id="5005">
		<description>
			��˵�������ڷ����������Ƶ�ҩƷ����˵�������Һ���������٣�һ��Ҫ��ǿ���ȴ�٣�������żȻ�õ���һƿ��ҩ��������ȫ�β����ҵ��ˣ�������֮����˵���и��߼���ҩ����ǿЧ��ҩ�ģ������5ƿ���ɡ�
		</description>
		<dialogue>
			<brief>��˵�������ڷ����������Ƶ�ҩƷ����˵�������Һ���������٣�һ��Ҫ��ǿ���ȴ�٣�������żȻ�õ���һƿ��ҩ��������ȫ�β����ҵ��ˣ�������֮����˵���и��߼���ҩ����ǿЧ��ҩ�ģ������5ƿ���ɡ�</brief>
			<await>��Ҫ5ƿǿ����ҩ��</await>
			<finish>����5ƿǿЧ�Ĳ�����Чѽ���������˲��𰡣�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5003" />
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
			<![CDATA[Ϊ����С���ǵ����ƣ����ṩ5ƿǿЧ��ҩ#ITEM0#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��׼���õ�ǿЧ��ҩ����#NPCLINK<STR:С����,NPCKEYNAME:С����,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="ǿЧ��ҩ"  n="5" bind_require="2" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1500" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>