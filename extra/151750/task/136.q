<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="136" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#��ɳ�ض�����ı" type="1" suggest_level="1" visible="1" next_id="137">
		<script name="����ִ�нű�" />
		<description>
			��ɳ�ض����澿���ж������ܣ�û����֪������ΪֻҪ��ȥ���ˣ���û�г����ģ���������Ĺ��ﾫͨ�������Թ�����
		</description>
		<dialogue>
			<brief>��ɳ�ض����澿���ж������ܣ�û����֪������ΪֻҪ��ȥ���ˣ���û�г����ģ���������Ĺ��ﾫͨ�������Թ�����</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>���Ȼ�����ˣ��治��˼�飬��̫���Ҿ����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="135" />
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
			<![CDATA[��ɱ ����һֻ��β�� #MONSTERGROUP0#
#COLORCOLOR_BROWN#Ұ����ս#COLOREND# #NPCLINK<STR:Զ�����,NPCKEYNAME:�������ʹ��,MOVE:1># 
#COLORCOLOR_BROWN#Ұ����ս#COLOREND# #NPCLINK<STR:��ɳ�ض�,NPCKEYNAME:��ɽ�Ǵ���Ա,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ɽʹ��,NPCKEYNAME:��ɽ����ɽʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="�����غ���" />
					<group_hunting keyname="��צ�����" />
					<group_hunting keyname="��β�ں���" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="6000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>