<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4013" name="[֧��]-���Ի������(4)" type="2" suggest_level="1" visible="1" next_id="4014">
		<description>
			��֪����Щ���˵ĸ�����˭���������ǿ��µĺ��֣���������һ�ָ������ܹ�����������ĸ����������ø������վ������ӣ�Ȼ����������ˮ�Ե���\n���������㣬�������ʿ���Ⱦ��ҵĶ��Ӱɣ���Ҫ������ֻ��ɱ����Щ�������ĸ������õ���ܣ����Ǹ����ĺ���ø��ң��ҽ��Ҷ�����˼���ע���У�Ȼ����������ǰ��������ĺ�ܣ����Ϳ��Իָ��ˡ�\n������ʿ����ֻ����������õ���\n
		</description>
		<dialogue>
			<brief>��֪����Щ���˵ĸ�����˭���������ǿ��µĺ��֣���������һ�ָ������ܹ�����������ĸ����������ø������վ������ӣ�Ȼ����������ˮ�Ե���\n���������㣬�������ʿ���Ⱦ��ҵĶ��Ӱɣ���Ҫ������ֻ��ɱ����Щ�������ĸ������õ���ܣ����Ǹ����ĺ���ø��ң��ҽ��Ҷ�����˼���ע���У�Ȼ����������ǰ��������ĺ�ܣ����Ϳ��Իָ��ˡ�\n������ʿ����ֻ����������õ���\n</brief>
			<await>����ɱ����Щ�������Ⱦ��ҿ����Ķ��Ӱɣ�\n</await>
			<finish>�Ѹ����ĺ���ø��Ұɣ��ҽ��ҶԶ��ӵ�˼���ע���С�\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="100" />
			<prologues>
				<group>
					<prologue id="4012" />
				</group>
				<group>
					<prologue id="4012" />
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
				<trophy monster="�ؾ�����1" item="�����ĺ��" min_num="1" max_num="1" bind_require="1" limit="1" chance="1000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[ǰ��#LINK<MAP:����3,POSX:66,POSY:96,STR:�ؾ���������,MOVE:1>#������#LINK<MAP:����3Ұ��,POSX:203,POSY:209,STR:�����ؾ�,MOVE:1>#��ɱ��#COLORCOLOR_GREENG#�ؾ�����#COLOREND#��ȡ��#COLORCOLOR_GREENG#�����ĺ��#COLOREND#��Ȼ���ȥ��#NPCLINK<STR:�ϸ���,NPCKEYNAME:�ϸ���,MOVE:1>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[�������ĺ�ܽ������ٳǵ�#NPCLINK<STR:�ϸ���,NPCKEYNAME:�ϸ���,MOVE:1># ��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="�����ĺ��"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="90000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
			<awards>
				<award keyname="ĸ�׵�˼��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>