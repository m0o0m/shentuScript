
--[[
	JSON[1]  结构有两种结构[2]  

	json简单说就是javascript中的对象和数组，所以这两种结构就是对象和数组【两种不同结构】，通过这两种结构可以表示各种复杂的结构。

	1、对象：对象在js中表示为“{}”括起来的内容，数据结构为 {key：value,key：value,...}的键值对的结构,在面向对象的语言中，key为对象的属性，value为对应的属性值，所以很容易理解，
	   取值方法为 对象.key 获取属性值，这个属性值的类型可以是 数字、字符串、数组、对象几种。

	2、数组：数组在js中是中括号“[]”括起来的内容，数据结构为 ["java","javascript","vb",...]，
	   取值方式和所有语言中一样，使用索引获取，字段值的类型可以是 数字、字符串、数组、对象几种。

	经过对象、数组2种结构就可以组合成复杂的数据结构了
--]]
--书写格式1
var people = {
    "programmers": [{
        "firstName": "Brett",
        "lastName": "McLaughlin",
        "email": "aaaa"
    }, {
        "firstName": "Jason",
        "lastName": "Hunter",
        "email": "bbbb"
    }, {
        "firstName": "Elliotte",
        "lastName": "Harold",
        "email": "cccc"
    }],
    "authors": [{
        "firstName": "Isaac",
        "lastName": "Asimov",
        "genre": "sciencefiction"
    }, {
        "firstName": "Tad",
        "lastName": "Williams",
        "genre": "fantasy"
    }, {
        "firstName": "Frank",
        "lastName": "Peretti",
        "genre": "christianfiction"
    }],
    "musicians": [{
        "firstName": "Eric",
        "lastName": "Clapton",
        "instrument": "guitar"
    }, {
        "firstName": "Sergei",
        "lastName": "Rachmaninoff",
        "instrument": "piano"
    }]
};

--书写格式2
var people = {
    "programmers": [{
						"firstName": "Brett",
						"lastName": "McLaughlin",
						"email": "aaaa"
					}, 
					{
						"firstName": "Jason",
						"lastName": "Hunter",
						"email": "bbbb"
					}, 
					{
						"firstName": "Elliotte",
						"lastName": "Harold",
						"email": "cccc"
					}],
    "authors": [{
					"firstName": "Isaac",
					"lastName": "Asimov",
					"genre": "sciencefiction"
				}, {
					"firstName": "Tad",
					"lastName": "Williams",
					"genre": "fantasy"
				}, {
					"firstName": "Frank",
					"lastName": "Peretti",
					"genre": "christianfiction"
				}],
    "musicians": [{
					"firstName": "Eric",
					"lastName": "Clapton",
					"instrument": "guitar"
				}, {
					"firstName": "Sergei",
					"lastName": "Rachmaninoff",
					"instrument": "piano"
				}]
};

--[[
	Tips文本是一个Json字符串：每个tips是Json值的数组，数组用中括号括起来。
							  每个Json值可以是数组，table，字符串，数字。table用大括号括起来。
							  Json值之间用逗号隔开，Json中的键都用引号引起来，键与值用冒号隔开。
	举个例子：
		[{"image":1901600040}, {"name":"图片"}]
--]]
