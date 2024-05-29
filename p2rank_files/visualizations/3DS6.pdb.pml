
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
        
        load "data/3DS6.pdb", protein
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
 
        load "data/3DS6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6412,6413,6415,6416,6417,6796,6410,6411,6402,5804,5827,5828,5781,5782,5807,241,5783,5784,230,231,6450,6128,5933,5935,6366,6383,6205,6207,6382,6407,6387,5809,6424,6425,6426,6774,5806,6884,6129,6875,6876,6206,6873,6877,6878,6894,6895,6882,6883,5937,6091,6092,6093,6094,6888,6906,6127,96,102,103,81,95,6447,6448,6449,6439,6440,6441,5780,6400,5921,242,5778,6365] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1256,883,860,870,871,872,873,874,875,876,877,847,867,1335,1336,1337,1338,1343,666,1354,665,667,250,265,266,267,269,270,249,237,886,551,263,395,397,553,264,588,589,843,826,393,238,239,287,380,381,842,235,1348,1355,1365,1366,1367,578] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [4123,4125,3435,3436,3437,4103,4106,4107,3359,3321,3323,3598,3167,3165,3637,3151,3612,3617,3595,3613,3163,4115,4124,4118,3350,4137,4108,4114,3348,3039,4113,3033,3034,3035,3036,3037,3649,3650,3653,4026,4105,3038,3040,3056,3057,3058,3008,3010,3009,3646,3647,3632,3640,3641,3642,3643,3644,3645,3630,3011] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [8644,8645,8646,8742,8751,8747,8621,8622,8623,8753,9693,8624,9695,9696,9700,9701,9702,9691,9706,8755,8909,9233,9234,9235,9237,9614,9241,8738,9200,9201,9205,9025,9023,9024,9711,9713,8947,8945,8946,8907,9183,9186,9225,8603,8607,8625,8627,8619,8628,9228,9230,9231,9232,8596,8597,8739,9218,9220,8598,8599] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [9947,10675,10677,10678,10328,9946,10327,10301,10326,10224,10225,10258,10302,10433] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [5658,5656,6341,5659,5662,5945,5946,6340,6342,6266,5606,5688,5685,5663,1410,1414] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [7369,7372,7382,7098,7368,7407,7096,7105,7106,7107,7097,7128,7600,7569,7603,7568,7572,7573,7576] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [9914,9877,9878,9879,9906,9908,9934,9737,9739,9749,9751,9560,9748,9750,9724,9549,9722,9721,9548,9910,9826,9818,10192,9787,9788,9789,9790,9842,9838,10191] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [7073,7127,7129,7857,7861,7082,7083,7863,7870,7874,7875,7080,7138,7406,7506,7532,7507,7509,7510,7536,7482,7483,7613,7544] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [5555,5566,5567,5878,5879,5585,6257,5719,6234,5721,6235,6239,6233,6244,6254,8301,8303,6247,5565,6271,5557,5556] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [5601,898,923,924,5610,5613,5618,5616,900,901,902,1463,1685,1451,1730,5622,1725] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [161,162,26,27,704,707,717,45,179,181,693,694,695,2715,699,2713,2734,2738,2755,2753,2754] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [9051,9053,8403,8537,8520,8384,8385,8369,9052,11144,9057,9065] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [2781,2784,2796,2797,2932,2815,5483,3477,3484,3487,3465,3469,5508,3464,3109,2949] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [249,5772,5773,237,250,269,5635,886,900,902,907,908,910,934,5621,5634,1234,873,875,879] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [7724,7326,7734,7323,7334,7420,7685,7686,7336,7458,7459] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [1738,1870,2136,2146,2097,1735,1748,1858,1859,1709,2134,1721,1722,1708,1719,1728,1720] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [4640,4867,4904,4906,4477,4478,4479,4490,4492,4916,4508,4489,4498,4505,4638,4629,4602,4630] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [9444,9446,10875,10876,10877,10878,9384,9382,9408,9410,9418,9419,9420,9009,9010,8999,9002,10827,10829,10830,10832] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [9580,9593,8616,8617,9832,9563,9749,9751,9747,9748,9750,9600,9700,9701,9702,9724,9725,9601,9823,9824,9780,9778] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [5242,3794,3796,5241,3822,5193,5196,3830,3421,3422,3832,3858,3413] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [9625,9630,9631,9624,9633,9296,9298,9268,9305,9306,9307,9276,7649,7656,7669,7660,7661] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [801,126,727,728,725,726,6984,6989,6992,729,795,787,791,719,794,732] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [6564,6566,8014,6592,6593,8011,6600,6601,6602,6191,6192,6626,8060,6183] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [1363,1375,1376,1388,1417,1420,1202,1205,1340,1364,1366,1243,1344,5648,5649,5651,1222,5647,5646,1341] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [6244,6254,8301,8303,8306,8308,6247,6239,6257,6271,6260,8311] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [1590,1596,2328,2330,1585,1589,1136,1138,1134,1142,1104,1106,1108,1135,2340,1617,2325,2331] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [5099,5110,5098,5100,5105,4355,4359,3906,3908,4353,4360,4366,4349] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [6440,6441,6442,78,7273,7039,7037,7318,7049,7051] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [1033,916,917,918,1294,1267,1262] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        