<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�����½" type="1" suggest_level="1" visible="1" next_id="6">
		<script name="����ִ�нű�" />
		<description>
			�Թ�������Ӣ�ۣ�����������Щ�ϼһﲻ�ô����Ϲ�֮Լ�ˡ������ˣ���ʱ���Ǻ�ʱ������Ȼ������������Ե�ɼ����ǳ���֮���ʱ�������ȥ�ˡ�
		</description>
		<dialogue>
			<brief>�Թ�������Ӣ�ۣ�����������Щ�ϼһﲻ�ô����Ϲ�֮Լ�ˡ������ˣ���ʱ���Ǻ�ʱ������Ȼ������������Ե�ɼ����ǳ���֮���ʱ�������ȥ�ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�峤����֮�˹�Ȼ������ֻ�Ǵ˵ض����ѳ������ϣ��Ȿ�ؼ���������ɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="4" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:66,POSY:148,STR:����># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��׳����,NPCKEYNAME:����׳����>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="5000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>