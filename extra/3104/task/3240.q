<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3240" name="[����]-��ֹ��ħ����ı(4)" type="1" suggest_level="1" visible="1" next_id="3241">
		<description>
			�������ԣ����ԣ�Ϊ��������ǵ�Ϯ���ж���Ϊ�˶Զ��ٳǵ�������ɸ����ɱ�ˣ���Щ��ҩ�ض��������Ϸ���������ȡ��һ�ݶ��ٳ�ˮ���ľ�ˮ�������ϴ��Ͻ�������ҩʦ���飬������������ҩ��
		</description>
		<dialogue>
			<brief>�������ԣ����ԣ�Ϊ��������ǵ�Ϯ���ж���Ϊ�˶Զ��ٳǵ�������ɸ����ɱ�ˣ���Щ��ҩ�ض��������Ϸ���������ȡ��һ�ݶ��ٳ�ˮ���ľ�ˮ�������ϴ��Ͻ�������ҩʦ���飬������������ҩ��</brief>
			<await>���϶��ٳ�ˮ���ľ�ˮ��������ҩʦ���顣</await>
			<finish>ʴ��֮�������ô������ж�������࣬����һ��֮�����������Ѿ���ȥ�˰��죬���ǵ�ʱ�䲻���ˡ����ţ��������ټ�ҩ���̣��о���ҩ����</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3239" />
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
			<![CDATA[�ҵ���ɽ�ǵ�#NPCLINK<STR:��ҩʦ,NPCKEYNAME:��ɽ����ҩʦ,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[����ɽ�ǵ�#NPCLINK<STR:��ҩʦ,NPCKEYNAME:��ɽ����ҩʦ,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<rewards exp="35000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>