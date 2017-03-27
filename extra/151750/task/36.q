<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="36" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#虫洞变故" type="1" suggest_level="1" visible="1" next_id="37">
		<script name="任务执行脚本" />
		<description>
			咳！这些年为了寻宝我可没少去险地，这洞穴我以前也来过，没有此时那么凶险。定有什么东西在此作祟，说不定是什么宝贝呢。咳！前方有些带刺的怪物不好惹，需要多加小心。
		</description>
		<dialogue>
			<brief>咳！这些年为了寻宝我可没少去险地，这洞穴我以前也来过，没有此时那么凶险。定有什么东西在此作祟，说不定是什么宝贝呢。咳！前方有些带刺的怪物不好惹，需要多加小心。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>你就是受国王委派的那年轻人吧？真是太好了，我们查找到原因了。是一个大家伙，就是因为它，这边原本温和的虫子都躁动起来。那东西就在这个里面，我们先前派遣了好几十人精锐进去，结果无一幸免。无奈我们只好先退出来，我在这里盯着里面的动向，若有变故好立刻通知外界做好应对。</finish>
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
			<![CDATA[#LINK<MAP:蜈蚣洞二层,POSX:86,POSY:105,STR:黑暗恶蛆,MOVE:1># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:巡逻队长,NPCKEYNAME:毒虫洞二层巡逻队长,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="15" >
					<group_hunting keyname="黑色恶蛆" />
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