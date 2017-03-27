<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="20000" name="#COLORCOLOR_YELLOW#[经验] #COLORCOLOR_ORANGE#镇魔塔防" type="3" suggest_level="1" visible="1" next_id="">
		<description>
			心态平和，不骄不躁，那老头眼光果然犀利，时候不早了，你去村长那里让他瞧瞧你吧，指不定送你什么压箱底的宝贝呢。顺道去消灭3只猴子，不要问为什么，以后你就知道了。
		</description>
		<dialogue>
			<brief>心态平和，不骄不躁，那老头眼光果然犀利，时候不早了，你去村长那里让他瞧瞧你吧，指不定送你什么压箱底的宝贝呢。顺道去消灭3只猴子，不要问为什么，以后你就知道了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>最近村子外来人突然增多，似乎与大陆一种神秘力量崛起有着莫大的关系。这股邪恶的力量使得不少温和的生物也开始躁动起来，看来我们村也无法避免被卷入其中，唉，好不容易让大家隐于大陆，希望不要付之东流才好。年轻人，你的成长很快，你现在的武器无法满足你了，试试这把吧！</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="9999999"  />
			<level enable="1" min_num="999" max_num="9999" />
			<prologues>
				<group>
					<prologue id="0" />
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
			<![CDATA[找封魔使节 #NPCLINK<STR:（接受任务）,NPCKEYNAME:巫山城封魔使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[找封魔使节 #NPCLINK<STR:（接受任务）,NPCKEYNAME:巫山城封魔使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="测试鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>