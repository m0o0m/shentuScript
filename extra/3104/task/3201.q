<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3201" name="[����]-�ܵ���в����������" type="1" suggest_level="1" visible="1" next_id="3202">
		<description>
			������������;�з����˶��ٳǣ�������ս��ս����ȫ������Ϊ��ʥ�������ķ��֣����Ǿ����ڷ���֮���ؽ����С�\n�������ǣ���ħ��Ȼ���������ǰ����ؽ��裬�ڴ�������������ǰ�����ٳǵ�·�ϣ���ħ�ɳ���һ����ħ��̽Ϯ�����ǵ���Ա���ٻ����ǵ����ʡ���ȥ�������ǰɣ�ֻҪ��ɱ10����ħ��̽������ȷ��·�߰�ȫ��
		</description>
		<dialogue>
			<brief>������������;�з����˶��ٳǣ�������ս��ս����ȫ������Ϊ��ʥ�������ķ��֣����Ǿ����ڷ���֮���ؽ����С�\n�������ǣ���ħ��Ȼ���������ǰ����ؽ��裬�ڴ�������������ǰ�����ٳǵ�·�ϣ���ħ�ɳ���һ����ħ��̽Ϯ�����ǵ���Ա���ٻ����ǵ����ʡ���ȥ�������ǰɣ�ֻҪ��ɱ10����ħ��̽������ȷ��·�߰�ȫ��</brief>
			<await>ֻҪ��ɱ10����ħ��̽������ȷ��·�߰�ȫ��</await>
			<finish>�Һ�������������һ���¸Һ�ǿ����ػ��ߣ��ǳ���л�㣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3200" />
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
			<![CDATA[�ڶ��ٳǱ��������ħ��̽����ȡ#LINK<MAP:���ٳ�,POSX:389,POSY:223,STR:��ħ��̽,MOVE:1>##MONSTERGROUP0#���Ҷ��ٳǾ����]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:���ٳǾ����,NPCKEYNAME:���ٳǾ����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="��ħ��̽" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="150000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>