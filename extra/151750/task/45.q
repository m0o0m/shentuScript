<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="45" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�ֲ�������" type="1" suggest_level="1" visible="1" next_id="46">
		<script name="����ִ�нű�" />
		<description>
			Ҳ��֪������ð�����ģ���ô�࣬����������ڲ��ϵ����ӡ�Ŀǰ����ֻ���뾡һ�а취ȥ�������ǵ������������������е��˶�������
		</description>
		<dialogue>
			<brief>Ҳ��֪������ð�����ģ���ô�࣬����������ڲ��ϵ����ӡ�Ŀǰ����ֻ���뾡һ�а취ȥ�������ǵ������������������е��˶�������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��л��������֮�����š�����ʵ��Ҳֻ�ǻ��뷹�ԣ�Ҳ��֪����˭�����ƽ����ġ�������ÿ��¡���</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="10000" />
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
			<![CDATA[#LINK<MAP:������,POSX:47,POSY:77,STR:ʳ�˶�ħ,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:ð�Ƶ���,NPCKEYNAME:ʳ�˶�ð�Ƶ���,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="15" >
					<group_hunting keyname="ʳ�˶�ħ" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="160000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>