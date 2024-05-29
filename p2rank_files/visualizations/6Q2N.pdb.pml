
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
        
        load "data/6Q2N.pdb", protein
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
 
        load "data/6Q2N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7418,7419,7124,7394,7395,7842,7849,7850,7851,7074,7714,7854,7711,7713,7688,7710,7715,7809,7617,7618,7628,7629,7811,7812,7262,6732] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [2871,2872,2898,2698,2700,2579,2580,2992,2993,2829,2678,2709,2327] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [9148,9149,9562,8896,9247,9441,9440,9398,9267,9269,9467,9561,9278] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [2319,3518,2304,2310,3519,2312,2316,2317,2318,2309,2315,2311,2320,3289,3290,3288,3225,3256,3257,2338,2339,3184,3186,2336,3217,3532,3541,3516,3187,3323,3324,3320] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [8907,8908,8905,9786,9892,9893,10088,8881,8885,8884,8880,10101,8873,8879,8878,10085,10110,10087,8886,8887,8888,9756,9753,9755,9858,9859,9794,9889,8889,9857,9825,9826] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [1280,1282,1285,825,1145,1144,1119,1146,1142,850,1048,1049,1059,1060,505,849,163,1242,1243] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [3358,3338,3325,2259,2261,3357,3477,3479,2292,3324,2278,2289,2281,2282,2283,2285,2287,2408,2405,2409,2412,2434,2252,3359,3493,3484,3488,2293,3519] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [9907,9894,9893,10088,8861,9926,9928,9927,8828,8830,8847,8850,8858,8821,8851,8852,8854,8856,8974,8977,8981,10048,10062,10046,10053,9003,8978,10057,8862] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [9881,9882,9883,9885,10479,10567,10577,9944,9945,9928,9927,10049] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [3998,4008,3359,3312,3313,3314,3316,3358,3480,3375,3376,3910] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [8610,8189,9555,8172,8182,8185,8171,8186,8187,9696,9189,9192,9193,9185,9571,9573,9167,9173,9165,9714,8845,8869,9715,9716,8173] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [2300,2986,3145,3147,2041,2042,3002,3004,3127,1602,1603,1604,1617,1618,1620,2623,2624,2620,2596,2598,2604,2616,1621,1616,2985,2984,2602] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [5433,5447,5522,5255,5743,5124,5629,5140] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [11824,12091,11693,12002,12016,12198,12312,11709] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [6984,280,281,293,296,298,6766,7175,6982,6973,6796,6797,6768,7017,6992,7015,7192,7166,7173,7174,6993] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [3855,3856,3859,3818,4037,4033,4711,2001,1977,4047,4042,4043,4053,4049,3866,3868,3869,3858,4353,4708,4351,4352,3820,3819,4057] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [286,287,289,6670,6766,7175,288,323,6631,6765,6767,6768,7173] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [6765,6767,6788,6614,355,358,6790,6631,6632,323,324,297,333,326,320,321,327] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [184,795,796,770,771,772,456,618,207,208,612,460,468,453] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [2189,2191,2192,716,1135,1166,2185,2206,2207,2209,1098,1100,1101,713,735,1157,2194,2190,685,686,687,688,1171,689,2196] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [7181,6753,7340,7341,7364,7365,7338,7339,7029,7037,7022,7025,6777] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [7304,7667,7669,7670,8760,8761,7285,7704,7282,8754,8763,8775,8758,7726,7735,7254,7255,7257,7740,8765,7256,7258] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [1538,1537,1535,1557,1564,1560,2053,1572,2077,2079] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [375,380,6965,6970,6973,6974,299,307,332,333,6795,6799,6802,6806,6808,6809,6804,6812] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [8126,8129,8646,8648,8104,8106,8107,8141,8133,8622] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [883,884,6361,543,886,544,935,899,6384,6421,6423,565,6362,6364] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [8508,8386,8619,8487,8629,8624] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [1939,1918,1817,2060,2055,2050] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [5568,5591,5757,5758,5426,5427,5428,5771,5772,5151,5152,5153] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [11995,11996,11997,12160,12326,12327,12137,11720,11721,11722,12340,12341] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        