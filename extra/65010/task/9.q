<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="9" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��������" type="1" suggest_level="1" visible="1" next_id="10">
		<script name="����ִ�нű�" />
		<description>
			����һ�ָ�֪��������һ�����µĶ������ڲٿ�����Щ��������Ĳٿ�������ʵ�ڿ��¡�
		</description>
		<dialogue>
			<brief>����һ�ָ�֪��������һ�����µĶ������ڲٿ�����Щ��������Ĳٿ�������ʵ�ڿ��¡�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>Ҫ���Ǿ�û�ˣ���Щ���������ʲô���ߣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="8" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:87,POSY:81,STR:������ʿ># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ƴ�,NPCKEYNAME:����ƴ�>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="����ս��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="40000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="9000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>