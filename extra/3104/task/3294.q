<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3294" name="[主线]-大师的困惑(1)" type="1" suggest_level="1" visible="1" next_id="3295">
		<description>
			因魔法阵转化而得来的水晶石，是一种非常珍稀的东西。这里面包含的秘密,正是我来到海角秘境的原因.\n　　虽然，你带来的水晶石对我帮助极大，但是，这个秘密也不能轻易告诉你。除非……\n　　东临城的驯兽师，见我英俊潇洒、风采照人、知识渊博、气质不凡而一直向我示爱，这种事情让我感到很困惑……，如果你能打消驯兽师的念头的话……
		</description>
		<dialogue>
			<brief>因魔法阵转化而得来的水晶石，是一种非常珍稀的东西。这里面包含的秘密,正是我来到海角秘境的原因.\n　　虽然，你带来的水晶石对我帮助极大，但是，这个秘密也不能轻易告诉你。除非……\n　　东临城的驯兽师，见我英俊潇洒、风采照人、知识渊博、气质不凡而一直向我示爱，这种事情让我感到很困惑……，如果你能打消驯兽师的念头的话……</brief>
			<await>不帮我解决麻烦,我是不会轻易告诉你水晶石的秘密的</await>
			<finish>不可能，他有不接受我的权力，但我有继续爱他的权力！想让我放弃对他的爱慕是绝不可能的。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3293" />
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
			<![CDATA[回东临城,找到#NPCLINK<STR:驯兽师,NPCKEYNAME:驯兽师,MOVE:1># 表明神秘老者的态度]]>
			</progressing>
			<accomplishing>
			<![CDATA[回东临城,找到#NPCLINK<STR:驯兽师,NPCKEYNAME:驯兽师,MOVE:1># 表明神秘老者的态度]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="195000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>