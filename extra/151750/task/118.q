<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="118" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#���ǵı���" type="1" suggest_level="1" visible="1" next_id="119">
		<script name="����ִ�нű�" />
		<description>
			��Ȼ���Ƿ����ˣ�ԭ�������ĺ��Ƕ��������ı��겻������������޽���Ҳ��ʼ�������������Ǳ������������ͷ���������ǵĳ��򽫱�Ϊ�˼�������
		</description>
		<dialogue>
			<brief>��Ȼ���Ƿ����ˣ�ԭ�������ĺ��Ƕ��������ı��겻������������޽���Ҳ��ʼ�������������Ǳ������������ͷ���������ǵĳ��򽫱�Ϊ�˼�������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�ش������޽���������������ļƻ��Ǳ���������ˣ����ò�˵����ĳ�ɫ�Ѿ������ҵ����ϡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="117" />
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
			<![CDATA[��ɱ ���޽��� #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIPר������#COLOREND# #NPCLINK<STR:�������,NPCKEYNAME:��ɽBOSS����Ա,MOVE:1># 
#COLORCOLOR_BROWN#Ұ����ս#COLOREND# #NPCLINK<STR:���Ƕ�,NPCKEYNAME:��ɽ�Ǵ���Ա,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:ҩƷ����,NPCKEYNAME:��ɽ��ҩƷ����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="��Ȫ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>