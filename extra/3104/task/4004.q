<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4004" name="[֧��]-����ĸ���(2)" type="2" suggest_level="1" visible="1">
		<description>
			�������������������������źߡ���\n��������һ�����ֵ�Ů���ӣ���ϲ�������ˣ�ÿ���������Ҷ�Ҫ�߸�һ�������˶������Ҹ質�úã���Ҳ��������\n�������ǣ��������˵������������һ�ָ����������ϰ���������Ů���°���ȴ��������ӣ����������ʮ�ֵĺ��������˶��Ĳ��ѣ���Ҳ������������\n�����������������ޱȣ���ֻ�Ǹ�������Ů���ӣ�����ȥ��ôΣ�յĵط�����������һ���洫�ļ����У����Խ������ĸ����ռ���������ʿ�����ܰ����������Ҳ��������ô����ĸ�����\n
		</description>
		<dialogue>
			<brief>�������������������������źߡ���\n��������һ�����ֵ�Ů���ӣ���ϲ�������ˣ�ÿ���������Ҷ�Ҫ�߸�һ�������˶������Ҹ質�úã���Ҳ��������\n�������ǣ��������˵������������һ�ָ����������ϰ���������Ů���°���ȴ��������ӣ����������ʮ�ֵĺ��������˶��Ĳ��ѣ���Ҳ������������\n�����������������ޱȣ���ֻ�Ǹ�������Ů���ӣ�����ȥ��ôΣ�յĵط�����������һ���洫�ļ����У����Խ������ĸ����ռ���������ʿ�����ܰ����������Ҳ��������ô����ĸ�����\n</brief>
			<await>����ô�ܾܾ�������ôһ�������ɰ���Ů���ӵ�Ҫ���أ�\n</await>
			<finish>��ô�����ô�����������Ƿ����������������ˮ�ӵ������飬ร���̫�����ˡ���\n������ʿ����л��İ����������ڲ�֪���������Ͼ�Ȼ������ô�������������\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="100" />
			<prologues>
				<group>
					<prologue id="4003" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="������"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ǰ��#LINK<MAP:����3,POSX:68,POSY:133,STR:�ؾ���������,MOVE:1>#��ʹ����Ʒ#COLORCOLOR_GREENG#������#COLOREND#�ռ����ؾ������ĸ�����]]>
			</progressing>
			<accomplishing>
			<![CDATA[���Ѿ��ռ������ؾ������ĸ������ض��ٳǽ���#NPCLINK<STR:�÷�,NPCKEYNAME:���ٳǲ÷�,MOVE:1>#�ɡ�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="������(���)"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="50000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>