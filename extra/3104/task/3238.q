<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3238" name="[����]-��ֹ��ħ����ı(2)" type="1" suggest_level="1" visible="1" next_id="3239">
		<description>
			��ħ��а���ᣬ��ҪͻϮ���ٳǣ����ڼ�Ȼ����֪���������Ϣ���һ��ϼӷ��������������׸����ǻ��ᡣ\n��������ܵõ����ǵ��ж��ƻ��Ǿͺ��ˡ�����ȥ�����������˰ɣ��������а취ȡ�����ǵ��ж��ƻ���
		</description>
		<dialogue>
			<brief>��ħ��а���ᣬ��ҪͻϮ���ٳǣ����ڼ�Ȼ����֪���������Ϣ���һ��ϼӷ��������������׸����ǻ��ᡣ\n��������ܵõ����ǵ��ж��ƻ��Ǿͺ��ˡ�����ȥ�����������˰ɣ��������а취ȡ�����ǵ��ж��ƻ���</brief>
			<await>ȥ�����ǵ�������˱��������</await>
			<finish>��ħ��а�񹴽᣿а��һֱ�����ǵ����ܼ���֮�£�а�����빴����ħ�����Զ��ٳǵ�Ϯ�������ʺϵĿ϶����ó����ںڰ�֮�����ߵ�ְҵ��</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3237" />
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
			<![CDATA[��������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[�����ǵ�#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
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