<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3131" name="[����]-��·��Ԯ������" type="1" suggest_level="1" visible="1" next_id="3132">
		<description>
			���ż�Ʒ����ҩ��Ѹ�ٻָ����Ƶ�Ч������Ҫȥ��ҩʦ������ȡ��
		</description>
		<dialogue>
			<brief>һ���ҩƷ��ѧ������Ҳ���еģ���Ȼ��������������ͨҩ����������ҩ����Ч��Ҳ����һ����Ѱ�Ҽ�Ʒ����ҩ����ȥ����ҩʦҪһö��Ʒ����ҩ�ɣ���˵���˼��á�</brief>
			<await>��Ʒ����ҩ���˷�Ʒ�����������ˣ���׹�֮��Ч������֮�˳��ˣ����̼���Ȭ���������˳��˿��Գ�������</await>
			<finish>��һ���¸ҵ�սʿ��Ϊ���˱����ھ�·����\n������Ʒ����ҩô���Ǹ�ҩ����˲�������������ƣ����Ǳ����ʱ�䲻��������ֻ������Ҫ��ʱ������������ֻ�ǡ����������ϻ�ȱ��һ�ݷǳ���Ҫ��ҩ�ģ�������ܰ����һأ��ҿ������̰������Ƴ���Ʒ����ҩ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3130" />
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
			<![CDATA[ȥ��ɽ����#NPCLINK<STR:��ҩʦ,NPCKEYNAME:��ɽ����ҩʦ,MOVE:1>#��ȡһö��Ʒ����ҩ]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ��ɽ����#NPCLINK<STR:��ҩʦ,NPCKEYNAME:��ɽ����ҩʦ,MOVE:1>#��ȡһö��Ʒ����ҩ]]>
			</accomplishing>
		</tracker>
		<rewards exp="22000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>