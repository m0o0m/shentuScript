<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="98" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��������" type="1" suggest_level="1" visible="1" next_id="99">
		<script name="����ִ�нű�" />
		<description>
			��ʱ�������Լ�����һ�������ˣ�Ҫ�ڽ��������㣬���ǻ�����Ҫ��������ʵ����ǿ�������Լ�����һ�����ᣬ�����ʵ��������ǿ���Ǿ�ȥ����ǿ�ߵĹ��ᣬ�����Ժ�ķ�չ���кô���
		</description>
		<dialogue>
			<brief>Զ�����һ��Ϊ��ѳ�����ÿ�ν�����㿪ʼ��Ҫ����һ����Զ�ž��ᡱ�����㡢�Ĳ㲻�������շѡ���װ���õط���</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��ô�����ط������԰ɣ�����ֵ��һȥ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="97" />
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
			<![CDATA[#NPCLINK<STR:Զ�����һ����κ�BOSS,NPCKEYNAME:�������ʹ��,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��ɽ�Ǹ�������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="����һ���¶�ħ" />
					<group_hunting keyname="����һ�������" />
					<group_hunting keyname="����һ�������" />
					<group_hunting keyname="����һ��ɫ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>