<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3104" name="[����]-�ﵽ25��" type="1" suggest_level="1" visible="1" next_id="3106">
		<script name="3104" />
		<description>
			ʵ��������֮·�����������������ս�����ܽ������ࡣ��������ڴ������ʵ�ð�գ���ô������ʵ��������25�󣬲����ص�������������ˣ�����������µ�����
		</description>
		<dialogue>
			<brief>ʵ��������֮·�����������������ս�����ܽ������ࡣ��������ڴ������ʵ�ð�գ���ô������ʵ��������25�󣬲����ص�������������ˣ�����������µ�����</brief>
			<await>������ʵ����̫���ˣ��ȵ�25�������ɣ�����Զ�ȥ��ħ�����������غ���ӡ��ľ�������ʵ������</await>
			<finish>�Ǻǣ���ô���25��������ĳɳ��ٶȿ����ѽ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3155" />
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
			<![CDATA[�ﵽ#COLORCOLOR_YELLOW#25��#COLOREND#��ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ϲ���Ѿ��ﵽ#COLORCOLOR_YELLOW#25��#COLOREND#�ˣ���ȥ�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�ɣ���������ʲô����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="25" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="10000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>