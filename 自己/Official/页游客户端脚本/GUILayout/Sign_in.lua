Sign_in = {}
local ui = "<form default_parent ='Reward_win'><dialog OnInit='Sign_in.UIInit' id='Sign_in' image='1805600002' x='186' y='58' w='622' h='484' revmsg='true'>"
	.."	<image id='image_mon1' image='0' x='20' y='20' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<image id='image_mon2' image='0' x='40' y='20' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<image id='image_y' image='1805600015' x='65' y='20' w='28' h='26' revmsg='true' enable='false'/>"
	.."	<image id='image0' image='1805600027' x='395' y='26' w='169' h='16' revmsg='true' enable='false'/>"
	.."	<image id='image_ci1' image='0' x='570' y='19' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<image id='image_ci2' image='0' x='590' y='19' w='16' h='16' revmsg='true' enable='false'/>"
	.."	<image id='image1' image='1805600014' x='83' y='63' w='49' h='18' revmsg='true' enable='false'/>"
	.."	<image id='image2' image='1805600008' x='157' y='63' w='49' h='18' revmsg='true' enable='false'/>"
	.."	<image id='image3' image='1805600009' x='231' y='63' w='49' h='18' revmsg='true' enable='false'/>"
	.."	<image id='image4' image='1805600010' x='305' y='63' w='49' h='18' revmsg='true' enable='false'/>"
	.."	<image id='image5' image='1805600011' x='379' y='63' w='49' h='18' revmsg='true' enable='false'/>"
	.."	<image id='image6' image='1805600012' x='453' y='63' w='49' h='18' revmsg='true' enable='false'/>"
	.."	<image id='image7' image='1805600013' x='527' y='63' w='49' h='18' revmsg='true' enable='false'/>"
	.."	<image id='Image1'  x='95' y='88' w='14' h='22' enable='false' /><image id='Image2'  x='169' y='88' w='14' h='22' enable='false' /><image id='Image3'  x='243' y='88' w='14' h='22' enable='false' /><image id='Image4'  x='317' y='88' w='14' h='22' enable='false' /><image id='Image5' x='391' y='88' w='14' h='22' enable='false' /><image id='Image6'  x='465' y='88' w='14' h='22' enable='false' />	<image id='Image7' x='539' y='88' w='14' h='22' enable='false' /><image id='edit11'  x='90' y='88' w='14' h='22' enable='false' /><image id='edit12'  x='102' y='88' w='14' h='22' enable='false' />	<image id='edit21'  x='164' y='88' w='14' h='22' enable='false' /><image id='edit22'  x='176' y='88' w='14' h='22' enable='false' /><image id='edit31'  x='238' y='88' w='14' h='22' enable='false' />	<image id='edit32'  x='250' y='88' w='14' h='22' enable='false' /><image id='edit41'  x='312' y='88' w='14' h='22' enable='false' /><image id='edit42'  x='324' y='88' w='14' h='22' enable='false' />	<image id='edit51'  x='386' y='88' w='14' h='22' enable='false' /><image id='edit52'  x='398' y='88' w='14' h='22' enable='false' /><image id='edit61'  x='460' y='88' w='14' h='22' enable='false' />	<image id='edit62'  x='472' y='88' w='14' h='22' enable='false' /><image id='edit71'  x='534' y='88' w='14' h='22' enable='false' /><image id='edit72'  x='546' y='88' w='14' h='22' enable='false' />	<image id='Image8'  x='95' y='124' w='14' h='22' enable='false' />	<image id='Image9'  x='169' y='124' w='14' h='22' enable='false' />	<image id='Image10'  x='243' y='124' w='14' h='22' enable='false' />	<image id='Image11' x='317' y='124' w='14' h='22' enable='false' />	<image id='Image12'  x='391' y='124' w='14' h='22' enable='false' />	<image id='Image13' x='465' y='124' w='14' h='22' enable='false' />	<image id='Image14' x='539' y='124' w='14' h='22' enable='false' />	<image id='edit81'  x='90' y='124' w='14' h='22' enable='false' />	<image id='edit82'  x='102' y='124' w='14' h='22' enable='false' />	<image id='edit91'  x='164' y='124' w='14' h='22' enable='false' />	<image id='edit92'  x='176' y='124' w='14' h='22' enable='false' />	<image id='edit101'  x='238' y='124' w='14' h='22' enable='false' />	<image id='edit102'  x='250' y='124' w='14' h='22' enable='false' />	<image id='edit111'  x='312' y='124' w='14' h='22' enable='false' />	<image id='edit112'  x='324' y='124' w='14' h='22' enable='false' />	<image id='edit121'  x='386' y='124' w='14' h='22' enable='false' />	<image id='edit122'  x='398' y='124' w='14' h='22' enable='false' />	<image id='edit131'  x='460' y='124' w='14' h='22' enable='false' />	<image id='edit132'  x='472' y='124' w='14' h='22' enable='false' />	<image id='edit141'  x='534' y='124' w='14' h='22' enable='false' />	<image id='edit142'  x='546' y='124' w='14' h='22' enable='false' />	<image id='Image15' x='95' y='162' w='14' h='22' enable='false' />	<image id='Image16' x='169' y='162' w='14' h='22' enable='false' />	<image id='Image17' x='243' y='162' w='14' h='22' enable='false' />	<image id='Image18' x='317' y='162' w='14' h='22' enable='false' />	<image id='Image19' x='391' y='162' w='14' h='22' enable='false' />	<image id='Image20' x='465' y='162' w='14' h='22' enable='false' />	<image id='Image21'  x='539' y='162' w='14' h='22' enable='false' />	<image id='edit151'  x='90' y='162' w='14' h='22' enable='false' />	<image id='edit152'  x='102' y='162' w='14' h='22' enable='false' />	<image id='edit161'  x='164' y='162' w='14' h='22' enable='false' />	<image id='edit162'  x='176' y='162' w='14' h='22' enable='false' />	<image id='edit171'  x='238' y='162' w='14' h='22' enable='false' />	<image id='edit172'  x='250' y='162' w='14' h='22' enable='false' />	<image id='edit181'  x='312' y='162' w='14' h='22' enable='false' />	<image id='edit182'  x='324' y='162' w='14' h='22' enable='false' />	<image id='edit191'  x='386' y='162' w='14' h='22' enable='false' />	<image id='edit192'  x='398' y='162' w='14' h='22' enable='false' />	<image id='edit201'  x='460' y='162' w='14' h='22' enable='false' />	<image id='edit202'  x='472' y='162' w='14' h='22' enable='false' />"
	.."	<image id='edit211'  x='534' y='162' w='14' h='22' enable='false' />"
	.."	<image id='edit212'  x='546' y='162' w='14' h='22' enable='false' />"
	.."	<image id='Image22' x='95' y='200' w='14' h='22' enable='false' />"
	.."	<image id='Image23' x='169' y='200' w='14' h='22' enable='false' />"
	.."	<image id='Image24' x='243' y='200' w='14' h='22' enable='false' />"
	.."	<image id='Image25' x='317' y='200' w='14' h='22' enable='false' />"
	.."	<image id='Image26' x='391' y='200' w='14' h='22' enable='false' />"
	.."	<image id='Image27' x='465' y='200' w='14' h='22' enable='false' />"
	.."	<image id='Image28' x='539' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit221'  x='90' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit222'  x='102' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit231'  x='164' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit232'  x='176' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit241'  x='238' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit242'  x='250' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit251'  x='312' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit252'  x='324' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit261'  x='386' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit262'  x='398' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit271'  x='460' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit272'  x='472' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit281'  x='534' y='200' w='14' h='22' enable='false' />"
	.."	<image id='edit282'  x='546' y='200' w='14' h='22' enable='false' />"
	.."	<image id='Image29' x='95' y='238' w='14' h='22' enable='false' />"
	.."	<image id='Image30' x='169' y='238' w='14' h='22' enable='false' />"
	.."	<image id='Image31' x='243' y='238' w='14' h='22' enable='false' />"
	.."	<image id='Image32' x='317' y='238' w='14' h='22' enable='false' />"
	.."	<image id='Image33' x='391' y='238' w='14' h='22' enable='false' />"
	.."	<image id='Image34' x='465' y='238' w='14' h='22' enable='false' />"
	.."	<image id='Image35' x='539' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit291'  x='90' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit292'  x='102' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit301'  x='164' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit302'  x='176' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit311'  x='238' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit312'  x='250' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit321'  x='312' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit322'  x='324' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit331'  x='386' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit332'  x='398' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit341'  x='460' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit342'  x='472' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit351'  x='534' y='238' w='14' h='22' enable='false' />"
	.."	<image id='edit352'  x='546' y='238' w='14' h='22' enable='false' />"
	.."	<image id='Image36' x='95' y='276' w='14' h='22' enable='false' />"
	.."	<image id='Image37' x='169' y='276' w='14' h='22' enable='false' />"
	.."	<image id='Image38' x='243' y='276' w='14' h='22' enable='false' />"
	.."	<image id='Image39' x='317' y='276' w='14' h='22' enable='false' />"
	.."	<image id='Image40' x='391' y='276' w='14' h='22' enable='false' />"
	.."	<image id='Image41' x='465' y='276' w='14' h='22' enable='false' />"
	.."	<image id='Image42' x='539' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit361'  x='90' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit362'  x='102' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit371'  x='164' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit372'  x='176' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit381'  x='238' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit382'  x='250' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit391'  x='312' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit392'  x='324' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit401'  x='386' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit402'  x='398' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit411'  x='460' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit412'  x='472' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit421'  x='534' y='276' w='14' h='22' enable='false' />"
	.."	<image id='edit422'  x='546' y='276' w='14' h='22' enable='false' />"
	.."	<image id='image_gou1' image='1805600047' x='90' y='91' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin1' image='1805600026' x='73' y='79' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou2' image='1805600047' x='164' y='91' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin2' image='1805600026' x='147' y='79' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou3' image='1805600047' x='238' y='91' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin3' image='1805600026' x='221' y='79' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou4' image='1805600047' x='312' y='91' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin4' image='1805600026' x='295' y='79' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou5' image='1805600047' x='386' y='91' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin5' image='1805600026' x='369' y='79' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou6' image='1805600047' x='460' y='91' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin6' image='1805600026' x='443' y='79' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou7' image='1805600047' x='534' y='91' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin7' image='1805600026' x='517' y='79' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou8' image='1805600047' x='90' y='129' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin8' image='1805600026' x='73' y='117' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou9' image='1805600047' x='164' y='129' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin9' image='1805600026' x='147' y='117' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou10' image='1805600047' x='238' y='129' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin10' image='1805600026' x='221' y='117' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou11' image='1805600047' x='312' y='129' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin11' image='1805600026' x='295' y='117' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou12' image='1805600047' x='386' y='129' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin12' image='1805600026' x='369' y='117' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou13' image='1805600047' x='460' y='129' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin13' image='1805600026' x='443' y='117' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou14' image='1805600047' x='534' y='129' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin14' image='1805600026' x='517' y='117' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou15' image='1805600047' x='90' y='167' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin15' image='1805600026' x='73' y='155' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou16' image='1805600047' x='164' y='167' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin16' image='1805600026' x='147' y='155' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou17' image='1805600047' x='238' y='167' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin17' image='1805600026' x='221' y='155' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou18' image='1805600047' x='312' y='167' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin18' image='1805600026' x='295' y='155' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou19' image='1805600047' x='386' y='167' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin19' image='1805600026' x='369' y='155' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou20' image='1805600047' x='460' y='167' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin20' image='1805600026' x='443' y='155' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou21' image='1805600047' x='534' y='167' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin21' image='1805600026' x='517' y='155' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou22' image='1805600047' x='90' y='205' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin22' image='1805600026' x='73' y='193' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou23' image='1805600047' x='164' y='205' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin23' image='1805600026' x='147' y='193' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou24' image='1805600047' x='238' y='205' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin24' image='1805600026' x='221' y='193' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou25' image='1805600047' x='312' y='205' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin25' image='1805600026' x='295' y='193' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou26' image='1805600047' x='386' y='205' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin26' image='1805600026' x='369' y='193' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou27' image='1805600047' x='460' y='205' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin27' image='1805600026' x='443' y='193' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou28' image='1805600047' x='534' y='205' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin28' image='1805600026' x='517' y='193' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou29' image='1805600047' x='90' y='243' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin29' image='1805600026' x='73' y='231' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou30' image='1805600047' x='164' y='243' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin30' image='1805600026' x='147' y='231' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou31' image='1805600047' x='238' y='243' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin31' image='1805600026' x='221' y='231' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou32' image='1805600047' x='312' y='243' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin32' image='1805600026' x='295' y='231' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou33' image='1805600047' x='386' y='243' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin33' image='1805600026' x='369' y='231' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou34' image='1805600047' x='460' y='243' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin34' image='1805600026' x='443' y='231' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou35' image='1805600047' x='534' y='243' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin35' image='1805600026' x='517' y='231' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou36' image='1805600047' x='90' y='281' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin36' image='1805600026' x='73' y='269' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou37' image='1805600047' x='164' y='281' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin37' image='1805600026' x='147' y='269' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou38' image='1805600047' x='238' y='281' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin38' image='1805600026' x='221' y='269' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou39' image='1805600047' x='312' y='281' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin39' image='1805600026' x='295' y='269' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou40' image='1805600047' x='386' y='281' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin40' image='1805600026' x='369' y='269' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou41' image='1805600047' x='460' y='281' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin41' image='1805600026' x='443' y='269' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_gou42' image='1805600047' x='534' y='281' w='38' h='28' revmsg='true' enable='false' visible='false'/>"
	.."	<image id='image_jin42' image='1805600026' x='517' y='269' w='30' h='25' revmsg='true' enable='false' visible='false'/>"
	.."	<itemctrl id='item1' x='22' y='375' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item2' x='86' y='375' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item3' x='152' y='375' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item4' x='217' y='375' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item5' x='283' y='375' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true'/>"
	.."	<itemctrl id='item6' x='22' y='431' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true' visible='false'/>"
	.."	<itemctrl id='item7' x='86' y='432' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true' visible='false'/>"
	.."	<itemctrl id='item8' x='152' y='432' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true' visible='false'/>"
	.."	<itemctrl id='item9' x='217' y='432' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true' visible='false'/>"
	.."	<itemctrl id='item10' x='283' y='431' w='44' h='44' auto_manage='true' rbtn_use='true' use_back='1805600154' enable='true' revmsg='true' visible='false'/>"
	.."	<image id='image_back1' image='1800000296' x='350' y='393' w='85' h='58' revmsg='true'/>"
	.."	<button id='button1' image='1805600150' x='15' y='338' w='66' h='24' OnLButtonUp='Sign_in.selectbutton' revmsg='true' param='1' text='签到2次' text_color='#F8D879'/>"
	.."	<button id='button2' image='1805600150' x='92' y='338' w='66' h='24' OnLButtonUp='Sign_in.selectbutton' revmsg='true' param='2' text='签到5次' text_color='#F8D879'/>"
	.."	<button id='button3' image='1805600150' x='168' y='338' w='66' h='24' OnLButtonUp='Sign_in.selectbutton' revmsg='true' param='3' text='签到10次' text_color='#F8D879'/>"
	.."	<button id='button4' image='1805600150' x='245' y='338' w='66' h='24' OnLButtonUp='Sign_in.selectbutton' revmsg='true' param='4' text='签到17次' text_color='#F8D879'/>"
	.."	<button id='button5' image='1805600150' x='321' y='338' w='66' h='24' OnLButtonUp='Sign_in.selectbutton' revmsg='true' param='5' text='签到22次' text_color='#F8D879'/>"
	.."	<button id='buttonq' image='1805600156' x='478' y='364' w='124' h='49' OnLButtonUp='Sign_in.Qiandao' revmsg='true'/>"
	.."	<button id='buttong' image='1805600160' x='478' y='430' w='124' h='49' OnLButtonUp='Sign_in.GetItem' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function Sign_in.main()
	if GetWindow(nil,"Reward_win,Sign_in") == 0 then
		GenFormByString(ui)
	end	
end

Sign_in.WndHandle = 0
Sign_in.info = {}
Sign_in.jin = 1
Sign_in.qiandao_ci = 0
Sign_in.SelectIndex = 1
Sign_in.IsGet = {}
Sign_in.image = {1805600017,1805600018,1805600019,1805600020,1805600021,1805600022,1805600023,1805600024,1805600025,1805600016}
Sign_in.image1 = {1805600029,1805600030,1805600031,1805600032,1805600169,1805600033,1805600034,1805600035,1805600036,1805600028}
Sign_in.image2 = {1805600038,1805600039,1805600040,1805600041,1805600042,1805600043,1805600044,1805600045,1805600046,1805600037}
function Sign_in.UIInit(_GUIHandle)
--[[	GUIWndSetSizeM(_GUIHandle, 635 ,490)  
	CenterWnd(_GUIHandle)--]]
	Sign_in.WndHandle = _GUIHandle
	for i=1,5 do 
		local hand = GetWindow(_GUIHandle,"button" .. i)
		if hand ~= 0 then 
			GUIWndSetTextArrangeType(hand,0,2,0,0);
		end 
	end
	UI:Lua_SubmitForm("奖励大厅表单","get_item_list", "")
end

function Sign_in.showInfo(_Ret)
	if Sign_in.qiandao_ci ~= 0 then
		return
	end	
	Sign_in.info = _Ret[7]
	Sign_in.IsGet = _Ret[9]
	Sign_in.get_table(_Ret[1],_Ret[2],_Ret[3],_Ret[4],_Ret[5])
	if _Ret[6] == 1 then
		local _GUIHandle = GUIWndFindChildM(Sign_in.WndHandle, "buttonq")
		if _GUIHandle ~= 0 then
			GUIWndSetEnableM(_GUIHandle, false) 	
		end
	end	
	local index = _Ret[8]
	if _Ret[8] > 9 then
		index = _Ret[8] % 10 
		if index == 0 then
			index = 10
		end
		ImageSetImageID(Sign_in.WndHandle,"image_mon1",Sign_in.image[1])
	end	
	ImageSetImageID(Sign_in.WndHandle,"image_mon2",Sign_in.image[index])
	local _GUIHandle = GUIWndFindChildM(Sign_in.WndHandle, "button1")
	if _GUIHandle ~= 0 then
		Sign_in.selectbutton(_GUIHandle)
	end
end

--填充日历
function Sign_in.get_table(days_now,days_old,firstday_week,day_now,sign_t)
	for i = 1 , firstday_week do
		local day = days_old - firstday_week + i
		if tonumber(day) < 10 then
			ImageSetImageID(Sign_in.WndHandle,"Image"..i,Sign_in.image1[day])
		else
			local x = math.floor(day / 10) 
			day = day % 10 
			if day == 0 then
				day = 10
			end
			ImageSetImageID(Sign_in.WndHandle,"edit"..i.."1",Sign_in.image1[x])
			ImageSetImageID(Sign_in.WndHandle,"edit"..i.."2",Sign_in.image1[day])
		end
	end 
	
	local init = firstday_week + 1
	for j = 1 , days_now do
		if tonumber(j) < 10 then
			ImageSetImageID(Sign_in.WndHandle,"Image"..init,Sign_in.image2[j])
		else
			local x = math.floor(j / 10) 
			local y = j % 10 
			if y == 0 then
				y = 10
			end
			ImageSetImageID(Sign_in.WndHandle,"edit"..init.."1",Sign_in.image2[x])
			ImageSetImageID(Sign_in.WndHandle,"edit"..init.."2",Sign_in.image2[y])
		end
		if sign_t[j] == 1 then
			local _Handle = GUIWndFindChildM(Sign_in.WndHandle, "image_gou"..init)
			GUIWndSetVisible(_Handle, true)
			Sign_in.qiandao_ci = Sign_in.qiandao_ci + 1
		end	
		if j == day_now then
			local _Handle = GUIWndFindChildM(Sign_in.WndHandle, "image_jin"..init)
			GUIWndSetVisible(_Handle, true)
			Sign_in.jin = init
		end
		init = init + 1
	end 
	local a = 1 
	for i = init , 42 do 
		if tonumber(a) < 10 then
			ImageSetImageID(Sign_in.WndHandle,"Image"..i,Sign_in.image1[a])
		else
			local x = math.floor(a / 10) 
			local y = a % 10 
			if y == 0 then
				y = 10
			end
			ImageSetImageID(Sign_in.WndHandle,"edit"..i.."1",Sign_in.image1[x])
			ImageSetImageID(Sign_in.WndHandle,"edit"..i.."2",Sign_in.image1[y])
		end
		a = a + 1
	end
	if Sign_in.qiandao_ci > 9 then
		local a = math.floor(Sign_in.qiandao_ci / 10)
		local b = Sign_in.qiandao_ci % 10
		if b == 0 then
			b = 10 
		end
		ImageSetImageID(Sign_in.WndHandle,"image_ci1",Sign_in.image[a])
		ImageSetImageID(Sign_in.WndHandle,"image_ci2",Sign_in.image[b])
	else
		if Sign_in.qiandao_ci == 0 then
			ImageSetImageID(Sign_in.WndHandle,"image_ci1",Sign_in.image[10])
		else
			ImageSetImageID(Sign_in.WndHandle,"image_ci1",Sign_in.image[Sign_in.qiandao_ci])
		end
	end	
	local tab = {2,5,10,17,22}
	for i = 1 , #Sign_in.IsGet do 
		if Sign_in.IsGet[i] == 0 and Sign_in.qiandao_ci >= tab[i] then
			local handle = GetWindow(nil,"Reward_win,image1")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true) 
			end
			break
		end
	end	
end



function Sign_in.selectbutton(_Handle)
	local param = GUIWndGetParam(_Handle)
	Sign_in.SelectIndex = param
	local _GUIHandle = 0
	for i = 1, 5 do
		_GUIHandle=GUIWndFindChildM(Sign_in.WndHandle, "button"..i)
		if i == param then
			GUIButtonSetIsActivePageBtn(_GUIHandle, true)
		else
			GUIButtonSetIsActivePageBtn(_GUIHandle, false)
		end
	end
	for i = 1, 6 do
		_GUIHandle = GUIWndFindChildM(Sign_in.WndHandle, "item"..i)
		if i <= #Sign_in.info[param] then
			local award = Sign_in.info[param][i]
			RDItemCtrlSetGUIDataByKeyName(_GUIHandle, award[1], award[2], false)
			if i == 6 then
				GUIWndSetVisible(_GUIHandle, true)
			end	
		else	
			if i == 6 then
				GUIWndSetVisible(_GUIHandle, false)
			end	
			GUIItemCtrlClearItemData(_GUIHandle)
		end	
	end
	local tab = {2,5,10,17,22}
	if Sign_in.IsGet[Sign_in.SelectIndex] == 1 then
		local _GUIHandle = GUIWndFindChildM(Sign_in.WndHandle, "buttong")
		if _GUIHandle ~= 0 then
			--GUIWndSetEnableM(_GUIHandle, false) 	
			GUIWndSetVisible(_GUIHandle, false)
		end
		ImageSetImageID(Sign_in.WndHandle,"image_back1",1800000295)
	else
		local _GUIHandle = GUIWndFindChildM(Sign_in.WndHandle, "buttong")
		if _GUIHandle ~= 0 then
			if Sign_in.qiandao_ci < tab[Sign_in.SelectIndex]  then
				--GUIWndSetEnableM(_GUIHandle, false) 	
				GUIWndSetVisible(_GUIHandle, false)
			else
				--GUIWndSetEnableM(_GUIHandle, true) 	
				GUIWndSetVisible(_GUIHandle, true)
			end
		end	
		ImageSetImageID(Sign_in.WndHandle,"image_back1",1800000296)
	end	
end

function Sign_in.Qiandao(_Handle)
	UI:Lua_SubmitForm("奖励大厅表单","Qiandao", "")	
end
function Sign_in.GetItem(_Handle)
	local tab = {2,5,10,17,22}
	if Sign_in.qiandao_ci < tab[Sign_in.SelectIndex] then
		msg("签到次数不足"..tab[Sign_in.SelectIndex].."次，无法领取奖励")
		return 
	end
	UI:Lua_SubmitForm("奖励大厅表单","Get_item", ""..Sign_in.SelectIndex)
		
end

function Sign_in.change(index)
	local _GUIHandle = GUIWndFindChildM(Sign_in.WndHandle, "buttong")
	if _GUIHandle ~= 0 then
		--GUIWndSetEnableM(_GUIHandle, false) 	
		GUIWndSetVisible(_GUIHandle, false)
		
	end
	ImageSetImageID(Sign_in.WndHandle,"image_back1",1800000295)
	local a = tonumber(index)
	Sign_in.IsGet[a] = 1
	local handle = GetWindow(nil,"Reward_win,image1")
	if handle ~= 0 then
		GUIWndSetVisible(handle, false) 
	end
end	



function Sign_in.QianUpdate()
	local _Handle = GUIWndFindChildM(Sign_in.WndHandle, "image_gou"..Sign_in.jin)
	GUIWndSetVisible(_Handle, true)
	local _GUIHandle = GUIWndFindChildM(Sign_in.WndHandle, "buttonq")
	if _GUIHandle ~= 0 then
		GUIWndSetEnableM(_GUIHandle, false) 	
	end
	Sign_in.qiandao_ci = Sign_in.qiandao_ci + 1
	ImageSetImageID(Sign_in.WndHandle,"image_ci1",0)
	ImageSetImageID(Sign_in.WndHandle,"image_ci2",0)
	if Sign_in.qiandao_ci > 9 then
		local a = math.floor(Sign_in.qiandao_ci / 10)
		local b = Sign_in.qiandao_ci % 10
		if b == 0 then
			b = 10 
		end
		ImageSetImageID(Sign_in.WndHandle,"image_ci1",Sign_in.image[a])
		ImageSetImageID(Sign_in.WndHandle,"image_ci2",Sign_in.image[b])
	else
		ImageSetImageID(Sign_in.WndHandle,"image_ci1",Sign_in.image[Sign_in.qiandao_ci])
	end	
	local tab = {2,5,10,17,22}
	for i = 1 , #Sign_in.IsGet do 
		if Sign_in.IsGet[i] == 0 and Sign_in.qiandao_ci >= tab[i] then
			local handle = GetWindow(nil,"Reward_win,image1")
			if handle ~= 0 then
				GUIWndSetVisible(handle, true) 
			end
			local _GUIHandle = GUIWndFindChildM(Sign_in.WndHandle, "buttong")
			if _GUIHandle ~= 0 then
				--GUIWndSetEnableM(_GUIHandle, true) 	
				GUIWndSetVisible(_GUIHandle, true) 
			end
			break
		end
	end	
end
Sign_in.main()