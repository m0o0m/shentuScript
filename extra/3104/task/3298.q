<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3298" name="[����]-��ʦ������(4)" type="1" suggest_level="1" visible="1" next_id="3299">
		<description>
			��Ȼ����ͷ��һֱ�ھܾ�,����,�����͸��������������������,���������ǿ����ķ��\n������Ȼ������ҵİ���������е�����Ļ����һ���һ�������˸е����ɵķ�ʽ������֮�����ǵ��Ҹ��Ѿ����ˣ���������������ĸ���͸��ҵģ������ת�������ɣ�����һ��ҪС��Ŷ��
		</description>
		<dialogue>
			<brief>��Ȼ����ͷ��һֱ�ھܾ�,����,�����͸��������������������,���������ǿ����ķ��\n������Ȼ������ҵİ���������е�����Ļ����һ���һ�������˸е����ɵķ�ʽ������֮�����ǵ��Ҹ��Ѿ����ˣ���������������ĸ���͸��ҵģ������ת�������ɣ�����һ��ҪС��Ŷ��</brief>
			<await>���ں����ؾ�,ȥ�ҵ�����ת�����͸����Ļ������</await>
			<finish>�ߣ�Ҳ��������˰ɡ���ô���ұ������ˮ��ʯ�����ܰɡ������ء�������˵����������������֮�У�������Ϊ��ľ��ˮ�����������־��壬����ˮ���������۶��ɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3296" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="ѱ��ʦ�Ļ����"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[��ѱ��ʦ�Ļ����ת����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#��]]>
			</progressing>
			<accomplishing>
			<![CDATA[��ѱ��ʦ�Ļ����ת����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#��]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="ѱ��ʦ�Ļ����"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="353000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>