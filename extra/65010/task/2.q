<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2" name="#COLORCOLOR_YELLOW#[����]  #COLORCOLOR_ORANGE#����ԩ��" type="1" suggest_level="1" visible="1" next_id="3">
		<script name="����ִ�нű�" />
		<description>
			�ȣ���Ȼ����ͷ���������ҵģ����������ȥ����һ�ˣ�ȥ�ҿȡ����ҵ����°ܽ�����ֻҪ��סһ�㣬��˵ʲô�㶼��Ҫ�ţ�����������÷�����������ǿ�߱ؾ�֮·���������ǣ�·�ϼǵ�����2ֻ¹ȫ�������ˡ�
		</description>
		<dialogue>
			<brief>�ȣ���Ȼ����ͷ���������ҵģ����������ȥ����һ�ˣ�ȥ�ҿȡ����ҵ����°ܽ�����ֻҪ��סһ�㣬��˵ʲô�㶼��Ҫ�ţ�����������÷�����������ǿ�߱ؾ�֮·���������ǣ�·�ϼǵ�����2ֻ¹ȫ�������ˡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>ʲô�������Ͼ�Ȼ���������ң��ѵ�����̫�������߳����ˣ����������ðɣ���ʵ����������÷�������Ǹ������ã����ñ�����ϲ�ý��������ҳ��Է��ߣ����ڷ�����ÿ�μ���˵��������ͻᳳ������Ҳ����������ɣ�����ԭ��������ˡ�ѽ��һ��С�ĸ���˵����ô�࣬����������ʺ�����������׶Σ���ȥ�ɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="1" />
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
			<![CDATA[#LINK<MAP:�°����ִ�,POSX:56,POSY:233,STR:¹># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:���ߴ�ʦ,NPCKEYNAME:���ִ���ߴ�ʦ>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="2" >
					<group_hunting keyname="¹" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="7000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="2000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>