<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="36" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#�涴���" type="1" suggest_level="1" visible="1" next_id="37">
		<script name="����ִ�нű�" />
		<description>
			�ȣ���Щ��Ϊ��Ѱ���ҿ�û��ȥ�յأ��ⶴѨ����ǰҲ������û�д�ʱ��ô���ա�����ʲô�����ڴ����˵������ʲô�����ء��ȣ�ǰ����Щ���̵Ĺ��ﲻ���ǣ���Ҫ���С�ġ�
		</description>
		<dialogue>
			<brief>�ȣ���Щ��Ϊ��Ѱ���ҿ�û��ȥ�յأ��ⶴѨ����ǰҲ������û�д�ʱ��ô���ա�����ʲô�����ڴ����˵������ʲô�����ء��ȣ�ǰ����Щ���̵Ĺ��ﲻ���ǣ���Ҫ���С�ġ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>������ܹ���ί�ɵ��������˰ɣ�����̫���ˣ����ǲ��ҵ�ԭ���ˡ���һ����һ������Ϊ�������ԭ���º͵ĳ��Ӷ��궯�������Ƕ�������������棬������ǰ��ǲ�˺ü�ʮ�˾����ȥ�������һ���⡣��������ֻ�����˳������������ﶢ������Ķ������б�ʺ�����֪ͨ�������Ӧ�ԡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="35" />
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
			<![CDATA[#LINK<MAP:��򼶴����,POSX:86,POSY:105,STR:�ڰ�����,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:Ѳ�߶ӳ�,NPCKEYNAME:���涴����Ѳ�߶ӳ�,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="15" >
					<group_hunting keyname="��ɫ����" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>