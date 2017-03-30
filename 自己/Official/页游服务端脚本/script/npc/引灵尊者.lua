function main(npc,player)
	msg = "\n    天荒阵的安全必须排在第一位，否则被镇压在天荒阵下的怪物冲出，龙城必毁于一旦。所以，必须想尽办法修复天荒阵的封印魔法阵！\n \n\n \n "
	msg = msg.."<@likai *01*「离开」>\n"
	return msg
end

local talk_t = {"你想象得到封印魔法的奥妙吗？", "封印是天藏大陆最精深的奥术之一。", "天荒阵的封印虽然已经破碎，但封印魔法阵仍然具有研究的价值！"}


function likai(npc,player)
	return ""
end
