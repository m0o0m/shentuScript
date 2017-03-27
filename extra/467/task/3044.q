<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3044" name="[主线]-骷髅暴动" type="1" suggest_level="1" visible="1" next_id="3045">
		<description>
			非常感谢英雄对巫山城做出的贡献，不过现在不是开心的时候，魔蛇已被镇压，可是骷髅洞却魔化出了骷髅王，希望英雄前去灭杀。
		</description>
		<dialogue>
			<brief>让我们解决骷髅洞的的危机吧，凡是沾染上恶魔之血的骷髅，我们就全部清理掉！\n　　杀掉骷髅王及其护卫！</brief>
			<await>杀掉骷髅王及其护卫了吗？</await>
			<finish>万幸万幸，英雄终于凯旋回来，你的实力已经非常强大，你可以通过老兵去龙城继续强大自己了！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3040" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="疗伤药包"  n="3" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去骷髅洞击杀#LINK<MAP:兽人古墓一层,POSX:332,POSY:296,STR:骷髅精灵,MOVE:1>##MONSTERGROUP1# 
#LINK<MAP:兽人古墓一层,POSX:308,POSY:298,STR:骷髅战士,MOVE:1>##MONSTERGROUP0#后再来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:天机老人,NPCKEYNAME:天机老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="骷髅战士" />
					<group_hunting keyname="骷髅战士0" />
				</group>
				<group n="1" >
					<group_hunting keyname="骷髅精灵1" />
					<group_hunting keyname="骷髅精灵" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="79300" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="魔腕"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>