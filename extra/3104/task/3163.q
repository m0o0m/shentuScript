<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3163" name="[����]-����ţħ��Ϯ����3��" type="1" suggest_level="1" visible="1" next_id="3122">
		<description>
			��Ӣţħ�����û������ʵ��ǿ����ʿʵ����Ȼ���ǣ����²��Ƕ��֣�����ʱ���Ͱɣ�����ʵ����ø�ǿ֮������������ֻ��Ӣţħ�ɣ��Ȼ�ȥ����������˰ɡ�\n�����������⾫Ӣ�����ﶼ�ᱻ��������ħ����Ŀ��ϵͳ��¼���������ﵽһ���̶�ʱ��������ȡ����Ŷ���������Ϸ�����Ϸ��ġ�Ŀ�ꡱ���鿴��������ħ���б���
		</description>
		<dialogue>
			<brief>��Ӣţħ�����û������ʵ��ǿ����ʿʵ����Ȼ���ǣ����²��Ƕ��֣�����ʱ���Ͱɣ�����ʵ����ø�ǿ֮������������ֻ��Ӣţħ�ɣ��Ȼ�ȥ����������˰ɡ�\n�����������⾫Ӣ�����ﶼ�ᱻ��������ħ����Ŀ��ϵͳ��¼���������ﵽһ���̶�ʱ��������ȡ����Ŷ���������Ϸ�����Ϸ��ġ�Ŀ�ꡱ���鿴��������ħ���б���</brief>
			<await>�����Ǳ���������ˡ�</await>
			<finish>�����ò�����Ȼ��Ӣţħһʱû�����𣬵��һᰲ�������˽��ֵģ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="3162" />
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
			<![CDATA[��ȥ��Щ�µĽ������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ȥ��Щ�µĽ������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>