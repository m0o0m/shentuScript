<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5025" name="[����]-������Ѫ�֣�5��" type="2" suggest_level="1" visible="1" next_id="5026">
		<description>
			��Ѫ�����������ģ���Ϊ�ҿ�����Ѫ�֣����ǿ϶�����������ڵģ��ðɣ���ȻѪ����Ҫ��������ֻ���ȸɵ�Ѫ�֣�\n���������ھ͸�����Ѫ�ֵ���Ӱ�ɣ�������ɽ���⿴����Ѫ�֣���ʱ����������·�룬��֪��������Ŀ���Ǿ�·�ǣ�������ж���㣬�����ھ�·���ס����
		</description>
		<dialogue>
			<brief>��Ѫ�����������ģ���Ϊ�ҿ�����Ѫ�֣����ǿ϶�����������ڵģ��ðɣ���ȻѪ����Ҫ��������ֻ���ȸɵ�Ѫ�֣�\n���������ھ͸�����Ѫ�ֵ���Ӱ�ɣ�������ɽ���⿴����Ѫ�֣���ʱ����������·�룬��֪��������Ŀ���Ǿ�·�ǣ�������ж���㣬�����ھ�·���ס����</brief>
			<await>������·�룬��ɱ������Ѫ�֡�</await>
			<finish>����</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5024" />
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
			<![CDATA[����#COLORCOLOR_GOLD#��·��#COLOREND#����ס��������·�ǵ�#LINK<MAP:��·��,POSX:118,POSY:47,STR:Ѫ��>#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[������������������#COLORCOLOR_GOLD#Ѫ��#COLOREND#�л�����˵����#NPCLINK<STR:Ѫ��,NPCKEYNAME:Ѫ��>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="Ѫ��1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>