<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3311" name="[����]-ʧ�ܵ�Զ��(2)" type="1" suggest_level="1" visible="1">
		<script name="3311" />
		<description>
			��һ�����������ݡ����������������ս�ѣ����ǣ������ڳ�����û�д������ǵ�ʬ�塭�����ǳ��衭��\n�������������Ǽ���˵����ɣ���Щ�����ƺ��������⽫�����ʬ�嵱��ʳ������ǵģ����Ѿ����ˣ���ô��������������������һ�10λʿ����ʬ����
		</description>
		<dialogue>
			<brief>��һ�����������ݡ����������������ս�ѣ����ǣ������ڳ�����û�д������ǵ�ʬ�塭�����ǳ��衭��\n�������������Ǽ���˵����ɣ���Щ�����ƺ��������⽫�����ʬ�嵱��ʳ������ǵģ����Ѿ����ˣ���ô��������������������һ�10λʿ����ʬ����</brief>
			<await>��û�ҵ�ʿ���������ʬ����?</await>
			<finish>лл��̫лл���ˣ�л�����еĻ���л���Ҷ�Ҫлл�㣡</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="54" max_num="200" />
			<prologues>
				<group>
					<prologue id="3310" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<process>
			<trophies>
				<trophy monster="�ؾ�����1" item="����ʿ����ʬ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="2600" />
				<trophy monster="�ؾ�����1" item="����ʿ����ʬ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="2600" />
				<trophy monster="��ǯз1" item="����ʿ����ʬ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="2000" />
				<trophy monster="������1" item="����ʿ����ʬ��" min_num="1" max_num="1" bind_require="1" limit="10" chance="2000" />
			</trophies>
		</process>
		<tracker>
			<progressing>
			<![CDATA[�ڳ�������,�Ӻ��׹������������10��#LINK<MAP:����3,POSX:69,POSY:134,STR:����ʿ����ʬ��,MOVE:1>##ITEM0#.]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:Զ����ͳ��,NPCKEYNAME:Զ����ͳ��,MOVE:1>#�Ի���]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="����ʿ����ʬ��"  n="10" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="8420000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="�޸���ˮ"  n="1" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>