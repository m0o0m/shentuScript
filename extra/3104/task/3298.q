<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3298" name="[主线]-大师的困惑(4)" type="1" suggest_level="1" visible="1" next_id="3299">
		<description>
			虽然他口头上一直在拒绝,不过,从他送给我这件珍贵的项链上来看,他明明就是口是心非嘛。\n　　当然，如果我的爱情会让他感到困惑的话，我会找一种能让人感到轻松的方式……总之，我们的幸福已经来了！这件护身符，是我母亲送给我的，你帮我转交给他吧，让他一定要小心哦！
		</description>
		<dialogue>
			<brief>虽然他口头上一直在拒绝,不过,从他送给我这件珍贵的项链上来看,他明明就是口是心非嘛。\n　　当然，如果我的爱情会让他感到困惑的话，我会找一种能让人感到轻松的方式……总之，我们的幸福已经来了！这件护身符，是我母亲送给我的，你帮我转交给他吧，让他一定要小心哦！</brief>
			<await>他在海角秘境,去找到他并转交我送给他的护身符吧</await>
			<finish>哼！也算你完成了吧。那么，我便告诉你水晶石的秘密吧。《道藏》卷中曾说：天地万物皆在五行之中，这五行为金、木、水、火、土，这种晶体，便是水行灵力凝聚而成。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3296" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="驯兽师的护身符"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[将驯兽师的护身符转交给#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将驯兽师的护身符转交给#NPCLINK<STR:道术大师,NPCKEYNAME:神秘老者海底,MOVE:1>#。]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="驯兽师的护身符"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="353000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>