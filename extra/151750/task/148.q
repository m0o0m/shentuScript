<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="148" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#װ��1ת�·�" type="1" suggest_level="1" visible="1" next_id="149">
		<script name="����ִ�нű�" />
		<description>
			����������ս����������Ѷȣ�������û�и��õ�װ�����Ͳ�Ҫȥ�����ˣ���ȥװ��1ת���·��������Լ������ɡ�
		</description>
		<dialogue>
			<brief>����������ս����������Ѷȣ�������û�и��õ�װ�����Ͳ�Ҫȥ�����ˣ���ȥװ��1ת���·��������Լ������ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>������װ�����ʺ��㣬�о��������ɡ������ӣ�����ȥ��һ���ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="147" />
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
			<![CDATA[#COLORCOLOR_GOLD#������ɣ�#COLOREND# #UILINK<STR:̽��,WND:ִ�нű�,PARAM:CLOnOpenTreasure()>#
#COLORCOLOR_BROWN#��÷�ʽ1��#COLOREND##NPCLINK<STR:�������,NPCKEYNAME:��ɽBOSS����Ա,MOVE:1># 
#COLORCOLOR_BROWN#��÷�ʽ2��#COLOREND##NPCLINK<STR:Զ�����,NPCKEYNAME:�������ʹ��,MOVE:1># 
#COLORCOLOR_BROWN#��÷�ʽ3��#COLOREND##NPCLINK<STR:��ħ��,NPCKEYNAME:��ɽ�ǰ�����·��,MOVE:1># 
��������#COLORCOLOR_MAGENTA#800����#COLOREND# #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ɽʹ��,NPCKEYNAME:��ɽ����ɽʹ��,MOVE:1>#]]>
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
		<rewards exp="8500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>