<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3283" name="[����]-�Ϸ������ð��" type="1" suggest_level="1" visible="1" next_id="3284">
		<script name="3283" />
		<description>
			�ھ��ص���ʷ��ʵ��¼�У������۹��������Ϸ�����õ���һ��������ͼ����Ƭ�����ǣ���������Ƭ�Ĵ󴬣�ȴ���ճ�û�ں��ף������Ƭ��ȻҲ��ʧ��ãã��֮�С�\n������Ը��ǰ���Ϸ�����Ѱ�������Ƭ�����ã��鱨˵�Ϸ������к������ң�������˳�ֽ����Щ�鷳�ɣ��ں�����ڴ�,Զ����ͳ����������ṩ������鱨��
		</description>
		<dialogue>
			<brief>�ھ��ص���ʷ��ʵ��¼�У������۹��������Ϸ�����õ���һ��������ͼ����Ƭ�����ǣ���������Ƭ�Ĵ󴬣�ȴ���ճ�û�ں��ף������Ƭ��ȻҲ��ʧ��ãã��֮�С�\n������Ը��ǰ���Ϸ�����Ѱ�������Ƭ�����ã��鱨˵�Ϸ������к������ң�������˳�ֽ����Щ�鷳�ɣ��ں�����ڴ�,Զ����ͳ����������ṩ������鱨��</brief>
			<await>�Ϸ�������Ҫ���Ŭ����</await>
			<finish>������������ж�������ʿ���ܸ��˼����㣡���������﷢����һ�ҹŴ��ĳ���,�����ϱ���֪�Ķ�ħ���ӵ�ǿ��Ĺ���!</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="200" />
			<prologues>
				<group>
					<prologue id="3282" />
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
			<![CDATA[�Ӷ��ٳ�#NPCLINK<STR:������·��,NPCKEYNAME:�����ؾ�����,MOVE:1>#�����ﺣ����ڣ��ҵ�#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�Ӷ��ٳ�#NPCLINK<STR:������·��,NPCKEYNAME:�����ؾ�����,MOVE:1>#�����ﺣ����ڣ��ҵ�#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="280000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>