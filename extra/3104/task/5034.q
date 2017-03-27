<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5034" name="[支线]-绝路城守卫的请求（4）" type="2" suggest_level="1" visible="1">
		<description>
			勇士，我需要帮助！我们发现了五道黑影潜入了绝路城，我一路追踪而来，发现他们穿着打扮，像极了投奔邪庙的堕落者，现在他们已经进入了绝路城西部。他们潜过这么远的距离来到这里，肯定没有好事，一定要消灭他们，在摇篮中扼杀他们的阴谋！
		</description>
		<dialogue>
			<brief>勇士，我需要帮助！我们发现了五道黑影潜入了绝路城，我一路追踪而来，发现他们穿着打扮，像极了投奔邪庙的堕落者，现在他们已经进入了绝路城西部。他们潜过这么远的距离来到这里，肯定没有好事，一定要消灭他们，在摇篮中扼杀他们的阴谋！</brief>
			<await>深入绝路城西部，击杀秘密潜入的邪庙密使与密使护卫。</await>
			<finish>原来邪庙派人联络牛魔将军！他们肯定有阴谋，幸好他们的密使已经被勇士你消灭！\n　　至于邪庙是什么，那得等你提升到更高级别才能真的了解。年青人，我期待你的成长！。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5033" />
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
			<![CDATA[深入绝路城西部，击杀#LINK<MAP:绝路城3,POSX:290,POSY:190,STR:邪庙密使>##MONSTERGROUP0#和#LINK<MAP:绝路城3,POSX:290,POSY:190,STR:密使护卫>##MONSTERGROUP1#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回城与#NPCLINK<STR:老兵,NPCKEYNAME:龙城老兵,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="邪庙密使" />
				</group>
				<group n="4" >
					<group_hunting keyname="密使护卫" />
				</group>
			</group_huntings>
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