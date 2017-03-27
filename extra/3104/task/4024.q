<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4024" name="[金币任务]-普通战马征集（可循环任务）" type="2" suggest_level="1" visible="1">
		<description>
			随着恶魔的据点不断被攻克，所有人都感受到了来自前方光明的召唤！无数的少年投入到了与恶魔的战争之中，我们的军队也在不断扩大！\n　　这种形势令人振奋，但是，对战马的需求也需来越大！勇士，请帮助我们收集马匹吧，无论是【汗血宝马】、【疾风】还是【绝影】，我们都大量需要！\n　　至于奖励，我们会提供足够的金币哦！\n　　提示：普通坐骑在巫山城马场捕捉。
		</description>
		<dialogue>
			<brief>随着恶魔的据点不断被攻克，所有人都感受到了来自前方光明的召唤！无数的少年投入到了与恶魔的战争之中，我们的军队也在不断扩大！\n　　这种形势令人振奋，但是，对战马的需求也需来越大！勇士，请帮助我们收集马匹吧，无论是【汗血宝马】、【疾风】还是【绝影】，我们都大量需要！\n　　至于奖励，我们会提供足够的金币哦！\n　　提示：普通坐骑在巫山城马场捕捉。</brief>
			<await>还没有收集到足够的马匹吗？巫山城的马场有着足够的野马。</await>
			<finish>不错，是很合适的坐骑！只要经过短期的驯养，就是一匹优秀的战马了！</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<level enable="1" min_num="20" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[收集一匹#COLORCOLOR_GOLD#开光后#COLOREND#的普通坐骑#ITEMGROUP0#，你可以提交#COLORCOLOR_GOLD#汗血宝马#COLOREND#、#COLORCOLOR_GOLD#疾风#COLOREND#、#COLORCOLOR_GOLD#绝影#COLOREND#任意一种.提示：普通坐骑在巫山城马场捕捉。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将收集到的普通坐骑交给#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="汗血宝马" />
					<group_item keyname="疾风" />
					<group_item keyname="绝影" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="230000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>