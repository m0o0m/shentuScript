<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4012" name="[֧��]-���Ի������(3)" type="2" suggest_level="1" visible="1" next_id="4013">
		<description>
			ʲô����˵�ҵ�ĸ���ڿ��Ⱥ��ң������Ҳ��뿪������ʵ����̫�����ˣ���ֱ�������ã��Ҳ�Ը���뿪���\n
		</description>
		<dialogue>
			<brief>ʲô����˵�ҵ�ĸ���ڿ��Ⱥ��ң������Ҳ��뿪������ʵ����̫�����ˣ���ֱ�������ã��ҿɲ�Ը���뿪���\n</brief>
			<await>�Ҳ��뿪�����������ҵ����ã�\n</await>
			<finish>ʲô���Ҷ�������\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="52" max_num="100" />
			<prologues>
				<group>
					<prologue id="4011" />
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
			<![CDATA[�ض��ٳǸ���#NPCLINK<STR:�ϸ���,NPCKEYNAME:�ϸ���,MOVE:1>#����#COLORCOLOR_GREENG#���Ի������#COLOREND#�������]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ض��ٳǸ���#NPCLINK<STR:�ϸ���,NPCKEYNAME:�ϸ���,MOVE:1>#����#COLORCOLOR_GREENG#���Ի������#COLOREND#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="80000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>