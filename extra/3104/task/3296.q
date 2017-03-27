<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3296" name="[主线]-大师的困惑(3)" type="1" suggest_level="1" visible="1" next_id="3297">
		<description>
			据我所知，巫山城的首饰商就有一条可作镇店之宝的项链，名为星光灿烂。相信应该多花点钱便可以买到。\n　　看着我干嘛？还不去！
		</description>
		<dialogue>
			<brief>据我所知，巫山城的首饰商就有一条可作镇店之宝的项链，名为星光灿烂。相信应该多花点钱便可以买到。\n　　看着我干嘛？还不去！</brief>
			<await>去找巫山城的首饰商,想办法弄来她的镇店之宝吧</await>
			<finish>你受道家大师的委托，来我这里购买星光灿烂送给驯兽师呀。真是一件浪漫的趣事。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3295" />
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
			<![CDATA[从巫山城的#NPCLINK<STR:首饰商,NPCKEYNAME:巫山城首饰商,MOVE:1>#身上弄到星光灿烂这件项链。]]>
			</progressing>
			<accomplishing>
			<![CDATA[从巫山城的#NPCLINK<STR:首饰商,NPCKEYNAME:巫山城首饰商,MOVE:1>#身上弄到星光灿烂这件项链。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="225000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>