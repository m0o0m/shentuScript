<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#可造之材" type="1" suggest_level="1" visible="1" next_id="5">
		<script name="任务执行脚本" />
		<description>
			心态平和，不骄不躁，那老头眼光果然犀利，时候不早了，你去村长那里让他瞧瞧你吧，指不定送你什么压箱底的宝贝呢。顺道去消灭3只猴子，不要问为什么，以后你就知道了。
		</description>
		<dialogue>
			<brief>心态平和，不骄不躁，那老头眼光果然犀利，时候不早了，你去村长那里让他瞧瞧你吧，指不定送你什么压箱底的宝贝呢。顺道去消灭3只猴子，不要问为什么，以后你就知道了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>最近村子外来人突然增多，似乎与大陆一种神秘力量崛起有着莫大的关系。这股邪恶的力量使得不少温和的生物也开始躁动起来，看来我们村也无法避免被卷入其中，唉，好不容易让大家隐于大陆，希望不要付之东流才好。年轻人，你的成长很快，你现在的武器无法满足你了，试试这把吧！</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:45,POSY:173,STR:顽皮猴># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复#NPCLINK<STR:村长,NPCKEYNAME:新手村村长>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="3" >
					<group_hunting keyname="多钩猫" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="15000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="4000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>