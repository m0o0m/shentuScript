<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5022" name="[����]-������Ѫ�֣�2��" type="2" suggest_level="1" visible="1" next_id="5023">
		<description>
			ԭ������������Ѫ�ֵ���Ϣ�ģ��ţ�ȷʵ��һ��СС�����������ǡ�����Ȼ�������������һЩ���ף�������Ȼ����ȷ�����Ƿ��ᶨ���Ƶ��ػ���ش�½���������ƽ��\n�����ðɣ������Ǽ�һЩ����Ϣ�ǲ�����Ѹ��㣬���������ṩ��һЩ���ף��ţ���֪�����ǵľ���ս���ܼ�࣬��ô��3��22���Ļ��װɡ�
		</description>
		<dialogue>
			<brief>ԭ������������Ѫ�ֵ���Ϣ�ģ��ţ�ȷʵ��һ��СС�����������ǡ�����Ȼ������������һЩ���ף�������Ȼ����ȷ�����Ƿ��ᶨ���Ƶ��ػ���ش�½���������ƽ��\n�����ðɣ������Ǽ�һЩ����Ϣ�ǲ�����Ѹ��㣬���������ṩ��һЩ���ף��ţ���֪�����ǵľ���ս���ܼ�࣬��ô��3��22���Ļ��װɡ�</brief>
			<await>׼��3��22���Ļ��׽����ϱ���</await>
			<finish>�����Һ����⡣</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5021" />
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
			<![CDATA[��Ҫ�ṩ3��22������#ITEMGROUP0#������Ԫ�����ס��ϳ��ۡ����ĵ��¶����ԣ���Ů���ޡ�����һ�䣬�̵�����Ŷ��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��׼���õ�3�����׽���#NPCLINK<STR:�ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="3" bind_require="2" >
					<group_item keyname="Ԫ������(��)" />
					<group_item keyname="�ϳ���(��)" />
					<group_item keyname="���ĵ���(��)" />
					<group_item keyname="Ԫ������(Ů)" />
					<group_item keyname="�ϳ���(Ů)" />
					<group_item keyname="���ĵ���(Ů)" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="21000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>