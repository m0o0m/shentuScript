
--[[
	JSON[1]  �ṹ�����ֽṹ[2]  

	json��˵����javascript�еĶ�������飬���������ֽṹ���Ƕ�������顾���ֲ�ͬ�ṹ����ͨ�������ֽṹ���Ա�ʾ���ָ��ӵĽṹ��

	1�����󣺶�����js�б�ʾΪ��{}�������������ݣ����ݽṹΪ {key��value,key��value,...}�ļ�ֵ�ԵĽṹ,���������������У�keyΪ��������ԣ�valueΪ��Ӧ������ֵ�����Ժ�������⣬
	   ȡֵ����Ϊ ����.key ��ȡ����ֵ���������ֵ�����Ϳ����� ���֡��ַ��������顢�����֡�

	2�����飺������js���������š�[]�������������ݣ����ݽṹΪ ["java","javascript","vb",...]��
	   ȡֵ��ʽ������������һ����ʹ��������ȡ���ֶ�ֵ�����Ϳ����� ���֡��ַ��������顢�����֡�

	������������2�ֽṹ�Ϳ�����ϳɸ��ӵ����ݽṹ��
--]]
--��д��ʽ1
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

--��д��ʽ2
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
	Tips�ı���һ��Json�ַ�����ÿ��tips��Jsonֵ�����飬��������������������
							  ÿ��Jsonֵ���������飬table���ַ��������֡�table�ô�������������
							  Jsonֵ֮���ö��Ÿ�����Json�еļ���������������������ֵ��ð�Ÿ�����
	�ٸ����ӣ�
		[{"image":1901600040}, {"name":"ͼƬ"}]
--]]
