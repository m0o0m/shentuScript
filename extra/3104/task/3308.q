<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3308" name="[����]-���е�����(2)" type="1" suggest_level="1" visible="1" next_id="3309">
		<description>
			������û���˱��Ҹ��˽�������ͼ����Ϊ���ػ��������£��������������ͼ���������������ֻ�֮�ء�֮���Գ�����ɫ���壬����Ϊ������ͼ����Ƭ����ת���ᴿ���������Ĺ�Ч��\n������������Щ����������Ӧ��������֮ˮ����������ͼ����Ƭ����������������ԴȪ���㽫��Щ�鱨���ظ�������˰ɡ�
		</description>
		<dialogue>
			<brief>������û���˱��Ҹ��˽�������ͼ����Ϊ���ػ��������£��������������ͼ���������������ֻ�֮�ء�֮���Գ�����ɫ���壬����Ϊ������ͼ����Ƭ����ת���ᴿ���������Ĺ�Ч��\n������������Щ����������Ӧ��������֮ˮ����������ͼ����Ƭ����������������ԴȪ���㽫��Щ�鱨���ظ�������˰ɡ�</brief>
			<await>������������˶Ի�</await>
			<finish>����ǿ�󲻿��£����µ��ǶԵ���һ����֪�����ڣ���������Ծ�����һ�����µİ����ˡ�лл���Ŭ�����������ҵ�սʤ�����ķ�����һ���������㣬���Ǹ���ı��꣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3307" />
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
			<![CDATA[������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</progressing>
			<accomplishing>
			<![CDATA[������#NPCLINK<STR:�������,NPCKEYNAME:�����������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="325000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="��Ԫ��"  n="5" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>