<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5046" name="[����]-Ѫ�ֵĹ�����1��" type="2" suggest_level="1" visible="1" next_id="5047">
		<description>
			Ѫ����һ���Ӳ�ͣ��׷��ʵ���ĽŲ������ˣ�Ҳ��һ�������������ˣ����������Ľ�֣��Ҹе��ǳ���ʹ��һ����ʲô���������������˼���Լ�����������Ҽǵ����ļ����������Ϸ������ֱ��ϣ�Ҳ��������������Ͽ����ҵ��𰸡�
		</description>
		<dialogue>
			<brief>Ѫ����һ���Ӳ�ͣ��׷��ʵ���ĽŲ������ˣ�Ҳ��һ�������������ˣ����������Ľ�֣��Ҹе��ǳ���ʹ��һ����ʲô���������������˼���Լ�����������Ҽǵ����ļ����������Ϸ������ֱ��ϣ�Ҳ��������������Ͽ����ҵ��𰸡�</brief>
			<await>ȥ�����Ϸ������ֱߣ�Ѱ��Ѫ�ֵ����ˡ�</await>
			<finish>Զ������ð���ߣ���ã�����Ѱ��Ѫ�ֵ����ˣ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5045" />
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
			<![CDATA[ǰ�������Ϸ������֣���#NPCLINK<STR:���˰�ŵ,NPCKEYNAME:���˰�ŵ,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ�������Ϸ������֣���#NPCLINK<STR:���˰�ŵ,NPCKEYNAME:���˰�ŵ,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="65000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>