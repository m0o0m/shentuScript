<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="8" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#����̽��" type="1" suggest_level="1" visible="1" next_id="9">
		<script name="����ִ�нű�" />
		<description>
			ǰ��ô󶯾���Ӣ�ۿ�Ҫһ·С�İ���
		</description>
		<dialogue>
			<brief>ǰ��ô󶯾���Ӣ�ۿ�Ҫһ·С�İ���</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��Щ�����Ȼ����͵Ϯ�����а�������Խ��Խ���ɲ��ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="7" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:78,POSY:74,STR:����սʿ># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ħ����,NPCKEYNAME:�󶴽�ħ����>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="����սʿ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="35000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="8000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>