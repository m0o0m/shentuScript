<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="47" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#食人统领" type="1" suggest_level="1" visible="1" next_id="48">
		<script name="47q" />
		<description>
			此入口通往乃是食人族的最后一层，里面有着食人一族的统领坐镇，老衲本以为可以收了那孽畜，可惜它的蛮力超出了我的预料，交锋数招只因老衲消耗过度，无奈只能退出稳住元气。瞧少侠非寻常人等，既然有此等机缘，老衲便把战神赠与少侠吧。还望少侠务必消灭那孽畜！
		</description>
		<dialogue>
			<brief>此入口通往乃是食人族的最后一层，里面有着食人一族的统领坐镇，老衲本以为可以收了那孽畜，可惜它的蛮力超出了我的预料，交锋数招只因老衲消耗过度，无奈只能退出稳住元气。瞧少侠非寻常人等，既然有此等机缘，老衲便把战神赠与少侠吧。还望少侠务必消灭那孽畜！</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>哟，你终于回来了。小家伙，瞧你的模样，这次似乎实力又精进不少哦。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="46" />
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
			<![CDATA[通关 #LINK<MAP:猪洞副本,POSX:24,POSY:53,STR:食人魔洞穴># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:物品回收员,NPCKEYNAME:巫山城物品回收员,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="白色恶猪副本" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1300000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="2" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>