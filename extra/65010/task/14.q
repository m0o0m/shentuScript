<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="14" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��������" type="1" suggest_level="1" visible="1" next_id="15">
		<script name="����ִ�нű�" />
		<description>
			��ү����ԭ���Ǵ���ȥ������ָ����Ƶģ�Ҫ��������ѹ��̫���ҲŲ�Ը�������ط����ء����ȣ��ðɣ���˵�ص㡣ǰ���ƺ��и��������ǵͺ������������Ⱳ����������µ������ˣ���֪����ֻ����Щ�ˡ�
		</description>
		<dialogue>
			<brief>��ү����ԭ���Ǵ���ȥ������ָ����Ƶģ�Ҫ��������ѹ��̫���ҲŲ�Ը�������ط����ء����ȣ��ðɣ���˵�ص㡣ǰ���ƺ��и��������ǵͺ������������Ⱳ����������µ������ˣ���֪����ֻ����Щ�ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��л��������֮������������Ϊ������Щ�Ա����⣬ϣ��������Ҫ�ƴǡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="13" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:159,POSY:108,STR:������ʬ># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ͷĿ,NPCKEYNAME:�󶴿�ͷĿ>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="ĹѨ��ʬ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>