
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
        
        load "data/6SOF.pdb", protein
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
 
        load "data/6SOF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [508,509,511,564,512,993,287,563,286,785,787,788,1220,841,844,1218,1053,1054,1055,701,703,704,705,1197,229,230,758,1532,1581,1145,992,1582,1198,754,756,337,383,423,338,381,389,476,421,843,391,392,148,474,475,149,179,700,1100,1632] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.420,0.702]
select surf_pocket2, protein and id [12548,12549,13352,13433,12751,13616,13617,13628,13632,13513,13643,13614,13511,13645,13646,12748,12749,12233,12267,12268,12107,12110,12108,12109,12111,12580,13431,13116,13118,13607,13604,13605,13606,13507,13050,12234,13001,13045,13313,13314,13315,13325,12077,12078,12510,12511,12780,12512,12513,12779,12767,12301,12302,12076,12091,12092,12027,12029,12303,12305] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.506,0.902]
select surf_pocket3, protein and id [25722,25724,25950,25913,25951,25953,25954,25910,25912,26791,26792,27238,27239,26831,26763,26764,27208,27209,27210,25878,25879,26645,26759,26760,25754,27207,25721,25656,26108,26110,26109,26868,26960,26961,26160,26830,26832,26833,26193,26224,26225,26646,26762,26608,26696,26708,26713,27273,27237,25678,26003,25643,25653,25665,25675,25681,26004,25651] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.365,0.702]
select surf_pocket4, protein and id [14185,13960,14892,14893,13835,13836,13837,14871,13959,14870,14427,14868,14146,14148,14374,14376,14772,13903,14369,13901,14235,14184,14183] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.435,0.902]
select surf_pocket5, protein and id [6593,6613,6615,20722,20651,20652,6556,6594,20714,20718,20719,20232,20234,20235,20742,20689,20695,20628,20629,20700,20701,22538,20699,6595,6597,7051,7104,7048,20251,20252,20253,7008,7036,7007,20230,20231,20233,19794,7013,20196,6990,6991,7081,7082,8874,8876,7057,7063,19795,8898,8901,8902,8903,8904,19767,6149,6150,6169,6121,6122,5617,5641,5642,22540,22541,5618,5586,6592,6614] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.310,0.702]
select surf_pocket6, protein and id [24625,28521,24623,28503,28563,28558,28559,28575,28644,584,28579,28581,28576,28516,28520,28704,28698,28699,28701,28703,24619,24622,24621,28062,544,185,202,545,200,201,28697,1012,24603,24606,24670,24671,1029,581,583,602,1014,526,196,495,28502,28501,28500] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.365,0.902]
select surf_pocket7, protein and id [15818,15819,15206,15560,15168,15171,15558,15601,15745,15788,15360,15361,16543,15438,15441,15386,15490,15489,15491,14985,15870,15871,15872,14980] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.306,0.278,0.702]
select surf_pocket8, protein and id [14257,14218,14255,27788,27928,27787,27863,27864,27860,27539,27862,27916,27558,27746,27786,27803,27804,27845,27846,27848,13874,13875,11052,11054,27930,27791,27790,27491] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.427,0.361,0.902]
select surf_pocket9, protein and id [1713,1533,1498,1764,1767,2200,2125,2199,2145,2114,2866,2869,1687,1688] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.361,0.278,0.702]
select surf_pocket10, protein and id [8788,8789,8211,8210,8117,8107,8108,8125,7136,7152,7807,7808,8786,8806,8243,7844,8063,7177,8177,8179,8062,8824,10626,8244] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.498,0.361,0.902]
select surf_pocket11, protein and id [7014,20665,20624,6068,6070,6042,6513,6514,6557,20610,20613,6032,6040,19714,19713,19715,20153,19685,20151,19697,7011,6988,7009,7010,6986,7022,6972,6973] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.416,0.278,0.702]
select surf_pocket12, protein and id [13704,13706,17223,17226,17225,17517,17544,17546,17256,17243,17262,14548,14550,17524,17526,14092,17525,17542,17565,14578,13701,13700,13735,13760,14535,14533,14536,14089,14093,14078,14079,14546] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.569,0.361,0.902]
select surf_pocket13, protein and id [7628,7687,7689,8292,7739,7683,7701,7705,8279,8280,7703,8326,8363,27701,10922,10923,10924,15239,15240,15241,15631,10992,27696,27690,10842,16036,15629,10840,27700,14706] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.471,0.278,0.702]
select surf_pocket14, protein and id [5566,5928,6099,6101,6462,6429,5869,6310,6428,6309] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.639,0.361,0.902]
select surf_pocket15, protein and id [29315,29386,29023,29024,29025,22168,22203,21088,29203,29204,29262,29246,29247,29248,22165,22149,28966,28967,28968,28963,28965,22205,28946,28953,28954] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.525,0.278,0.702]
select surf_pocket16, protein and id [29969,30080,8527,8530,29790,8529,29732,29734,29731,29885,29887,8526,8505,8507,8255,7486,29698,29708,29709,29720,29721,29755,29882,29716,29717,29718,29727] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.710,0.361,0.902]
select surf_pocket17, protein and id [15387,14567,14938,14625,14628,15441,14887,14890,14987,14817,14665,14818,14666,15206,15186,15204,15170,15171] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.580,0.278,0.702]
select surf_pocket18, protein and id [1768,1261,1217,1265,1263,1219,991,951,1497,1498,953,955,1532,1145,1533,992,1713,1714,1312,1314,1687,1688] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.780,0.361,0.902]
select surf_pocket19, protein and id [22168,22201,22202,22203,21087,21088,29203,29204,29315,21074,21077,29250,29246,29247,29248,29249,29251,22199,22221,22222,24148,24105,29253,29122,24083,29252,24104,24135] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.635,0.278,0.702]
select surf_pocket20, protein and id [11865,9437,11506,11509,11408,11902,11862,11505,11554,9343,9360,9435,11853,11866,11583,9732,11552,9767,9768,9769,11375,9438,9465,9466,11582,9733] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.851,0.361,0.902]
select surf_pocket21, protein and id [19390,19746,19955,19567,19569,19505,19507,20448,20074,20071,19522,19200] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.690,0.278,0.702]
select surf_pocket22, protein and id [24558,24559,1958,24495,24500,28468,24475,1957,28473,1956,21343,21325,21327,21328,21341,21377,21321,21339,21342,21930,21942,21960,21964] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.878]
select surf_pocket23, protein and id [19390,19745,19747,19930,19931,20215,20216,20446,19241,19391,19345,19871] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.655]
select surf_pocket24, protein and id [17492,17490,14111,17911,17475,17913,17912,17860,17876,17863,17696,17714,17695,17771,17474,18026,17473,17699,14108,17546,17697,28040] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.808]
select surf_pocket25, protein and id [26078,23488,26084,26088,26090,23552,23551,23863,23864,23800,23801,26905,26123,26906,23776,23777,23778,23628,23775,23797,23802,23489,25529,25530,25531,25532] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.600]
select surf_pocket26, protein and id [495,457,496,935,937,1412,1414,459,28744,458,460,461,28773,24654,24655,24670,190,28742] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.737]
select surf_pocket27, protein and id [3479,45,47,49,48,876,877,405,3842,3844,3550,3851,3853,3845,1328,1329,3478,3511,3512] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.545]
select surf_pocket28, protein and id [29119,29120,22204,22145,22148,21846,21865,24176,29121,29123,29118,29156,24167,22200,29122,29124,22202,21505,21503,21831,21832,21834,21843,21463,21830,21833,22181,22184] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.667]
select surf_pocket29, protein and id [8256,7554,8503,7553,7804,7822,7824,7505,8770,7306,7307,7825] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.490]
select surf_pocket30, protein and id [21446,21737,21445,21484,21485,20767,20774,20815,21696,21697,21698,20839,22444,22425,21701,21734,21709,22461,24269] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.596]
select surf_pocket31, protein and id [6180,6226,6137,6100,6102,5607,6683,6632,6577,6631] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.435]
select surf_pocket32, protein and id [12564,12732,12745,12747,12735,12964,10015,10023,12853,12855,10016,10017,12768,12764,12765,10029,12854,12856,12852,12851,12918] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.525]
select surf_pocket33, protein and id [88,89,3589,3551,3553,3853,3871,3584,3852,3873,96,100,102,77,82,42,43,3892,3904,3968,3966] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.380]
select surf_pocket34, protein and id [8891,7730,7731,10866,10868,8890,8917,27384,27371,8916,7658,7675,7656,7657,7672,10937,27316,27326,27312,27313,10938,7708,27372] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.455]
select surf_pocket35, protein and id [7355,9123,9124,7356,9089,8737,7506,7306,7307,7472,8735] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.325]
select surf_pocket36, protein and id [8975,8992,8788,8987,8989,8789,8994,7060,7129,7134,6710,6711,8786,8806,7177,7186,8840,8841,8873] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.384]
select surf_pocket37, protein and id [28904,10403,29185,29187,29189,28902,28910,28915,29186,10400,24123,10415,24072,24055,24074,29220,29221,24120,29184,24137] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.290,0.278]
select surf_pocket38, protein and id [28438,28620,28198,28203,28260,28350,28353,28621,28355,28354,28201] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.408,0.361]
select surf_pocket39, protein and id [22762,22727,22761,22376,21142,20991,20993,20992,20994,20942,21144,20944,20939,20940,20941,22373,22725,22726,22728] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.345,0.278]
select surf_pocket40, protein and id [10952,15087,11018,11017,15085,18601,10953,14647,14168,14169,11020,11016,11031,14609,14610,14133,14134] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.478,0.361]
select surf_pocket41, protein and id [23863,25507,23864,23800,23801,23488,23775,23802,23471,23476,23486,23489,23516,23906,25517,25529,25530,25157,25514,25179] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.400,0.278]
select surf_pocket42, protein and id [14893,14011,14461,14056,14463,14096,14076,14516] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.549,0.361]
select surf_pocket43, protein and id [2297,2334,2138,2139,2140,2142,2299,2158,2134,2295,2296,2333,2330,2067,2068,2069,2111,2128,2084,2085,2252,2163,2253] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.455,0.278]
select surf_pocket44, protein and id [15983,15985,15968,10825,15941,18904,18905,18906,18907,18917,18918,18898,10784,10787,15987,10823,10716] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.620,0.361]
select surf_pocket45, protein and id [10694,10695,19841,7084,19814,19279,19280,8870,10692,10748,10749,10751,19838,19313,19810,19276,19275,10771,10810] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.510,0.278]
select surf_pocket46, protein and id [18563,18560,18561,18534,18475,18476,18477,10943,10944,10949,11007,10951,11004,11019,18514,18655,18613] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.690,0.361]
select surf_pocket47, protein and id [22613,22630,22524,22528,22529,20349,20699,22625,22627,22628,20765,20766,20767,20815,20739,20698,20347,20348,20814,20824,20836,22632,22629,20753] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.565,0.278]
select surf_pocket48, protein and id [22615,21279,21282,21283,21298,22593,22479,22480,22616,22646,21240,21242,21380,22447,21366] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.761,0.361]
select surf_pocket49, protein and id [15960,15066,15123,18986,15537,15125,18585,18584,15914,15946,15915,15916,15513,15536,15517,15519,18984,18946,18983] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.620,0.278]
select surf_pocket50, protein and id [21367,21368,21369,24502,24503,21310,21313,28130,28131,28143,22542,22495,22496,22592,22593,22594,22554,22555] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.831,0.361]
select surf_pocket51, protein and id [7040,6756,6574,6578,6576,6535,6825,6827,6753,6807,6808,6751] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.675,0.278]
select surf_pocket52, protein and id [24584,24586,24588,4880,5019,5020,5021,4897,4980,4929,4928,4967,4898] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.898,0.902,0.361]
select surf_pocket53, protein and id [19241,19391,19239,19345,18838,19441,19443] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.671,0.702,0.278]
select surf_pocket54, protein and id [28461,24626,24623,24624,28503,28074,24622,24572,28132,28502,28501,28500] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.827,0.902,0.361]
select surf_pocket55, protein and id [4519,4534,4535,4546,4547,4550,4551,4257,4258,4293,4521,4046,4589] 
set surface_color,  pcol55, surf_pocket55 
   
        
        deselect
        
        orient
        