
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
        
        load "data/4OGR.pdb", protein
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
 
        load "data/4OGR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [28742,28739,28740,28743,31837,28791,31665,31824,28749,27537,29616,27538,28623,28624,27520,27577,27579,27576,31664,31753,31754,31755,28002,28001,29454,29456,29457,29436,29451,29453,29545,28790,28620,28619,28636,28678,29440,28621] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [7871,7930,30236,30238,30320,30306,9101,30307,9082,9836,8975,7889,8974,9086,30147,30148,9924,9109,9143,9832,8352] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [12305,11447,11449,11461,11464,11490,11489,12304,10603,10604,10605,11165,11413,11418,11414,11416,11419,11415,11417,10328,10326,10329,10374,10630,10634,12473,12479,12480,12483,12274,12484,12485,12486,12261,10636,10375,10341,10342,11509,11510,11511] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [30505,30543,30567,30579,30580,15920,16523,16503,16536,12084,12098,12124,12548,12571,12575,30600,10915,16539,30477,15919,30642,30643,15913,15914,30478,30640,17478,15972,17479,17815,17816,15900,15901,12101,12102,30503,30506,30507,12099,11040,11043,17477,17493,17498,17437,17447,17494,10971,10972,10974,16505,17399,17403,17404,16524,17415,17448,17450,10986] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [21153,21214,21215,21193,21209,21179,19937,19939,20044,20043,19935,20831,21118,21119,21120,20274,21151,21165,22008,22009,21168,21121,21965,19961,21213,20305,19976,22177,22183,22184,22187,20830,21123] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [279,1467,382,383,275,276,293,1431,1450,614,2497,2498,2501,1182,1183,2491,2502,2504,2292,384,1433,1432,1434,1436,645,951,1435,1437,647,316,1507,1523,1482,1528,1529,2322,2323,2279,1527] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [7434,7438,7439,999,2593,984,985,6538,924,6571,6572,6574,6559,6558,1000,1004,1006,2142,2589,2116,2566,1058,1061,2102,2121,29800,29833,29812,29813,2117,2120,980,979] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [27916,27918,27974,27975,27976,28383,28384,29349,28199,28201,28217,28219,28247,28246,28067,29263,29264,28068,28069,28070,27961,27962,28042,28064,29299,28026,28078,28081] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [18515,18517,18533,18563,18700,18232,18234,18699,18291,18292,19346,18535,18397,18277,18278,18394,18358,18380,18383,18384,18275,18385,18386,19286,18276,18285,18387] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [8419,8418,8420,8421,9642,9643,9678,8468,8432,8415,8429,8312,8393,8379,8311,8735,8327,9702,8550,8552,8568,8570,8598,8267,8269,8325,8326,8734] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [20721,20664,20666,20645,20644,27102,27103,21788,21828,20718,20640,20584,20580,26235,26236,31350,26237,22279,22275,22252,31317,31329,31330,26222,21806,21807,21802] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [25612,25613,25616,25619,25618,26222,25600,25671,31228,31230,31390,31392,25599,25595,31293,31329,27176,27178,27197,31227,27500,31255,31253,27198,31256,27131,27136,27114,27149] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [5952,5954,5955,29873,29875,29812,29813,5949,5935,5936,5948,6007,29736,29738,29776,29876,29710,29711,29713,7851,7533,29739,7528,7514,7515,7517,7450,7485,6558,7482] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [25501,31724,25464,25465,31895,31896,31790,31880,25498,25516,25518,25519,31740,31805,31789,31788,31511,31514,31515,31516,31524] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [5800,5853,5801,5855,30207,30271,30272,30273,5834,5852,30223,29994,29997,29998,29999,30007,30288,29940,5838,29939,30378,6826,30379,6824,30363,29988] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [31040,15766,31145,31146,15803,30974,30975,15765,15799,31038,31039,31053,31055,30990,30765,30766,15817,15819,15820,30774,30792] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [15518,18975,15318,15315,15313,15314,15502,15500,15501,15554,17988,18054,18851,15256,15259,15260,15261,15317,18919,15566,15567,17989,18921,15565] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [30674,30676,30669,30687,30702,19647,30928,30946,30705,19648,30449,15900,15750,15801,15802,15903,30677,30445,30448,30428,30432,30433,30943,30952,30956] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [17401,17372,17434,15210,16102,17419,18020,18021,15209,16101,17435,18104,18105,15132,15134,15137,15135,15120,15180,17431,17418] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [17895,19478,17853,17854,19477,18318,30914,17836] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [31199,31200,29642,29641,31678,31419,31452,31455,31230,25599,25602,31183,31178,25502,31696,31195,31198,31182,31424,31425,31426,31427] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [25994,26007,25997,25998,26021,25293,25294,26008,25928,25295,25296,25297,25298,25300,25299,25230,25354,25369,25356,25359,25925,25926] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [5631,5632,5634,6356,6357,5633,5636,5635,6343,6344,6355,6260,6330,6333,6261,5629,5630,6262,6264,5695] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [23617,22681,22761,22763,22764,22798,24328,24336,24338,24348,23521,23524,24339,23553,23554,23616,23540,22802,24352,22808] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [16371,17073,16750,17074,17077,16756,16825,16826,16827,16757,16805,16334,16318] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [4688,4664,3857,3952,3953,3100,3018,3021,4675,3144,3134,3147,4684,4674] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [5536,5600,5601,5537,8024,5353,8023,5296,5297,5352,8089,5350,5654,5589,8886,8956,8954,9010] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [27672,27673,25016,25265,25266,25200,28603,28605,27738,28535,24960,24961,25013,25036,25014,25201,28659,25199] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [13065,14653,14640,13822,13917,14629,13918,13099,14639,14649] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [27773,27775,27788,27789,24909,27133,27134,27130,27705,27702,27704,24836,24831,24833,24908,24819,25801,27071,27100,27118,27117,25727,24879] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [9409,9410,9488,9489,1959,1123,2002,1960,1961,1963,9431,1122,1153,1136,1139,1835,1906] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [2250,2928,2926,3464,1557,2276,2280,2248,1555,1558,2270,3465,3427,3362,1594,1614,1596,2948,2950] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [13201,12043,14736,12045,13140,13141,13142,12042,12590,12591,11985,14726,14723,14724,13156] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [15228,15230,15231,10116,16183,16162,16166,15298,15297,15348,10097,16177,16179,15375,15376,15302,15155] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [31616,28863,31614,31615,31635,31639,31679,31492,31680,31682,31527] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        