<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="37" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�涴����" type="1" suggest_level="1" visible="1" next_id="38">
		<script name="37q" />
		<description>
			�㡭���㡭������Ҫһ��ǰ����̫ð���˰ɣ���Ȼ��ִ��ҪȥҲ�ã����ǲ��У��������˳��������������Ӧ��������ɽ�ڲ���û���գ��ȴ󲿶����ˣ���������Բߡ�
		</description>
		<dialogue>
			<brief>�㡭���㡭������Ҫһ��ǰ����̫ð���˰ɣ���Ȼ��ִ��ҪȥҲ�ã����ǲ��У��������˳��������������Ӧ��������ɽ�ڲ���û���գ��ȴ󲿶����ˣ���������Բߡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>Ӵ���������������ˡ������ô���ˣ����ǲ�֪���⼸��������ɽ�Ǵ��ķз�����ģ�ʲô�汾���С�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="36" />
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
			<![CDATA[#LINK<MAP:��򼶴����,POSX:48,POSY:44,STR:���涴># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��Ʒ����Ա,NPCKEYNAME:��ɽ����Ʒ����Ա,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="�����񸱱�" />
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
			<accept enable="1" idletime="2" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>