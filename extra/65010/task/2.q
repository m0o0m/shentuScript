<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2" name="#COLORCOLOR_YELLOW#[主线]  #COLORCOLOR_ORANGE#天生冤家" type="1" suggest_level="1" visible="1" next_id="3">
		<script name="任务执行脚本" />
		<description>
			咳！既然是老头喊你来找我的，我想你该再去多跑一趟，去找咳……我的手下败将。你只要记住一点，她说什么你都不要信，进攻才是最好防御！修炼是强者必经之路，不能忘记，路上记得消灭2只鹿全当修炼了。
		</description>
		<dialogue>
			<brief>咳！既然是老头喊你来找我的，我想你该再去多跑一趟，去找咳……我的手下败将。你只要记住一点，她说什么你都不要信，进攻才是最好防御！修炼是强者必经之路，不能忘记，路上记得消灭2只鹿全当修炼了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>什么？矮冬瓜居然让你来找我？难道今天太阳打西边出来了？唉，他还好吧？其实当年我们青梅竹马，但是各有所好，他好兵器，喜好进攻；而我痴迷防具，擅于防御；每次见面说不到三句就会吵起来，也许这是天意吧，攻防原本相生相克。呀！一不小心跟你说了这么多，这件防具正适合你现在这个阶段，拿去吧。</finish>
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:56,POSY:233,STR:鹿># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:防具大师,NPCKEYNAME:新手村防具大师>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="2" >
					<group_hunting keyname="鹿" />
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