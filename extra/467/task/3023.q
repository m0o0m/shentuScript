<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3023" name="[����]-����ǰ������(1)" type="1" suggest_level="1" visible="1" next_id="3024">
		<description>
			��ȥ��ɽ��֮ǰ������Щ����Ҫ�͸��㣬�ȵ���Ŷ����ȥȡ��
		</description>
		<dialogue>
			<brief>�벻�����Ѿ�����˼��ܵ�ѧϰ������һ���˲��õ���ţ���Ҫ׼��ȥ��ɽ��������������е��˸��ء�\n���������������Ҫ��ȥŬ������סŶ�����ħ��ս����һ��ҪС��ѽ��\n������ȥ��ɽ��֮ǰ������Щ����Ҫ�͸��㣬�ȵ���Ŷ����ȥȡ��</brief>
			<await>�����������Ҫ��ȥŬ������סŶ�����ħ��ս����һ��ҪС��ѽ��</await>
			<finish>���Űɣ�һ������⣡������������������ƶ�������һ��λ�ã��سǾ����������˲��ص�����İ�ȫ����\n������ϧû�лس�ʯ����λʯ����ң�Σ���������ս֮�󣬴�½��ֻ����������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3022" />
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
			<![CDATA[��#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ִ��ӻ�����,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:�ӻ���,NPCKEYNAME:���ִ��ӻ�����,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="13500" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="�سǾ��"  n="1" bind_require="1" />
				<award keyname="������;��"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>