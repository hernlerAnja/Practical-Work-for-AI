
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
        
        load "data/3ORZ.pdb", protein
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
 
        load "data/3ORZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2427,2372,2425,2426,2530,3356,3333,3564,3344,3002,3005,3347,3349,2369,2375,2376,2368,2370,2373,2377,2380,2387,2388,2391,2397,2395,2974,2994,3372,2997,3373,2967,2951,3455,2545,2546,2547,2698,2699,2700,3456,3458,3476,3477,3478,3462,3463,3464,3316,3480,3485,2563,2413,2401,2402,2604,2404,3486,3545,3547,2642,2664,2665,2666,2673,2406,2643] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [7828,6893,6894,6895,7805,6998,7474,7477,7816,7819,7821,6836,6837,6838,6840,6841,6843,6844,6845,6865,6848,6855,6856,6859,6863,7845,7844,7466,7469,7439,7446,7948,7949,7950,7952,7166,7167,7168,7928,7927,7930,7934,7935,7936,7013,7014,7015,7423,7957,7788,7031,6869,6870,6872,6881,7958,8018,8020,8022,7133,7132,7134,7141,7111,7113,7114,6874] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [5605,5234,5237,5576,5581,4610,4617,5604,5588,5687,5688,5690,5693,5694,5695,5696,4776,4932,4620,4624,4626,4630,4633,4895,4897,4896,4635,5565,5548,5717,5718,5772,4599,4601,4602,4655,4759,4597,4598,4604,4654,4656,4609,4616,5183,4774,4642,4637,5226,5229,5206,5207,5203,5199] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [748,1124,753,756,1095,1097,1100,1212,1105,1214,1217,1218,1219,1220,415,416,143,152,414,1084,1067,1242,1297,123,124,125,127,173,175,128,129,135,136,139,145,156,745,118,174,1123,116,117,702,1211,293,295,451,161,149,725,726,722,119,120,121,278,718] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [2836,2837,2834,2835,2111,2283,2284,2109,2113,2119,2124,2254,2188,2191,2110,2253,893,890,2211,2212,2213,895,2196,864,2164,861,885,886,2117,2116,2524,2466,2467,2281,2259,2847] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [2221,2222,2215,2219,2226,2227,2779,2784,2782,4411,1168,2822,2766,2210,4423,4424,4425,4414,4416,4410,790,1170,788,817,1169,3406,3422,3419,3420] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [1149,3225,3231,3221,3222,3223,3224,4297,1144,1146,1148,2784,2783,2777,3200,3202,4296,4373,4374,4386,4388,4399,4375,4407,4413,4415,742,732,734,735,743] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [1802,1817,1818,8686,8757,1793,1807,8756,8687,8723,8663,8664,8684,8631,856,2479,2471,2493,857,1784,1841,8780,8782,8605,8606,8607,8604,8594,1775,8608,8789,8798,8783] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [2101,2102,2104,2106,2110,8658,8667,8666,2111,2284,886,857,2078,884,1826,1827,856,2487,2479,2465,2466,2467,2480,855,2259,2262,2263,2264,2313,2281,2311,2312,2309,2310,8647] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [2129,2143,526,528,953,2051,2052,2130,973,974,972,951,976,977,980,982] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [2171,2129,2143,526,528,953,2156,534,535,2173] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7697,7243,7703,7694,7695,8776,7693,7245,7672,7674,8775,8852,8853,8865,8867,8854] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [4207,4208,6293,6294,4277,6269,4205,4244,4184,4303,6317,4129,6251,4310,4319,4304,4126,4127,4128,4125] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [6605,5007,5009,5434,6527,6528,6606,5454,5455,5453,6619,5432,5457,5458,5461,5463] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [7245,7674,7251,7252,7243,8879,8895,8897,8889,8853,8867,8881] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [6605,5007,5009,5434,5015,5016,6643,6645,6619,6627] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [4364,3134,3135,4354,4358,4438,4433,3139,3142,3144,4455,4363,3113,3110] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [6663,6585,6589,6595,5367,5342,5371,5374,5376,6684,5345,6636,5366,6594] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [8837,8842,7611,8843,7606,7607,8833,7614,8888,7616,8915,7582,7585] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [86,87,88,89,303,302,660,679,637,658,90,91,92,42,43,678] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [4567,4568,4569,4570,4572,4523,4524,5118,4573,4783,4784,5140,5141,5159,5160,5139,4571] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        