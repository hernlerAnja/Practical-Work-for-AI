
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/7K0Y.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/7K0Y.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [24808,25259,24805,24982,24838,25367,25382,25304,25305,25346,25349,25276,24980,24949,24839,24836,24877,24869,24872,25301,25329,25330,25350,25351,25428,25243,25244,25271,25274,25245,25257,25275,25429,25297,25394,25398,25404,25405,25045,25216,25217,25255,25256,24777,24779,25039,25041,25220,24809,24816,25192] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.439,0.702]
select surf_pocket2, protein and id [8628,8645,8636,8640,8539,8464,8486,8167,8567,8545,8631,8117,8119,8120,8535,8592,8667,8593,8590,8629,8177,8179,8180,8154,8155,8156,8163,8164,8181,8186,8185,8115,8159,8161,8436,8886,8887,8469,8467,8455,8215,8705,8703,8704,8694] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.549,0.902]
select surf_pocket3, protein and id [33879,33882,33881,34200,34225,34589,34619,34621,34327,34329,34331,33867,33903,33900,34596,34629,34307,34308,33901,34311,34620,34233,34256,34223,34222,34627,34659,34651,34660,33872,33870] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.416,0.702]
select surf_pocket4, protein and id [30602,30599,30600,30601,30252,30255,30277,30250,30387,30630,30628,30629,30007,30012,30013,30285,30276,30354,30355,30356,30357,30332,30360,30042,30043,30219,30220,30463,29567,29214,29569,30237,29199,30003,30034,30479,30238] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.522,0.902]
select surf_pocket5, protein and id [6647,6646,21426,21427,6616,6618,6621,27248,27249,27256,6418,6420,27242,27243,6610,27240,6385,6462,6460,6461,6592,19518,19519,19520,19087,19141,6595,6403,19024,19052,19053,19055,19056,19044,19045,19046,19458,19488,19489,19490,19491,19081,6652,19086,19080,19079,19083,19111,21411,21412,19047,27264,6654] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.396,0.702]
select surf_pocket6, protein and id [26544,26550,26552,26553,26554,26555,25936,25937,26128,25942,27604,27607,27612,27613,27615,27505,25943,25985,25986,25966,25948,25949,25939,26537,26532,26444,26445,27608,27609,27616,27621,27623,26241,26144,26533,27614,26203,26205,27535,26557,27606,26560,26585,26587,26602,27536] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.494,0.902]
select surf_pocket7, protein and id [20981,21244,20980,20982,21176,21177,21178,332,355,363,21243,374,415,417,406,387,383,388,404,405,19,20,21004,21053,333,21214,21217,21218,21199,21200,21174,21208,21219,20948,20947,21203,747,749,21220,392,21270,21271,21082,21283,21083] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.373,0.702]
select surf_pocket8, protein and id [21087,21093,21098,21100,21095,21370,21371,21372,21494,21495,19635,21365,21366,21369,21313,21335,21336,21334,21337,21338,21341,21493,21089,21091,19399,19400,19404,19428,19429,19638,21361,21364,21359,19420,19418,18642,18635,21124,21127,21517,21518,21545,21546,21547,21490,21488,19649,19639,19640,21483,21105,21311,21090,21119] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.467,0.902]
select surf_pocket9, protein and id [27450,27451,27452,28502,28558,28588,28566,28560,28561,28565,27462,27465,27455,27456,27461,27731,27748,27740,27671,27667,27678,27658,27754,27756,27757,27425,27427] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.278,0.353,0.702]
select surf_pocket10, protein and id [10490,10491,10492,10884,10885,10940,10978,10987,10892,11342,11344,10477,11004,10478,10479,10480,11027,10852,10854,10861,10856,10853,10976,11009,10860,10573,10933,10893,10888] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.361,0.439,0.902]
select surf_pocket11, protein and id [6337,6331,6332,6333,27350,27351,27353,26379,26390,26404,27570,27571,6369,6370,27327,27328,27329,27323,27572,6346,26423,26424,26421,26422,27355,26403,26410,26417,27380,27356,27578,27579,27580,27584,27548,26425,27387,27593] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.278,0.333,0.702]
select surf_pocket12, protein and id [31637,36232,36233,31638,31657,31658,31667,31668,32337,31666,36220,36215,36216,32365,35855,32355,32356,32336,32383,36262,32382] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.361,0.416,0.902]
select surf_pocket13, protein and id [5104,5097,5106,8297,5324,5352,5347,5348,5350,7492,7493,7486,7489,5349,7511,7512,7535,7536,7949,7920,7922,8288,5169,5379,5102,8303] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.278,0.310,0.702]
select surf_pocket14, protein and id [5331,5052,5325,5333,5335,5299,5097,5106,8297,5324,5330,5352,5347,5348,8288,5216,5332,5258,5259,5282,5356,5215,5217,5220,5228,5042,5043,5241,5041,5050,5051,5020,5022,5073] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.361,0.388,0.902]
select surf_pocket15, protein and id [21941,21976,21977,22188,22189,22366,21944,22213,22341,22332,22331,22367,21947,21920,21951,21952,21921,22214,20488,20505,20507,20489,22310,20887,20888,20891,20889,20890] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.278,0.290,0.702]
select surf_pocket16, protein and id [17247,17248,17251,17253,17219,30395,30075,30082,30045,30049,30050,30406,30432,17240,17531,17498,17499,30051,30052,30053,30056,17220,17459,30382,30397,30398,30399,30380] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.361,0.361,0.902]
select surf_pocket17, protein and id [14447,38326,38329,14459,38327,14498,14500,14502,14503,14475,14427,14146,14536,14145,14497,14538,14539,38293,14467,38301,38305,38299,14448,14452,14455] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.290,0.278,0.702]
select surf_pocket18, protein and id [37595,38018,38019,37912,37910,37686,37715,37717,37716,37718,38092,38091,38057,37940,37938,37946,37557,37566,37568,37559,37567] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.388,0.361,0.902]
select surf_pocket19, protein and id [15054,14556,14558,14646,15234,15073,15081,15390,15233,15389,15188,15195] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.310,0.278,0.702]
select surf_pocket20, protein and id [15766,15769,15800,15801,15869,15866,15868,15799,15843,16142,16146,16149,15904,16170,16171,15770,15738,15740,15732,15735,15744,16122,15715,15896,16143,15903,15901,15531,15560,15561] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.416,0.361,0.902]
select surf_pocket21, protein and id [21873,20158,20159,22286,22283,20157,22270,21876,21881,20473,21874,19895,19940,19898,20213,20100,20118,20437,20440,20474,20475,20476,19900,20446,19906,19939,20117,20122,19917,19918,22265,22266,20140] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.333,0.278,0.702]
select surf_pocket22, protein and id [21127,21128,21137,20824,20858,21928,20820,20821,21927,21929,21514,21517,21518,21959,20857,21506,21507,21897,21899,21891,21158,20849,21134] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.439,0.361,0.902]
select surf_pocket23, protein and id [27641,27632,28218,28220,27666,27665,27664,27692,27695,27697,27630,28176,28221,28186,28175,28411,26197,28188,28191,28442,27638] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.353,0.278,0.702]
select surf_pocket24, protein and id [31643,35800,35802,35757,35758,36193,35752,35755,36182,36051,36196,36198,36199,36194,36195,36197,35759,31652,31653,36291,36292,35837,36293,35738,35739] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.467,0.361,0.902]
select surf_pocket25, protein and id [9167,9171,9581,9582,9665,9663,9262,9698,9263,9225,9227,9222,9148,9149,9551,9552,9252,9254] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.373,0.278,0.702]
select surf_pocket26, protein and id [32394,32393,32395,32412,35918,35919,35917,35933,32406,32376,35866,35878,35934,35882,35872,32375,35870,35991,35992,35956,35958,35959,35960,35990,36269,36253,32408,36264,35981,36268,36273,36274,36277,35979,35953,36256,32397,32398] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.494,0.361,0.902]
select surf_pocket27, protein and id [6803,6804,18955,18956,6631,6497,6836,18925,6605,6834,6626,6627,6629,6495,6606] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.396,0.278,0.702]
select surf_pocket28, protein and id [15977,15984,16065,15966,16024,16054,16056,16064,15692,15656,15657,15951,15952,15959,15961,15955,14776,14767,14768,14769,15653,14770,15634,15636,14777,15635,15654,15655] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.522,0.361,0.902]
select surf_pocket29, protein and id [7302,7388,6872,6876,6878,7291,7283,7288,7289,7385,7386,6874,6896,6978,6967,6895,7020,7019,6973,6897,6901,6902,6987,7370,7371,6970,7338,7341,7342,7340] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.416,0.278,0.702]
select surf_pocket30, protein and id [14159,14184,14185,14190,14191,14217,14221,14248,14251,14160,13659,14308,13662,13728,13658,14309,14268,13819,13622,14338,14340,14341,13661,13783,13784,13626,13623,14189,13639,13657,13677,13678,13679,14193,14352,14231] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.549,0.361,0.902]
select surf_pocket31, protein and id [20721,20723,20371,20748,20759,20753,20719,19610,19589,19590,19613,20339,20369,19871,20370,20413,19630,20340,19608,19849,19807] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.439,0.278,0.702]
select surf_pocket32, protein and id [17035,17008,16999,17006,30184,30185,17003,17011,30431,30428,30430,17032,17265,17254,17256,17289,30164,17033,17034,17287,30136,30145,30149,17288,30160,30153,30156,17285] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.576,0.361,0.902]
select surf_pocket33, protein and id [12605,37523,37524,37710,37348,37352,37682,37681,12568,37360,37361,37588,37549,37546,37587,37704,37516] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.459,0.278,0.702]
select surf_pocket34, protein and id [6496,18906,18886,18820,18821,18822,18823,6494,6891,6502,6485,6499,6503,6856,6858,6860,6862,18905,18926] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.604,0.361,0.902]
select surf_pocket35, protein and id [21453,19921,19927,19928,19929,19922,19949,27291,27294,27289,27319,19674,19916,19888,27350,27914,26381,27318,27915,27316,27317,6372,27293,19675] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.478,0.278,0.702]
select surf_pocket36, protein and id [5015,4657,4980,4620,4658,4981,4845,4621,4623] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.631,0.361,0.902]
select surf_pocket37, protein and id [3096,3379,3052,12742,12743,3027,3053,12744,12775,12776,12342,12310,12311,12773,3089,12346,3344,3346,3354,3356,12324,3380] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.502,0.278,0.702]
select surf_pocket38, protein and id [26384,19934,20121,20122,20123,19948,20108,19932,19933,20124,20128,27963,28881,28884,27974,27996,27941,27973,27964,19971,19972,27931,27933] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.659,0.361,0.902]
select surf_pocket39, protein and id [36833,36835,36832,36834,32320,33377,36831,36873,36875,33376,33411,35117,31335,36864,35096,35112,35099,35103,35116,35123,35126,35130,35131,33403,31334,31353,31354,33399,33408,33418] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.522,0.278,0.702]
select surf_pocket40, protein and id [27287,27289,27319,19955,27882,19888,19890,19927,19929,19956,27915,27858,27310,27311] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.682,0.361,0.902]
select surf_pocket41, protein and id [1546,31278,31279,1672,1330,1209,1294,31272,1250,1257,1205,1253,1261,1673,1249,1649,1650,1581,1582,1571,1573,1545,1542] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.541,0.278,0.702]
select surf_pocket42, protein and id [31835,31865,31583,31864,36595,30879,37215] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.710,0.361,0.902]
select surf_pocket43, protein and id [27543,27547,26635,27550,27555,27574,27202,27230] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.565,0.278,0.702]
select surf_pocket44, protein and id [15053,14377,14644,15360,14670,15026,14375] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.737,0.361,0.902]
select surf_pocket45, protein and id [17573,17599,17337,17338,17561,17571,17535,17536,17539,17562,17565,17526,17310,30132,17275,17278,17302,17305,17308,17560,17312,17647,17303,17304,164,165,141,17601,17602,193] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.584,0.278,0.702]
select surf_pocket46, protein and id [21099,21097,21098,21100,21101,21096,19635,19636,20738,20739,20746,20749,20786,20787,19387,19410,19411,19612,21065,21112,20740,20780,21110,21066,19388] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.765,0.361,0.902]
select surf_pocket47, protein and id [27260,6396,6397,6398,27291,27294,27289,21439,19674,21423,21440,21443,21429,21436,21453,6364,6327,6372,27293,27324,27327,27321,27318,27316,27317,27320,6332,26379,21434] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.604,0.278,0.702]
select surf_pocket48, protein and id [11500,11865,12015,12046,11836,11837,11839,11796,11798] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.792,0.361,0.902]
select surf_pocket49, protein and id [3074,3437,3116,3139,3138,3435,3194,3467,3492,3495,3164] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.627,0.278,0.702]
select surf_pocket50, protein and id [32397,32399,35881,35884,35888,35889,35890,32372,32371,32398,34903,34904,34906,35045,35047,35049,35876,35878,35879,35880,35872,32373,32375,35870,32362,35867,35869,35868,35033] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.820,0.361,0.902]
select surf_pocket51, protein and id [2648,2890,2944,2646,2610,2614,2578,2606,2608,2609,2613,2976,2940,2941,2942,2978,2913,2688,2844,2967,2969,2687,2645,2647] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.647,0.278,0.702]
select surf_pocket52, protein and id [3972,4003,4191,4192,3755,3756,3757,4511,4012,4189,4151,4162,4164,4185] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.847,0.361,0.902]
select surf_pocket53, protein and id [31719,32280,32281,30818,30819,31720,31697,31695,30820,35090,31998,31999,32036,32041,32056,32057,32059,32058,32060,32061,31981,31983,31984,31997] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.667,0.278,0.702]
select surf_pocket54, protein and id [33307,33308,33304,33306,33332,37042,37050,34775,37041,37020,37021,37023,36880,36883,37079,37080,34772,36842,36843,36844,33340,33338,36840,33339,33367,36796,36797,36798,33309,33310] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.875,0.361,0.902]
select surf_pocket55, protein and id [3002,2684,2686,3001,3000,3010,2838,2843,2669,2670,2671,3033,2818,3035,2706,2708,2718,3032,3034] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.690,0.278,0.702]
select surf_pocket56, protein and id [12750,12306,12304,12356,12328,12357,12786,12590,12588,12549,12548,12523] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.361,0.902]
select surf_pocket57, protein and id [4862,5487,4859,4860,4861,5233,4858,5507,5502,5504,5505,5506,5508,5503,4884,4885,4886,5534,5535,5224,5230,5246,5509,5512] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.278,0.690]
select surf_pocket58, protein and id [36093,36094,36108,36149,36101,36105,36145,35830,35827,35059,35843,36318,36321,35823,35825,35826,36303,36110] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.361,0.875]
select surf_pocket59, protein and id [2724,3068,3154,3155,3156,3186,2790,2791,3036,2709,2818,2705,3069,3070,3218,2764,12662,12663] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.278,0.667]
select surf_pocket60, protein and id [12054,12410,12102,12053,12216,12218,12183,12024,12184,12185,12186,12103,12104,11808] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.361,0.847]
select surf_pocket61, protein and id [13453,13421,13823,13825,13861,13420,13826,13387,13827,13828,13829,14385,14388,14360,14362,14363,14358,13853,14384,14412,13852,13854,15044,15016,13456] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.278,0.647]
select surf_pocket62, protein and id [31590,31955,36762,32086,32288,36767,32289,31592,31624,31627,36735,31618,31639,31629,36765,36773,36775,31665,31631] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.361,0.820]
select surf_pocket63, protein and id [3002,2684,2686,3001,3000,3010,2843,3033,2818,3035,2706,2708,3032,3034] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.278,0.627]
select surf_pocket64, protein and id [18392,18987,18988,18989,18391,18990,18676,18685,18702,18705,18675,18651,18649,5803,5805,18357,18358,5804,18298,18304,18356,18359] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.361,0.792]
select surf_pocket65, protein and id [34366,34368,34499,33237,33208,34500,34501,34542,34541,34543,33224,33225,33201,33204,33182,33258,33259,34120,34121,34135,34492] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.278,0.604]
select surf_pocket66, protein and id [3207,3234,3235,2825,2439,2441,2826,3560,2438,3561,3535,2413,3529,3524,3199,2773,3169,2772,2797,2804] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.361,0.765]
select surf_pocket67, protein and id [2008,2058,2059,2312,2315,1981,1989,2002,2006,2036,2038,2338,1949,1658,2009,37327,2060,2013,2053,37336] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.278,0.584]
select surf_pocket68, protein and id [3258,3259,2497,2857,2853,3610,3612,3613,2472,2473,2474,4087,2504,3231,3229,3230,2825,2827] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.361,0.737]
select surf_pocket69, protein and id [4862,5485,5487,5455,5174,5201,5199,4492,4493,4806,4807,4808,4809,4490,4839,4805,4831,4837,5200,4802,5148,5180] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.278,0.565]
select surf_pocket70, protein and id [20561,20562,20585,20552,20554,20424,20456,20240,20220,20526,20457,20223,20586,20403,20405] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.361,0.710]
select surf_pocket71, protein and id [35689,34953,36286,36072,35982,34954,35973,35974,35710,35712,36057,35675] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.278,0.541]
select surf_pocket72, protein and id [12024,12184,12185,12186,12410,12102,12053,12103,12104,11808,12045] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.361,0.682]
select surf_pocket73, protein and id [30862,31948,32094,31844,32245,31559,31865] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.702,0.278,0.522]
select surf_pocket74, protein and id [5557,5558,6239,5556,5668,5669,5627,6234,6235,6236,6241,21796,5639,6265,5599,5602,5636,5637,6230,21806,21807,6232] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.902,0.361,0.659]
select surf_pocket75, protein and id [15095,15096,14433,14434,15097,14513,15099,15064,15065,15067,14406,14511,15068,15071,15066,15041,15044,14403,14409] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.702,0.278,0.502]
select surf_pocket76, protein and id [24122,24201,23819,23852,24234,23967,23997,24061] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.902,0.361,0.631]
select surf_pocket77, protein and id [14827,14830,14850,14825,15721,15718,16084,16088,16089,16079,16113,16055,16057,15743,15720,15691,15689] 
set surface_color,  pcol77, surf_pocket77 
set_color pcol78 = [0.702,0.278,0.478]
select surf_pocket78, protein and id [254,222,224,17609,34,223,188,17611,17909,17919,17658,17896,17583,17585,17596,17586,17587,17882] 
set surface_color,  pcol78, surf_pocket78 
set_color pcol79 = [0.902,0.361,0.604]
select surf_pocket79, protein and id [18580,18562,18682,18715,18301,18583,18626] 
set surface_color,  pcol79, surf_pocket79 
set_color pcol80 = [0.702,0.278,0.459]
select surf_pocket80, protein and id [23636,23610,23635,23579,23580,23581,23583,23599,23602,23582,23490,23515,23512,23513,23519,23520,23523,23548,23487,23223,23226,23228,23203,23206,23559,23546,23231,23222] 
set surface_color,  pcol80, surf_pocket80 
set_color pcol81 = [0.902,0.361,0.576]
select surf_pocket81, protein and id [29454,29455,29457,29172,29421,29422,30690,29158,30725,30726,30727,30680,30686,30194,30192,30193,30212,30211,30691,29447,29448] 
set surface_color,  pcol81, surf_pocket81 
set_color pcol82 = [0.702,0.278,0.439]
select surf_pocket82, protein and id [17812,17837,17870,18019,17711,17747,18057] 
set surface_color,  pcol82, surf_pocket82 
set_color pcol83 = [0.902,0.361,0.549]
select surf_pocket83, protein and id [25741,24313,24322,25722,25723,26465,24098,26453,26211,26212,26456,24346,24343,24355,24356,24357,26213,26473,25729,25738,25753,26451] 
set surface_color,  pcol83, surf_pocket83 
set_color pcol84 = [0.702,0.278,0.416]
select surf_pocket84, protein and id [35945,33001,35946,33043,33045,33002,33008,33006,34969,35009,34995,35973,34999,33039,33049] 
set surface_color,  pcol84, surf_pocket84 
set_color pcol85 = [0.902,0.361,0.522]
select surf_pocket85, protein and id [13506,13484,13505,13891,13905,13544,13537,13444,13858,13863,13866,13865,13530,13869] 
set surface_color,  pcol85, surf_pocket85 
set_color pcol86 = [0.702,0.278,0.396]
select surf_pocket86, protein and id [7057,7018,6842,7048] 
set surface_color,  pcol86, surf_pocket86 
set_color pcol87 = [0.902,0.361,0.494]
select surf_pocket87, protein and id [19631,19630,19907,19866,19899,20413,19868,20438,20439,20440,19900,20748,20786,20785,20411,20412,20796,20798,20797] 
set surface_color,  pcol87, surf_pocket87 
set_color pcol88 = [0.702,0.278,0.373]
select surf_pocket88, protein and id [12894,12918,12556,12919,37625,37626,37628,12950,12952,12601,12951,37652,37653,12553,12563,12929,12594,12584] 
set surface_color,  pcol88, surf_pocket88 
set_color pcol89 = [0.902,0.361,0.467]
select surf_pocket89, protein and id [32625,35697,32884,32582,32627,35693,35698,35699,32564,32565,32566,32883,32561,32562,32570,32577] 
set surface_color,  pcol89, surf_pocket89 
set_color pcol90 = [0.702,0.278,0.353]
select surf_pocket90, protein and id [36372,31002,31004,31010,31009,36371,32644,36341,36363,36342,35810,36320,36345,36347,36157,36343,36360,36150,36153] 
set surface_color,  pcol90, surf_pocket90 
set_color pcol91 = [0.902,0.361,0.439]
select surf_pocket91, protein and id [3324,3273,3274,3696,3722,3366,3695,3697,3652,3397,3388] 
set surface_color,  pcol91, surf_pocket91 
set_color pcol92 = [0.702,0.278,0.333]
select surf_pocket92, protein and id [24711,24714,24703,24704,24705,24765,24768,25033,25030,25079,25076,24701,24726,24738,24767,24707,25133,25038,24741] 
set surface_color,  pcol92, surf_pocket92 
set_color pcol93 = [0.902,0.361,0.416]
select surf_pocket93, protein and id [35982,35953,34954,35951,35973,36286,36072,35028,35675] 
set surface_color,  pcol93, surf_pocket93 
set_color pcol94 = [0.702,0.278,0.310]
select surf_pocket94, protein and id [18569,19352,18662,19074,19075] 
set surface_color,  pcol94, surf_pocket94 
set_color pcol95 = [0.902,0.361,0.388]
select surf_pocket95, protein and id [4451,4817,4221,4254,4255,4256,4652,4816,4651,4229,4425,4449,4687,4686] 
set surface_color,  pcol95, surf_pocket95 
set_color pcol96 = [0.702,0.278,0.290]
select surf_pocket96, protein and id [3292,3293,2505,2525,2524,3291,2875,3259,2497,2857,2853,2884] 
set surface_color,  pcol96, surf_pocket96 
set_color pcol97 = [0.902,0.361,0.361]
select surf_pocket97, protein and id [28116,28191,28192,28438,27656,28092,27653,27655,28448,27651,27652,27654] 
set surface_color,  pcol97, surf_pocket97 
set_color pcol98 = [0.702,0.290,0.278]
select surf_pocket98, protein and id [26429,26240,26420,27599,26266,26268,26415,27387,27417,27596,26410,26417,27584] 
set surface_color,  pcol98, surf_pocket98 
set_color pcol99 = [0.902,0.388,0.361]
select surf_pocket99, protein and id [8205,7851,7810,7812,8206,7841,7985] 
set surface_color,  pcol99, surf_pocket99 
set_color pcol100 = [0.702,0.310,0.278]
select surf_pocket100, protein and id [8266,8771,8772,9270,9271,9295,8260,8265,9231,9234,9692,9714,9265,9269,9294,9652,9684] 
set surface_color,  pcol100, surf_pocket100 
set_color pcol101 = [0.902,0.416,0.361]
select surf_pocket101, protein and id [32319,36836,36834,36845,34825,34827,32320,34798,36797,36798,34772,36842,36843,33340,34791,33341,34817] 
set surface_color,  pcol101, surf_pocket101 
set_color pcol102 = [0.702,0.333,0.278]
select surf_pocket102, protein and id [5984,5986,5951,5922,266,267,650,625,5950] 
set surface_color,  pcol102, surf_pocket102 
set_color pcol103 = [0.902,0.439,0.361]
select surf_pocket103, protein and id [16580,16817,16819,16873,16857,16858,16874,16808,16810,16777,16780,16472,16473,16464,16474,16470,16475,16486,16478,16493] 
set surface_color,  pcol103, surf_pocket103 
set_color pcol104 = [0.702,0.353,0.278]
select surf_pocket104, protein and id [25149,25150,25503,25514,25508,25557,25151,24718,25555,25915,25518,25995,24721,25993,25994] 
set surface_color,  pcol104, surf_pocket104 
set_color pcol105 = [0.902,0.467,0.361]
select surf_pocket105, protein and id [13880,14106,13570,13547,13575,13603,13846,13878] 
set surface_color,  pcol105, surf_pocket105 
set_color pcol106 = [0.702,0.373,0.278]
select surf_pocket106, protein and id [38122,38181,38131,37787,38132,37752,38123,38116,37855,37856] 
set surface_color,  pcol106, surf_pocket106 
set_color pcol107 = [0.902,0.494,0.361]
select surf_pocket107, protein and id [4761,4763,4773,4755,4767,4322,4303,4319,4400,4401,4402,4404,4405,4434,4435,4424] 
set surface_color,  pcol107, surf_pocket107 
set_color pcol108 = [0.702,0.396,0.278]
select surf_pocket108, protein and id [10240,9956,9787,9788,10239,9923] 
set surface_color,  pcol108, surf_pocket108 
set_color pcol109 = [0.902,0.522,0.361]
select surf_pocket109, protein and id [33795,33813,33814,33815,33512,33510,33511,33636,33637,33538,33160,33819,33635,33650,33652,33653,33654,33765] 
set surface_color,  pcol109, surf_pocket109 
set_color pcol110 = [0.702,0.416,0.278]
select surf_pocket110, protein and id [5450,5451,5471,6126,6719,5419,5420,5421,5422,5426] 
set surface_color,  pcol110, surf_pocket110 
set_color pcol111 = [0.902,0.549,0.361]
select surf_pocket111, protein and id [19131,19158,19261,19128,19260,19546,19525,19526,19527,19536,19540,19531,19535,19166] 
set surface_color,  pcol111, surf_pocket111 
set_color pcol112 = [0.702,0.439,0.278]
select surf_pocket112, protein and id [12523,12253,12252,12549,12381,12356,12328,12357,12786] 
set surface_color,  pcol112, surf_pocket112 
set_color pcol113 = [0.902,0.576,0.361]
select surf_pocket113, protein and id [217,218,216,164,181,183,17601,17602,17304,17600] 
set surface_color,  pcol113, surf_pocket113 
set_color pcol114 = [0.702,0.459,0.278]
select surf_pocket114, protein and id [30788,30961,30962,30963,36427,36429,36422,36416,36432,36437,30812,31763,31746,31766,31748] 
set surface_color,  pcol114, surf_pocket114 
set_color pcol115 = [0.902,0.604,0.361]
select surf_pocket115, protein and id [1,253,333,339,362,8,21052,21053,5,11,342] 
set surface_color,  pcol115, surf_pocket115 
set_color pcol116 = [0.702,0.478,0.278]
select surf_pocket116, protein and id [12950,12952,12601,12951,37575,37576,37577,37586,37584,37652,37609,37610,37611,37572,12917] 
set surface_color,  pcol116, surf_pocket116 
set_color pcol117 = [0.902,0.631,0.361]
select surf_pocket117, protein and id [15104,15196,15442,15170,15484,15443,15115,15110,15473] 
set surface_color,  pcol117, surf_pocket117 
set_color pcol118 = [0.702,0.502,0.278]
select surf_pocket118, protein and id [16189,16420,16422,16191,16198,16240,16210,16212,16129,16395,16391,16414,15938,15939,16201] 
set surface_color,  pcol118, surf_pocket118 
set_color pcol119 = [0.902,0.659,0.361]
select surf_pocket119, protein and id [1201,1198,1221,848,31168,35364,35351,35357,35361,1162,1164,35350,35353,35363,35365] 
set surface_color,  pcol119, surf_pocket119 
set_color pcol120 = [0.702,0.522,0.278]
select surf_pocket120, protein and id [17367,17507,17546,17548,17273,17572,17526] 
set surface_color,  pcol120, surf_pocket120 
set_color pcol121 = [0.902,0.682,0.361]
select surf_pocket121, protein and id [26501,26503,24795,28207,28210,24830,24832,24831,28178,28164,28165,28166,28167,28169,28168,28170,26152,24824,26161,24794,24796,24821] 
set surface_color,  pcol121, surf_pocket121 
set_color pcol122 = [0.702,0.541,0.278]
select surf_pocket122, protein and id [24774,24776,24777,24778,24779,24787,25434,25459,25431,25433,25467,25190,25222,24748,24749] 
set surface_color,  pcol122, surf_pocket122 
set_color pcol123 = [0.902,0.710,0.361]
select surf_pocket123, protein and id [26610,27825,26642,26643,27168,27166,27167,27812] 
set surface_color,  pcol123, surf_pocket123 
set_color pcol124 = [0.702,0.565,0.278]
select surf_pocket124, protein and id [23831,23471,23832,23469,23470,23472,23473,23507,23697,23806,28057,28081,23438,23444,23445,23446,23443,23807,23808,28038,28039] 
set surface_color,  pcol124, surf_pocket124 
set_color pcol125 = [0.902,0.737,0.361]
select surf_pocket125, protein and id [8980,8982,8642,8672,8673,8674,8916,8917,8889,8894,8880] 
set surface_color,  pcol125, surf_pocket125 
set_color pcol126 = [0.702,0.584,0.278]
select surf_pocket126, protein and id [16825,16911,17150,16878,16879,16880,16889,16883,17149,17163,16912,17161,17194,16789] 
set surface_color,  pcol126, surf_pocket126 
set_color pcol127 = [0.902,0.765,0.361]
select surf_pocket127, protein and id [1759,2134,2136,1758,1755,1760,1785,2125,2126,2122,2123,2156] 
set surface_color,  pcol127, surf_pocket127 
set_color pcol128 = [0.702,0.604,0.278]
select surf_pocket128, protein and id [19087,6576,19141,6595,6597,19140,19520,19086,19079,19083,19085,19111,19114] 
set surface_color,  pcol128, surf_pocket128 
set_color pcol129 = [0.902,0.792,0.361]
select surf_pocket129, protein and id [2800,2801,2802,2806,2807,2432,2675,2260,2262,2803,2805,2699] 
set surface_color,  pcol129, surf_pocket129 
set_color pcol130 = [0.702,0.627,0.278]
select surf_pocket130, protein and id [22323,22560,22531,22533,22534,22324,22591,22701,22529,22530,22532,22700,22566,22676] 
set surface_color,  pcol130, surf_pocket130 
set_color pcol131 = [0.902,0.820,0.361]
select surf_pocket131, protein and id [31516,31502,31971,37058,37059,37060,37062,37063,37085,37057,31514,31515,31969,32049,32050,31970,37088,31503] 
set surface_color,  pcol131, surf_pocket131 
set_color pcol132 = [0.702,0.647,0.278]
select surf_pocket132, protein and id [22714,22691,23123,23124,22951,23218,22981,23143,23132] 
set surface_color,  pcol132, surf_pocket132 
set_color pcol133 = [0.902,0.847,0.361]
select surf_pocket133, protein and id [28720,28715,28990,28784,28742,28743,28748,27011] 
set surface_color,  pcol133, surf_pocket133 
set_color pcol134 = [0.702,0.667,0.278]
select surf_pocket134, protein and id [14420,14446,13878,13880,14114,14138,13944] 
set surface_color,  pcol134, surf_pocket134 
set_color pcol135 = [0.902,0.875,0.361]
select surf_pocket135, protein and id [37137,30896,36625,30887,31563,31564] 
set surface_color,  pcol135, surf_pocket135 
set_color pcol136 = [0.702,0.690,0.278]
select surf_pocket136, protein and id [18732,18934,6497,18956,19063,6495,6586] 
set surface_color,  pcol136, surf_pocket136 
set_color pcol137 = [0.902,0.902,0.361]
select surf_pocket137, protein and id [13069,13071,12906,12903,12877] 
set surface_color,  pcol137, surf_pocket137 
set_color pcol138 = [0.690,0.702,0.278]
select surf_pocket138, protein and id [3394,3386,3421,3619,3629,3749,3652] 
set surface_color,  pcol138, surf_pocket138 
set_color pcol139 = [0.875,0.902,0.361]
select surf_pocket139, protein and id [16089,15692,15930,15716,15931,15895,15685] 
set surface_color,  pcol139, surf_pocket139 
set_color pcol140 = [0.667,0.702,0.278]
select surf_pocket140, protein and id [5418,5423,5431,5432,7127,5422,6764,6762,6763,6704,6715,6698,5425,6734,6721] 
set surface_color,  pcol140, surf_pocket140 
set_color pcol141 = [0.847,0.902,0.361]
select surf_pocket141, protein and id [32071,32306,32307,36814,37086,37088,32073,32074,31968,32049,37087,36791] 
set surface_color,  pcol141, surf_pocket141 
set_color pcol142 = [0.647,0.702,0.278]
select surf_pocket142, protein and id [9285,9286,9529,9501,9506,9283,9305,9121,9281,9134] 
set surface_color,  pcol142, surf_pocket142 
set_color pcol143 = [0.820,0.902,0.361]
select surf_pocket143, protein and id [21533,21828,21829,21898,6248,21868,21505,6273,21506,21507,21530,21937] 
set surface_color,  pcol143, surf_pocket143 
set_color pcol144 = [0.627,0.702,0.278]
select surf_pocket144, protein and id [32584,32594,32593,32624,36333,36172] 
set surface_color,  pcol144, surf_pocket144 
   
        
        deselect
        
        orient
        