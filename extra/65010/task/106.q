<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="106" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#ת���ȼ��ﵽ3��" type="1" suggest_level="1" visible="1" next_id="">
		<script name="����ִ�нű�" />
		<description>
			ת���ȼ��ﵽ3����
		</description>
		<dialogue>
			<brief>ת���ȼ��ﵽ3����</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��ϲ�㣬�ﵽת���ȼ�3����ת�����Դ����������ɫ�����ԡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="93" />
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
			<![CDATA[#COLORCOLOR_GOLD#�������ӣ�#COLOREND# #UILINK<STR:����ת��,WND:ִ�нű�,PARAM:OpenRoleRein()>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:ҩƷ����,NPCKEYNAME:��ɽ��ҩƷ����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
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
		<rewards exp="3000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>