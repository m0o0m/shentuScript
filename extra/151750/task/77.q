<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="77" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#ʥ��Ŀ���" type="1" suggest_level="1" visible="1" next_id="78">
		<script name="����ִ�нű�" />
		<description>
			ÿ�ո���֮��ħʥ������ȼ�63����ÿ�տɽ������Σ��������ݣ��������鼰����֮��
		</description>
		<dialogue>
			<brief>ÿ�ո���֮��ħʥ������ȼ�63����ÿ�տɽ������Σ��������ݣ��������鼰����֮��</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>ÿ�����λ��ᣬÿ�����ˢ�¸�����ÿ�ձ�ȥ֮�ء�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="76" />
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
			<![CDATA[���һ�Σ�#NPCLINK<STR:��ħʥ��,NPCKEYNAME:��ɽ�Ǹ���ʹ��,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��Ʒ����,NPCKEYNAME:���ε��ϰ�,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
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
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>