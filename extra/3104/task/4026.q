<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="4026" name="[金币任务]-珍贵坐骑征集（可循环任务）" type="2" suggest_level="1" visible="1">
		<description>
			随着无数的少年投入到了与恶魔的战争之中，我们的军队也在不断扩大！\n　　这种形势令人振奋，但是，对战马的需求也需来越大，尤其缺乏珍贵坐骑！如果你能为我提供，无论是[裂天魔狮]还是[神兽]我们都需要！\n　　至于奖励，我们会提供大量的金币哦！\n　　珍贵坐骑可从[目标]里获得。
		</description>
		<dialogue>
			<brief>随着无数的少年投入到了与恶魔的战争之中，我们的军队也在不断扩大！\n　　这种形势令人振奋，但是，对战马的需求也需来越大，尤其缺乏珍贵坐骑！如果你能为我提供，无论是[裂天魔狮]还是[神兽]我们都需要！\n　　至于奖励，我们会提供大量的金币哦！\n　　珍贵坐骑可从[目标]里获得。</brief>
			<await>还没有收集到足够的马匹吗？请多多留意关于珍贵坐骑的消息吧。</await>
			<finish>不错，这是非常优秀的坐骑，只要经过短期的驯养，就可以放心使用了！</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<level enable="1" min_num="32" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[收集一匹#COLORCOLOR_GOLD#开光后#COLOREND#的珍贵坐骑#ITEMGROUP0#，可提交#COLORCOLOR_GOLD#裂天魔狮#COLOREND#、#COLORCOLOR_GOLD#神兽#COLOREND#任意一种。提示：珍贵坐骑可从[目标]里获得。]]>
			</progressing>
			<accomplishing>
			<![CDATA[将收集到的珍贵坐骑交给#NPCLINK<STR:驯兽师,NPCKEYNAME:巫山城驯兽师,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_items>
				<group n="1" bind_require="2" >
					<group_item keyname="裂天魔狮" />
					<group_item keyname="神兽" />
				</group>
			</group_items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="1500000" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>