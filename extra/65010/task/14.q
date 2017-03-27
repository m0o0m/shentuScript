<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="14" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#初现真相" type="1" suggest_level="1" visible="1" next_id="15">
		<script name="任务执行脚本" />
		<description>
			大爷，我原本是打算去大城市讨个生计的，要不是生活压力太大，我才不愿意往这鬼地方跑呢……咳，好吧，我说重点。前面似乎有个大东西，那低吼声恐怕是我这辈子听过最可怕的声音了，我知道的只有这些了。
		</description>
		<dialogue>
			<brief>大爷，我原本是打算去大城市讨个生计的，要不是生活压力太大，我才不愿意往这鬼地方跑呢……咳，好吧，我说重点。前面似乎有个大东西，那低吼声恐怕是我这辈子听过最可怕的声音了，我知道的只有这些了。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>多谢少侠救命之恩，此生无以为报。这些略表心意，希望少侠不要推辞。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="13" />
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
			<![CDATA[#LINK<MAP:新版新手村,POSX:159,POSY:108,STR:锁链僵尸># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:矿工头目,NPCKEYNAME:矿洞矿工头目>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="墓穴僵尸" />
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