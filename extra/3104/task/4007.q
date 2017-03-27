<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4007" name="[支线]-捉鱼" type="2" suggest_level="1" visible="1" next_id="4008">
		<description>
			小子，你也是前来探宝的吧？此处危险重重，水怪密集，一不小心就会陷入危险之中，我劝你还是不要轻易深入的好。\n　　不过，此处倒是有石甲鱼和铁棘鱼，虽然狂暴凶残，但是肉质却特别鲜美，制作成菜肴后，肥美多汁，色香味浓，更对传承者有着意想不到的效果，如果你肯为我捉来石甲鱼和铁棘鱼，我可以制作成食物后，给你一些。\n
		</description>
		<dialogue>
			<brief>小子，你也是前来探宝的吧？此处危险重重，水怪密集，一不小心就会陷入危险之中，我劝你还是不要轻易深入的好。\n　　不过，此处倒是有石甲鱼和铁棘鱼，虽然狂暴凶残，但是肉质却特别鲜美，制作成菜肴后，肥美多汁，色香味浓，更对传承者有着意想不到的效果，如果你肯为我捉来石甲鱼和铁棘鱼，我可以制作成食物后，给你一些。\n</brief>
			<await>快去抓些石甲鱼和铁棘鱼来吧。\n</await>
			<finish>这么快就捉来石甲鱼和铁棘鱼了？\n　　真的不错，就是这种鱼，我马上把它们制作成食物，你一定不会失望的，哈哈……\n</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="45" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[前往#LINK<MAP:海底1,POSX:74,POSY:144,STR:沉船秘境一层,MOVE:1>#，杀死#LINK<MAP:海底1,POSX:74,POSY:144,STR:石甲鱼,MOVE:1>#和#LINK<MAP:海底1,POSX:74,POSY:144,STR:铁棘鱼,MOVE:1>#，获得10只#COLORCOLOR_GREENG#新鲜的石甲鱼#COLOREND##ITEM0#，10只#COLORCOLOR_GREENG#新鲜的铁棘鱼#COLOREND##ITEM1#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[回海底入口，与#NPCLINK<STR:秘境老人,NPCKEYNAME:秘境老人,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="新鲜的石甲鱼"  n="10" bind_require="2" />
				<item keyname="新鲜的铁棘鱼"  n="10" bind_require="2" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="70000" ingot="0" bind_ingot="0" integral="0" gold="10000" bind_gold="0" >
			<awards>
				<award keyname="石甲鱼串烧"  n="1" bind_require="0" />
				<award keyname="铁棘鱼烤鱼片"  n="1" bind_require="0" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>