
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
        
        load "data/7CZF.pdb", protein
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
 
        load "data/7CZF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2517,2518,2519,3985,3982,3983,4006,2298,2299,3799,3800,3802,3987,3986,3867,3988,4281,3795,3797,3798,3832,3654,4007,3618,3621,3617,3826,3866,3828] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [11010,11215,11216,11007,11008,11009,11075,11076,11193,11006,11033,9508,11011,9507,10826,10830,11035,11490,9728,11191,11192,9726,9727,9864,10827] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [7770,7779,7788,7792,7793,7794,7795,7796,7797,7798,7771,8134,456,7777,27,8114,8409,463,464,465,800,1095,457,477,478,479,480,481,482,483,484,474,7766,7341,810,811,7786] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [978,6512,7304,603,604,6491,6494,6500,7284,7288,614,617,608,609,650,651,1515,618,620,1517,6505,6506,6507,6508,6710,6720,6513,6716,6717,624,628,6713] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [5924,6224,6402,5857,6164,5859,5878,5864,5852,6401,6403,5828,5827,5834,5845,5846,5830,6324,5897,5898,6325,5915,5916,5877,5925] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [2963,2916,2948,2953,2954,2958,2961,2951,6981,6982,2906,2872,2882,2972,6924,6927,2909,2911,2914,2922,2915,2945,6953,7099,7139,7142,7129,7135,7137,2971,2973,7174,6954,7166] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [7659,7529,7641,7647,7651,13826,13972,13974,14025,14024,7513,13652,13661,13671,13677,13676,13854,13855,8681,8696,8698,13837,13654,13653] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [9840,9841,9842,9843,9845,9846,9844,9858,9734,9735,9736,9737,9574,9576,9910,9912,9926,9623,9624,9567,9550,9552,9609,9557,9607,9561,9568,9616,9942,9962] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [13905,13906,13701,13702,14476,14478,8724,8726,7942,7964,13899,13902,7934,7928,13680,13689,7932,13695,13696,8292,14471,7938] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [2433,2434,2404,2808,1864,2796,2446,1873,2809,2812,3105,2941,1836,1837,1835,2940,1832,1834,1871,1838,2437] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [5231,5233,5088,5090,5092,5374,5349,5392,5393,5337,5299,5298,5300,5273,5278,5230,5260,5256,5266] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [2352,2359,2367,2413,2414,2415,2636,2637,2634,2400,2358,2526,2649,2640,2641,2642,2717,2348] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [12301,12534,12571,12546,12299,12453,12475,12495,12497,12590] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [14171,10123,14142,14328,14331,10120,10124,10172,10162,14355,10163,10167,10170,10182,10157,10160,10081,10131,10154] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [9644,9655,9613,10009,9645,9646,9043,10005,10012,9073,10314,9082,10021,10037,10296,10315,10018,10016] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [1487,1489,1472,6648,6665,6666,6463,6464,6465,6472,199,6835,215,6785,6783,6836,345] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [102,8148,8149,8150,8151,8157,446,8133,820,449,836,435,819,121,835,7760,834,843,7435,7749,7437] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [3927,3555,3420,3422,3423,3400,3556,3401,3592,3894,3562,3558,3559] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [7980,13668,7949,7985,7987,7992,7993,7972,7969,7667,7664,8013,8001,7997,8003,8009,13666,7673,13647] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [433,847,853,910,828,1120,863,866,867,898,830,908,781,785,868] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [3875,3878,4602,3912,5192,5191,5193,4611,3848,4576,5019] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [5098,5101,5382,6022,6013,6018,6019,5626,5627] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [14091,14092,8958,8959,9048,8980,10133,10148] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [12388,12389,11121,11084,12412,11057,11087,11785,11787,11811] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [5744,5746,5756,5752,6372,5742,5814,5815,5794,5797,5799,5552,5775] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [1955,1956,1957,1958,1967,1953,1968,1970,3282,3285,1947,3276,3254] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [14253,14279,14162,14136,8779,8781] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [9416,9276,9384,9385,9389,9415,9411,9407,9390,9393,9403,9408,9399,9401,9409,9387,9386] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [9762,11136,10765,11103,11159] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [11488,11043,11045,11485,11076,11196,11197,11172,11112,11174] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [1749,1751,2426,2424,1750,1839,2436,1771,6903,2927,2420,2430] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [2229,2230,2232,2099,2078,2170,2171,2172,2219,2079] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        