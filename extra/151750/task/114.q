<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="114" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#ţħ������" type="1" suggest_level="1" visible="1" next_id="115">
		<script name="����ִ�нű�" />
		<description>
			һ�����������صĶ�Ѩ�������BOSSţħ��Ҳ���۰�һ�����������ţħ���ƣ�������ţͷ�Ͳ�ס��į����Ҫ�ַ����ǵĳ�������һ��Ҫǿ�����ķ�����ȥ������ţͷ���ҳ�����
		</description>
		<dialogue>
			<brief>һ�����������صĶ�Ѩ�������BOSSţħ��Ҳ���۰�һ�����������ţħ���ƣ�������ţͷ�Ͳ�ס��į����Ҫ�ַ����ǵĳ�������һ��Ҫǿ�����ķ�����ȥ������ţͷ���ҳ�����</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��Ȼû�п����ˣ���Ȼ���ţħ������Ȼ�ұ�Ӣ�۳������š�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="113" />
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
			<![CDATA[��ɱţħ�� #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIPר������#COLOREND# #NPCLINK<STR:�������,NPCKEYNAME:��ɽBOSS����Ա,MOVE:1># 
#COLORCOLOR_BROWN#BOSS����#COLOREND# #NPCLINK<STR:Զ�����,NPCKEYNAME:�������ʹ��,MOVE:1># 
#COLORCOLOR_BROWN#Ұ����ս#COLOREND# #NPCLINK<STR:ţħ��,NPCKEYNAME:��ɽ�Ǵ���Ա,MOVE:1># 
��������#COLORCOLOR_MAGENTA#66����ָ#COLOREND# #COLORCOLOR_GOLD#1000��Ԫ#COLOREND#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��ɽ����������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="ţħ��" />
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