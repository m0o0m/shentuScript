<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="5044" name="[剧情]-加布的忏悔（2）" type="2" suggest_level="1" visible="1" next_id="5045">
		<description>
			你说血手已经死了？！他……他居然彻底堕入了邪恶？……这一切，都是我的错！当年，如果我没有因为可耻的懦弱和畏惧，就不会发生这一切！\n　　好吧，是时候说出来了，十年前，我与血手组队进入天荒阵，可是，我们遇上了强大的风魔，风魔的实力太可怕了，我们在战斗一开始时就受到了重创，当时我……可耻地逃了。\n　　我抛下了血手，一个人逃出了天荒阵……我居然抛弃队友逃了，我们曾一起长大，一起与恶魔战斗，但是，我居然抛下这么一亲密的队友逃跑了……
		</description>
		<dialogue>
			<brief>你说血手已经死了？！原来血手已经死了！！他……他居然彻底堕入了邪恶？……这一切，都是我的错！当年，如果我没有因为可耻的懦弱和畏惧，就不会发生这一切！\n　　好吧，是时候说出来了，十年前，我与血手组队进入天荒阵，可是，我们遇上了强大的风魔，风魔的实力太可怕了，我们在战斗一开始时就受到了重创，当时我……可耻地逃了。\n　　我抛下了血手，一个人逃出了天荒阵……我居然抛弃队友逃了，我们曾一起长大，一起与恶魔战斗，但是，我居然抛下这么一亲密的队友逃跑了……</brief>
			<await>~。</await>
			<finish>十年来，我陷入了无尽的忏悔中，现在我好不容易鼓足勇气再次来到天荒阵，我只想找回我曾经的勇气，找回曾与我一起成长一起战斗的队友……，但是，血手不再是那个以消灭邪恶为己任的血手，而且永远地离开了！。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="200" />
			<prologues>
				<group>
					<prologue id="5043" />
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
			<![CDATA[与#NPCLINK<STR:冒险者加布,NPCKEYNAME:冒险者加布,MOVE:1>#对话。]]>
			</progressing>
			<accomplishing>
			<![CDATA[与#NPCLINK<STR:冒险者加布,NPCKEYNAME:冒险者加布,MOVE:1>#对话。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="45000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>