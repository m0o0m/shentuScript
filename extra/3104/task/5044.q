<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5044" name="[����]-�Ӳ�����ڣ�2��" type="2" suggest_level="1" visible="1" next_id="5045">
		<description>
			��˵Ѫ���Ѿ����ˣ�������������Ȼ���׶�����а�񣿡�����һ�У������ҵĴ����꣬�����û����Ϊ�ɳܵ�ų����η�壬�Ͳ��ᷢ����һ�У�\n�����ðɣ���ʱ��˵�����ˣ�ʮ��ǰ������Ѫ����ӽ�������󣬿��ǣ�����������ǿ��ķ�ħ����ħ��ʵ��̫�����ˣ�������ս��һ��ʼʱ���ܵ����ش�����ʱ�ҡ����ɳܵ����ˡ�\n������������Ѫ�֣�һ�����ӳ�������󡭡��Ҿ�Ȼ�����������ˣ�������һ�𳤴�һ�����ħս�������ǣ��Ҿ�Ȼ������ôһ���ܵĶ��������ˡ���
		</description>
		<dialogue>
			<brief>��˵Ѫ���Ѿ����ˣ���ԭ��Ѫ���Ѿ����ˣ�������������Ȼ���׶�����а�񣿡�����һ�У������ҵĴ����꣬�����û����Ϊ�ɳܵ�ų����η�壬�Ͳ��ᷢ����һ�У�\n�����ðɣ���ʱ��˵�����ˣ�ʮ��ǰ������Ѫ����ӽ�������󣬿��ǣ�����������ǿ��ķ�ħ����ħ��ʵ��̫�����ˣ�������ս��һ��ʼʱ���ܵ����ش�����ʱ�ҡ����ɳܵ����ˡ�\n������������Ѫ�֣�һ�����ӳ�������󡭡��Ҿ�Ȼ�����������ˣ�������һ�𳤴�һ�����ħս�������ǣ��Ҿ�Ȼ������ôһ���ܵĶ��������ˡ���</brief>
			<await>~��</await>
			<finish>ʮ���������������޾�������У������Һò����׹��������ٴ������������ֻ���һ����������������һ�������һ��ɳ�һ��ս���Ķ��ѡ��������ǣ�Ѫ�ֲ������Ǹ�������а��Ϊ���ε�Ѫ�֣�������Զ���뿪�ˣ���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5043" />
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
			<![CDATA[��#NPCLINK<STR:ð���߼Ӳ�,NPCKEYNAME:ð���߼Ӳ�,MOVE:1>#�Ի���]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:ð���߼Ӳ�,NPCKEYNAME:ð���߼Ӳ�,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>