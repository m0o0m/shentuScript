<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="74" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#  ����ĳɳ�" type="1" suggest_level="1" visible="1" next_id="92">
		<script name="����ִ�нű�" />
		<description>
			��ҪС�����㱳����Ǹ�С��������������ȷ���Ǻ����ۣ����������ͣ��������й��ﶼ���ݵ����������֮�¡�����ȥ�������ɡ�
		</description>
		<dialogue>
			<brief>��ҪС�����㱳����Ǹ�С��������������ȷ���Ǻ����ۣ����������ͣ��������й��ﶼ���ݵ����������֮�¡�����ȥ�������ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>������ǰ����ʱ����������һ�������������Ľ�����а������������ʧ�������½֮�У�����η�����������������������Ǻεȵ����ǰ���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="73" />
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
			<![CDATA[#COLORCOLOR_BROWN#�����������#COLOREND# #COLORCOLOR_GOLD#һ��#COLOREND#
����򿪣� #UILINK<STR:������,WND:ִ�нű�,PARAM:CLOnOpenWing()>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�����ʦ,NPCKEYNAME:��ɽ�Ƕ����ʦ,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="���Լ�" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="9999999" />
		</auto>
	</quest>
</quests>