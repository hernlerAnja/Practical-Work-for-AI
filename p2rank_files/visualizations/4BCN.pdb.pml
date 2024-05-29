
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
        
        load "data/4BCN.pdb", protein
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
 
        load "data/4BCN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [147,92,145,146,95,96,101,1042,682,685,670,671,678,711,108,264,265,93,94,1054,1147,1150,263,627,628,629,630,624,625,626,248,491,492,634,651,654,1070,1071,648,669,672,419,389,1143,1139,1142] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4643,4759,5656,5659,4760,4761,5660,5662,4604,4596,4597,4603,5136,5137,5138,5139,5140,5146,5005,5582,5654,5141,5142,5655,5163,5166,5583,4588,5554,4585,4591,4594,5197,5223,4901,4642,4592,5158,4589,4744,4757] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3439,4500,5053,4501,4502,4497,4494,3447,2999,3398,3400,3415,3438,3440,4527,4524,4688,4536,4537,4538,3372,3401,545,5026,5027,5030,5029,5035,5130,2989,2998,4724,4725,5038,5036] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [541,7885,7886,2,4,618,7453,7862,41,42,192,31,7887,1,21,22,5076,242,228,514,523,524,525,526,515,5071,5072,5075,7452,7894,7883,7850,7852] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [1129,1099,1100,2340,1087,1112,1128,500,518,639,635,636,637,7106,7107,229,7108,7459,226,233,465,467,468,478,643,667,1084,7085,7087,7088,7089] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [1237,2850,2852,4374,1236,3528,3527,3594,3707,3708,3709,2860,2856,2859,3706,3592,1223,3561,3563,1207,1220,4383,4385,4371,4381,2857,2858,3678,3681,3683,3688,3684,4369] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [8128,8129,8131,8125,8135,8008,8039,8041,5734,5735,8010,5749,7304,7974,8827,7313,8154,8155,8156,8836,8834,7975] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3803,3876,3755,3804,3757,3759,3752,3753,2708,3855,3849,3854,3514,3520,2579,2580,3819,2949,2562,3503,2921,2887,2914,2915,2918,3763,2888,3508,2912,2890,3832,3813] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2179,2184,2189,1469,1224,1230,1456,1457,1452,1431,1441,2180,2181,2431,2407,2410,2411,1209,1216,1215,1218,1221,2404,1204,1463,1464,1465,1202,2419] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [5150,5641,5640,5599,5611,5612,5155,5596,5179,4979,5624,6845] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [8301,7341,8210,8249,8251,8204,8206,8199,8200,7950,7960,8279,8302,8250,7955,7961,8323,7344,7967,8202,7375,7368,7369,7372,7366,7162,7403,7033,7034,8266] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4643,4629,4760,4761,5660,5661,5662,4626,4604,4605,4606,4614,4596,4597,4603,4900,4866,4867,5675,4618,5676,5526,5683] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [3160,3161,1193,1197,1206,1194,2865,3537,2866,2868,3534,3535,3536,1198,3563,1207,1220,3528,1236,1237,1239] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5922,6371,6686,6687,6328,6337,6342,6343,6344,6693,6685,5946,5957,5933,5936,6694,6695] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [5704,5705,5706,5710,7615,5751,7983,7322,7320,7321,7981,7982,7984,7975,7319,7614,8009,8010,5748,5749,5709,5718,5719,5769,5771,5732] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1417,1418,1821,1823,1867,2174,2182,1865,2175,1428,1432,1431,1441,2180,2181,2183,1832] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5961,5962,6694,5742,6897,6871,6872,6875,5736,6896,5741,5716,6683,6684,5974,6685,5969,5968] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [274,584,60,59,603,11,12] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6657,6659,6652,6656,6658,6660,6661,6318,6668,6646,6623,6474,6476,6266] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        