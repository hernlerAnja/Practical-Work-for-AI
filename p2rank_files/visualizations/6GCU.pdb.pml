
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
        
        load "data/6GCU.pdb", protein
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
 
        load "data/6GCU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14788,14787,12916,12930,12924,14602,14777,14789,12651,12652,12653,12654,12655,14437,12900,14430,14427,14963,14965,15131,12922,12892,12893,12897,12910,12898,14605,14780,14938,12984,13311,13312,13313,14954] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [4166,4585,3924,4584,4586,5703,5878,5710,3934,6061,6226,6227,6236,6238,6050,6051,6053,6060,6062,6404,6211,6228,4165,5700,5875,4179,4197,4170,4171,3928,3927,3926,4183,4195,4189] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [374,376,811,812,945,381,392,390,608,767,391,393,624,497,500,410,411,776,798,962,474,480,481,813,961,769,773,486,487,752,753,743,795,810,745] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [8650,8385,8384,8651,8562,8563,8564,8565,8566,8567,8568,8330,1993,8622,8579,8580,1180,8329,1177,1178,1987,8386,1176,1201,8393,1988,1978,1984,1992,1199,1202] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [17306,17307,17370,17349,17112,17113,17111,17377,17378,17367,10714,10235,9903,9926,9928,17120,17291,17293,17295,17290,17292,17294,17057,9904,9905,9907,17056,17097,17289,10719,10705,10711] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [9201,9525,9208,9494,9503,9138,9496,9224,9115,9116,9335,9101,9103,9539,9117,9108,9479,9470,9472,9537,9538,9522,9540,9334,9480] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [15923,11606,11616,11318,11320,11322,15930,11615,11619,11633,15876,15890,15897,15925,11621,11624,15932,11280,15893,11283,11281,11282,15920,15913] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [12432,12441,12444,12445,12452,12453,12461,11820,11821,11796,11938,11939,11940,12006,12007,12009,12011,11836,11797,12927,11986,11987,11991] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [16561,9398,16602,16603,9440,9441,16358,16527,16524,16348,16321,16532,9401,9400,8891,8892,8893,8881,8883] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [12398,12867,12389,12392,12394,12382,12850,12853,12854,12855,12856,12857,12858,12673,12674,12681,12689,12514,12502,12658,12659,12399,12497,12499] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [7203,7170,7196,7163,7193,7186,2554,2555,7166,2892,7149,2906,2595,2882,2879,2593,2591,2553,2581,2585,2889,2888] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [7797,7798,7800,7619,7875,7876,713,7805,671,673,674,165,166,7631,156,714,154,7592,7621,7594,7596,7801] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [14915,13034,14896,13037,14917,14918,13030,14560,14569,14570,14558,14729,14715,14741,13017,13018,14739,14740] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [1696,1698,2189,3386,3387,3390,3393,3374,1702,123,641,1127,1130,1133,1128,2197,2199] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [10432,10423,10425,10429,9854,9860,9868,12111,12113,8850,8852,8855,8849,8866,9368,9870,10424,10435,10924,12114,12120,10926,12117,12101,12112,9855] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [6002,6169,5988,5833,5832,5834,4310,4290,4291,5843,4550,6188,6191,4307,4303] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [15258,15084,13052,13053,12998,12999,15091,14740,12997,13004,13018,13057,14914] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [12923,15295,15464,15471,11970,15645,11969,15618,15619,15620,15636,15633,12938,12939,11968,11972,15472,12920,12919,10974,10975,10976] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [2248,2249,3094,3093,3726,3241,3260,3211,3212,3213,3259,3264,3282,4200,4210] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [9855,9856,10400,9840,9843,9359,9992,9834,12103,12112,8838,12110,8850,8851,9355,9846,10393,10394] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [16780,16808,9410,16860,9408,16795,9886,9891,9908,16807] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [8080,8081,7835,8133,681,683,8068,1159,1160,1164,1165,1173,1163,1181,685,1182] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [1315,1317,1340,1342,466,468,470,476,432,457,461,440,442,782,781,475,427,771,775,777,1321] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [3943,3931,3932,3672,3671,3770,3772,3787,3946,4140,3947,3949] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [1666,1667,1673,1113,1114,1129,632,1116,1119,123,124,628,1102,1112,111,112,113,615] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [15552,15553,6670,6650,15537,6651,6826,15378,15377,15397,6828] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [7361,7516,2299,7176,7175,7183,2549,2560,2292,2294,2300] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [163,164,7650,157,714,7630,894,893,876,873,862,863,871,846,856,861,870] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [11318,11320,11321,11322,15930,15931,11359,11585,11363,11601,11587,11315,11346,11345] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [9197,10056,10068,10069,9722,9194,9196,9708,9706,9725,9719] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [6051,6053,4166,5878,6211,4257,6033] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [11685,11689,11699,12026,11722,11723,11712,11697,11896,11916,12000,11917] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [9441,16377,16357,9583,8884,9576,9620,9621,9573] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        