<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3224" name="[����]-��ħʯ�ߵ�����(1)" type="1" suggest_level="1" visible="1" next_id="3225">
		<description>
			����һ��������Ҫ���˽⿪����Ը������𣿾���Щ�о���սǰ��ʷ����˵������ս�����������������ʧ֮�أ�������ħʯ��Ŷ��\n�������꣬Ϊ�˷����Զ�ħ������һ�����������������˴����ĸ��֣�׼������а�����������ǳ���֮����Ҳû����Ϣ�����ء���֮������ʲô�£��ɾ�û��֪���ˡ�\n����������鱨�����ȥ���������ѯ�ʣ�����˵���ǵĹ�ϵ�غã�
		</description>
		<dialogue>
			<brief>����һ��������Ҫ���˽⿪����Ը������𣿾���Щ�о���սǰ��ʷ����˵������ս�����������������ʧ֮�أ�������ħʯ��Ŷ��\n�������꣬Ϊ�˷����Զ�ħ������һ�����������������˴����ĸ��֣�׼������а�����������ǳ���֮����Ҳû����Ϣ�����ء���֮������ʲô�£��ɾ�û��֪���ˡ�\n����������鱨�����ȥ���������ѯ�ʣ�����˵���ǵĹ�ϵ�غã�</brief>
			<await>������������������˽���ࡣ</await>
			<finish>��Ҳ��Ϊ�����������ʧ����ħʯ��������Ŷ������𣿲���Ҳ����˵���ˣ���ܿ��ܲ������Ǵ��š�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3223" />
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
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#ѯ�����]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="25000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>