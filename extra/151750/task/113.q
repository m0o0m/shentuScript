<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="113" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#�ﵽ77��" type="1" suggest_level="1" visible="1" next_id="114">
		<script name="����ִ�нű�" />
		<description>
			�ȼ����㣬��̸ʲô������˵ʲô���룿���ö�˵�ˣ���ȥ����77���ɡ�
		</description>
		<dialogue>
			<brief>�ȼ����㣬��̸ʲô������˵ʲô���룿���ö�˵�ˣ���ȥ����77���ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��ϲ�ﵽ77���������������������ء�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="112" />
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
			<![CDATA[#COLORCOLOR_GOLD#�ɶ־��飺#COLOREND# #UILINK<STR:̽��,WND:ִ�нű�,PARAM:CLOnOpenTreasure()>#
#COLORCOLOR_BROWN#�������飺#COLOREND# #NPCLINK<STR:װ������,NPCKEYNAME:��ɽ����Ʒ����Ա,MOVE:1># 
#COLORCOLOR_BROWN#�������飺#COLOREND# #NPCLINK<STR:ÿ�ո���,NPCKEYNAME:��ɽ�Ǹ���ʹ��,MOVE:1>#
#COLORCOLOR_BROWN#��ȫ������#COLOREND# #NPCLINK<STR:Ұ��һ�,NPCKEYNAME:��ɽ�Ǵ���Ա,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�����ӳ�,NPCKEYNAME:��ɽ�������ӳ�,MOVE:1>#]]>
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
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>