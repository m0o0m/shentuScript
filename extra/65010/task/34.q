<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="34" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#���붴Ѩ" type="1" suggest_level="1" visible="1" next_id="35">
		<script name="����ִ�нű�" />
		<description>
			�ⶴѨ��ĺô�Ѱ�������Ҳ�����ϵ�������ж����ء�����������ƺ���Ҫ����������ȥ����ǰ��Զ��ɽ�����һ�㡣ֻ����;��С��һЩ������������˵����Ҫ���������Ĵ��ۡ�
		</description>
		<dialogue>
			<brief>�ⶴѨ��ĺô�Ѱ�������Ҳ�����ϵ�������ж����ء�����������ƺ���Ҫ����������ȥ����ǰ��Զ��ɽ�����һ�㡣ֻ����;��С��һЩ������������˵����Ҫ���������Ĵ��ۡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�ǣ���Щ����ͦ�����ܵİ�����ô��һ����Ѩ��ô��ǰ��û���˷����أ���������ĳ��ӱ�һ����Ѳ����ˣ��治֪�����滹��ʲô������</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="33" />
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
			<![CDATA[�ظ� #NPCLINK<STR:���涴����,NPCKEYNAME:��򼶴��������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:���涴����,NPCKEYNAME:��򼶴��������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>