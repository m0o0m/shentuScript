<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="73" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#����BOSS֮��Ľ���" type="1" suggest_level="1" visible="1" next_id="74">
		<script name="����ִ�нű�" />
		<description>
			��ʱ���ȥ����һ����ĵķ�չ�ˣ���ȥ�Ծ��Ŀ�����Ľ������������Ų��ٵı��������ǳɹ�������ɾ�׬���ˡ�
		</description>
		<dialogue>
			<brief>��ʱ���ȥ����һ����ĵķ�չ�ˣ���ȥ�Ծ��Ŀ�����Ľ������������Ų��ٵı��������ǳɹ�������ɾ�׬���ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>����BOSSÿ�춼��ˢ�´��������Ի�ú���װ�����ǵ�ÿ�춼ȥ��һ�Ρ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="72" />
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
			<![CDATA[��ɱ #UILINK<STR:��Ľ���,WND:ִ�нű�,PARAM:TaskBoss(1)># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��Ʒ����Ա,NPCKEYNAME:��ɽ����Ʒ����Ա,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="��Ľ�������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="999999" />
			<submit enable="1" idletime="999999" />
		</auto>
	</quest>
</quests>