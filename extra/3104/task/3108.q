<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3108" name="[����]-�ﵽ26��" type="1" suggest_level="1" visible="1" next_id="3109">
		<script name="3108" />
		<description>
			��������������Ҫ��ǿ���ʵ��������������26��ȥ����������˰ɣ����и�������񽻸��㡣
		</description>
		<dialogue>
			<brief>����ĿǰΪֹ��ʵ�������ܿ�ѽ����������������������Ҫ��ǿ���ʵ��������������26��ȥ����������˰ɣ����и�������񽻸��㡣</brief>
			<await>������ʵ����̫���ˣ��ȵ�26�������ɣ�����Զ�ȥ��ħ�������������ʵ������</await>
			<finish>�����պ������ˣ��������и����鷳�������ȥ������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3107" />
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
			<![CDATA[�ﵽ#COLORCOLOR_YELLOW#26��#COLOREND#��ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ϲ���Ѿ��ﵽ#COLORCOLOR_YELLOW#26��#COLOREND#�ˣ���ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�ɣ����Եĺܽ�����Ӧ������ʲô��������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="26" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="15000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>