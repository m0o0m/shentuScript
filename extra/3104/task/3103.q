<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3103" name="[����]-����ʵ��" type="1" suggest_level="1" visible="1" next_id="3151">
		<script name="3103" />
		<description>
			Ŷ��������Ѱ����ʵ���ķ������ţ�����������ǿǿ�е�ʵ�������ӣ���ɸҽ����������ڣ����������������ޣ�֤�����ʵ����
		</description>
		<dialogue>
			<brief>Ŷ��������Ѱ����ʵ���ķ������ţ�����������ǿǿ�е�ʵ�������ӣ���ɸҽ����������ڣ����������������ޣ�֤�����ʵ����</brief>
			<await>��ʵ�����а��������޶���û�����꣡</await>
			<finish>����ϸƤ�����ģ������Ȼ�������������������޲��������ţ�������ˣ��Ժ�ÿ�춼��ӭ���������������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3102" />
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
			<![CDATA[ͨ�����ǹ㳡��#NPCLINK<STR:������ͷ,NPCKEYNAME:����������ͷ,MOVE:1>#����#COLORCOLOR_YELLOW#������#COLOREND#��ɱ20ֻ#COLORCOLOR_YELLOW#������#COLOREND##MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���ǵĹ㳡��#NPCLINK<STR:������ͷ,NPCKEYNAME:����������ͷ,MOVE:1>#�������]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="����������" />
					<group_hunting keyname="�м�������" />
					<group_hunting keyname="�߼�������" />
					<group_hunting keyname="����������" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="100000" >
			<awards>
				<award keyname="����ƾ֤"  n="100" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>