<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="25" name="��������-ѧϰ����" type="1" suggest_level="1" visible="1">
		<description>
			�Ǻǣ����ң�ֻ�˿��飬�����������ˣ����Ҹ��㽲�����ܵ����飬��Ļ������ܻ��������л�ã�Ӣ�ۼ�����Ҫ����ҳ�ڰ�ɽׯ԰���˴��ϳɣ�ѧϰ����Ҳ���н����ģ�����������
		</description>
		<dialogue>
			<brief>�Ǻǣ����ң�ֻ�˿��飬�����������ˣ����Ҹ��㽲�����ܵ����飬��Ļ������ܻ��������л�ã�Ӣ�ۼ�����Ҫ����ҳ�ڰ�ɽׯ԰���˴��ϳɣ�ѧϰ����Ҳ���н����ģ�����������</brief>
			<await>�Ǻǣ����ң�ֻ�˿��飬�����������ˣ����Ҹ��㽲�����ܵ����飬��Ļ������ܻ��������л�ã�Ӣ�ۼ�����Ҫ����ҳ�ڰ�ɽׯ԰���˴��ϳɣ�ѧϰ����Ҳ���н����ģ�����������</await>
			<finish>����ͨ��ѧϰ�������ã��������л�ü��ܾ���ֵ�����ܾ���ֵ�����������ܵȼ����ȼ�Խ�ߣ�����������Խ�󣬶��ˣ�ѧϰ���ܺ�Ҫ�����úü��ܿ�ݼ�����ʹ�á�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="24" />
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
			<![CDATA[ǰ��-#NPCLINK<STR:����ϰ�,NPCKEYNAME:�������>#
  (������Զ�Ѱ·)]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��-#NPCLINK<STR:����ʹ��,NPCKEYNAME:����ʹ��>#
  (������Զ�Ѱ·)
  #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="5000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>