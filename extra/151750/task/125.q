<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="125" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#��ħ���ص���ı" type="1" suggest_level="1" visible="1" next_id="126">
		<script name="����ִ�нű�" />
		<description>
			���ǵ��ֶμ�����̣������������ϵ���Ҫ����ƣ�һֱ��Ҫ�ư���һ�����ص����ǣ���֪�����ڱ���ı��ʲô��
		</description>
		<dialogue>
			<brief>���ǵ��ֶμ�����̣������������ϵ���Ҫ����ƣ�һֱ��Ҫ�ư���һ�����ص����ǣ���֪�����ڱ���ı��ʲô��</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>���ĺü��ˣ��������ǳ��������˵����ϡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="124" />
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
			<![CDATA[��ɱ ������ħ #MONSTERGROUP0#
#COLORCOLOR_GOLD#VIPר������#COLOREND# #NPCLINK<STR:�������,NPCKEYNAME:��ɽBOSS����Ա,MOVE:1># 
#COLORCOLOR_BROWN#Ұ����ս#COLOREND# #NPCLINK<STR:��ħ����,NPCKEYNAME:��ɽ�Ǵ���Ա,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:�����ӳ�,NPCKEYNAME:��ɽ�������ӳ�,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="��ħ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>