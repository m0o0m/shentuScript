<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="42" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�������" type="1" suggest_level="1" visible="1" next_id="43">
		<script name="����ִ�нű�" />
		<description>
			���滹�кö����ţ��������Ƕ��Ǳ��ų����ģ��˶���и���Ӧ��˭���������ǵ�����Խ��Խ�ࡣ������Ӳ�����ĳ�ɢ�ˡ�����Ӣ�۰�æ��һ����������֮�ˡ�
		</description>
		<dialogue>
			<brief>���滹�кö����ţ��������Ƕ��Ǳ��ų����ģ��˶���и���Ӧ��˭���������ǵ�����Խ��Խ�ࡣ������Ӳ�����ĳ�ɢ�ˡ�����Ӣ�۰�æ��һ����������֮�ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�������ˣ�����Ϊ�Ҿͻ���ô���ˡ�ллӢ�ۣ����˱ض��кñ���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="41" />
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
			<![CDATA[#LINK<MAP:��һ��,POSX:101,POSY:40,STR:ʳ�˶�ħ,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:С�л�,NPCKEYNAME:ʳ��һС�л�,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="6" >
					<group_hunting keyname="ʳ�˶�ħ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="2000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>