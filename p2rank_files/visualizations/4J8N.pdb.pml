
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
        
        load "data/4J8N.pdb", protein
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
 
        load "data/4J8N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [13479,13480,15699,15701,13443,13448,13470,13478,13474,13475,13477,13490,13493,15981,15986,15988,15962,15964,15383,15382,15384,15414,15416,15909,15910,15911,15918,9275,9276,13452,15902,13978,15700,9277,13980,15885,15697,15856,15908,15698,15696,15987,15451,15448,15465,13442,14115,15651,15654,15655,15657,15682,15683,13782,13783,13819,14046,15356,14027,14040,14041,14044,16050,15361,15695,15857,15859,15807,15852] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2233,2506,2543,2544,2545,2546,2547,2548,2550,2549,326,328,329,827,829,879,876,2532,964,2531,2232,2230,2231,2314,2503,2504,2751,2758,2764,4885,4886,327,2263,2265,2297,2300,631,632,323,668,895,291,293,301,2701,2656,2835,2836,2837,2205,2899,2767] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [10987,11325,11326,11012,11013,11014,11015,11327,11328,11329,11330,11332,11045,11046,11047,11540,11549,11539,9658,11331,11528,11533,11598,10992,11438,11488,11490,11516,11483,11487,11510,11681,11617,11618,11619,11096,9413,9414,11288,11285,11286,9082,9073,9079,9083,9450,9108,9109,9110,9111,9609,11313,9746,11314,9677,9672,9675,9124] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [9043,9044,9146,9147,9148,9045,9050,9072,10299,10340,10346,9030,9026,9027,9028,9031,10403,9124,10339,9381,10263,10276,10248,10247,10300,10283,10296,11287,11096,9413,9414,11288,11286,9082,9073,11129,10352,11130,11078,11079,9964,11281,9745] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [5948,5949,5955,4637,4636,6739,5961,4653,4654,6687,6688,6705,4640,6010,6012,6013,4757,4733,4681,4682,5872,5573,5857,6738,6884,5856,5419,5420,6890,6895,6896,6897,5354,5885,5890,5905,4990,4639,5909,5908,4756,5022,5023] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [1570,365,2347,1514,2348,1182,1481,246,248,249,364,366,631,632,963,1465,1466,244,245,261,262,1621,291,293,263,1564,1517,1518,1558,1619,1622,2296,2314,2505,2506,2297] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [14715,14721,15499,13515,13517,13412,13413,13396,13397,13400,13442,13414,14772,15447,15465,14708,14709,14678,13493,13516,14333,15498,13750,14632,14665,14668,13399,14114,15655,15657,13782,13781,13783,15656,14616,14617] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [6705,6623,6624,6656,6939,6941,7142,7149,4710,4714,4715,4717,4718,4719,4720,4682,5218,5219,5220,4688,4692,6894,6895,6897,6923,5355,5281,5284,5217,5265,5266,5280,5267,5022,5023,5286,5059] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [6623,6624,6656,6936,6937,6938,7204,7221,7226,7228,7227,6941,6940,7125,7142,7158,7137,7140,7149,7119,7290,6596,6934,6935] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [4935,2730,4937,5634,5593,5631,3441,3443,4420,4421,4465,4848,4462,4900,4974,5635,4938,5636,5638,5632,5633,4933] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4773,4774,4775,4776,4777,5042,5081,16844,16846,16973,16969,16971,4591,4625,4666,4667,4744,17044,5082,5758,5759,16938,16939,16941,4574,4493,4495,4576,5800,5801,4572,5003,4573,4575,5043] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [8811,8812,9329,10024,10028,10029,9984,10025,10027,9365,10020,10023,8856,10022,16593,16594,15878,15881,15882,15884,16661,16592,16656,16658,16660,16063,16657,16606,16609,16610,9324,9326,9328,9239] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [8965,8966,8967,3693,3820,8982,9164,10150,9166,3787,3788,3790,3818,8885,9394,8886,9434,9167,9168,9433,9135,9472,9473,10148,10149,9165,10191] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [6013,6014,6088,6089,6087,6010,6012,17138,17139,17140,17141,17142,17143,4603,5918,5930,5931,5932,5949,5955,4636,17156,17159,17198,6035] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [2818,2819,3241,3338,1602,3316,2770,2301,2804,3337,3388,3317,4914] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [16563,3387,16562,3315,8952,8953,3551,9216,16559,3677,3335,3349,3675,3222,3292,3711,3712,3314] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [14395,14597,14392,14393,14394,14396,13181,13182,13225,13734,14398,13608,13696,13698,13693,13694,13695,13697,14391] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [15452,14753,15450,15451,16488,16489,15969,15970,16392,15921,15955,16467,16539,16468] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [10479,10480,4008,4005,10404,10405,4047,4048,3988,3989,3990,3983,3987] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [11601,12023,11600,12098,12099,12119,12120,12170,11586,12088,11552,11081,11082,11083,10384] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [16699,16795,16796,5893,5891,16678,16680,16677,16756,5920,16627,3475,3476,3479,3458,3459,3460,3424,3425,3461,3462] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [5988,5991,5993,6069,6691,6692,7209,7210,7161,7195,7632,7728,7729,6052,7697,7708,7779,7707] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        