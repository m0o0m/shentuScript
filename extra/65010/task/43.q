<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="43" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�����·" type="1" suggest_level="1" visible="1" next_id="44">
		<script name="����ִ�нű�" />
		<description>
			̫�����ˣ��������������Ĺ���׷�����ǣ��ۿ��Ϳ쵽�����ˣ����Խ��Խ�࣬���·������ס�ˡ��찡����ô�찡�����滹�кö����أ�
		</description>
		<dialogue>
			<brief>̫�����ˣ��������������Ĺ���׷�����ǣ��ۿ��Ϳ쵽�����ˣ����Խ��Խ�࣬���·������ס�ˡ��찡����ô�찡�����滹�кö����أ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�����ӵģ�ɱ��һ������һ���������û���ˣ������ӵģ��������������͵Ϯ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="42" />
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
			<![CDATA[#LINK<MAP:��һ��,POSX:70,POSY:29,STR:ʳ��Ы��,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:������ʿ,NPCKEYNAME:ʳ�˴�����ʿ,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="6" >
					<group_hunting keyname="ʳ��Ы��" />
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