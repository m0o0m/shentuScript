<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="116" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#��ҹ�ĸ���" type="1" suggest_level="1" visible="1" next_id="117">
		<script name="����ִ�нű�" />
		<description>
			һ�����������صĶ�Ѩ�������BOSSţħ��Ҳ���۰�һ�����������ţħ���ƣ�������ţͷ�Ͳ�ס��į����Ҫ�ַ����ǵĳ�������һ��Ҫǿ�����ķ�����ȥ������ţͷ���ҳ�����
		</description>
		<dialogue>
			<brief>���������ˣ�����Ϊֹû��һ�������ŵģ�������Щ���ţ���������˵�����𣿶ԣ�û������������һ��������һ����������֪��Ϊʲô���ֻ����ˣ������ǰ�Ѫ���ö����˸е��޾��Ŀ־塣</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��л�㣡�����ˣ�����ֹ��һ�����ѡ��������ˣ����������������ǵ�һ�����ƺ���ֻ�Ǹ���ʼ���ܸо��������һ���������ı��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="115" />
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
			<![CDATA[��ɱѪɫǧ��ն #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIPר������#COLOREND# #NPCLINK<STR:�������,NPCKEYNAME:��ɽBOSS����Ա,MOVE:1># 
#COLORCOLOR_BROWN#Ұ����ս#COLOREND# #NPCLINK<STR:��ҹ֮��,NPCKEYNAME:��ɽ�Ǵ���Ա,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��ɽ����������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="ʬ��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="3500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>