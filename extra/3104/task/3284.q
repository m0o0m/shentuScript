<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3284" name="[主线]-危险的侦查(1)" type="1" suggest_level="1" visible="1" next_id="3285">
		<description>
			我们奉命来了南方海域，在查探无数的沉船之后,眼前的这一艘很可能便是我们一直在寻找的,载有生死轮图碎片的那一艘,但是,沉船中有着凶残的海底怪物……它们击退了我们的进攻，现在我们需要更多的情报。为了试探怪物的实力，请进入沉船一层二层，每种怪物各击杀10只吧。
		</description>
		<dialogue>
			<brief>我们奉命来了南方海域，在查探无数的沉船之后,眼前的这一艘很可能便是我们一直在寻找的,载有生死轮图碎片的那一艘,但是,沉船中有着凶残的海底怪物……它们击退了我们的进攻，现在我们需要更多的情报。为了试探怪物的实力，请进入沉船一层二层，每种怪物各击杀10只吧。</brief>
			<await>还没有摸清海底怪物的实力报告吗？</await>
			<finish>你的这情报对我们极为重要。谢谢你</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="51" max_num="200" />
			<prologues>
				<group>
					<prologue id="3283" />
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
			<![CDATA[进入沉船一二层,击杀10只#LINK<MAP:海底1,POSX:83,POSY:137,STR:石甲鱼,MOVE:1>##MONSTERGROUP0#、10只#LINK<MAP:海底1,POSX:79,POSY:137,STR:铁棘鱼,MOVE:1>##MONSTERGROUP1#、10只#LINK<MAP:海底1,POSX:73,POSY:139,STR:铁螯怪,MOVE:1>##MONSTERGROUP2#、10只#LINK<MAP:海底2,POSX:114,POSY:89,STR:巨钳蟹,MOVE:1>##MONSTERGROUP3#后回报远征军统领.]]>
			</progressing>
			<accomplishing>
			<![CDATA[回到海底入口，将海底怪物的实力告诉#NPCLINK<STR:远征军统领,NPCKEYNAME:远征军统领,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="石甲鱼1" />
				</group>
				<group n="10" >
					<group_hunting keyname="铁棘鱼1" />
				</group>
				<group n="10" >
					<group_hunting keyname="铁螯怪1" />
				</group>
				<group n="10" >
					<group_hunting keyname="巨钳蟹1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="5120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>