<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="65" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�����" type="1" suggest_level="1" visible="1" next_id="66">
		<script name="����ִ�нű�" />
		<description>
			�Աߵ������ʿʮ�ִ�����ֻҪ��ȥ�ˣ����ǾʹӺ�Ϯ�����ǵð�����鷳�Ƚ���ɾ���
		</description>
		<dialogue>
			<brief>�Աߵ������ʿʮ�ִ�����ֻҪ��ȥ�ˣ����ǾʹӺ�Ϯ�����ǵð�����鷳�Ƚ���ɾ���</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>���ڿ������ˣ���л�����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="64" />
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
			<![CDATA[#LINK<MAP:��������һ��,POSX:79,POSY:124,STR:�����ʿ,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:����,NPCKEYNAME:�����һ�����,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="7" >
					<group_hunting keyname="�����ʿ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="100000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>