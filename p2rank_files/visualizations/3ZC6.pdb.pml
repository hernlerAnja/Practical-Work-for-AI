
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
        
        load "data/3ZC6.pdb", protein
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
 
        load "data/3ZC6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [324,1247,1248,1250,1249,1244,1251,1263,1264,325,326,1265,169,161,162,343,392,393,183,185,127,129,133,136,184,170,171,172,762,1167,1166,1242,1150,1243,759,131,740,132,591,714,715,486,485,719,731,310,733,737,1103,147,150,154,155,157,158,165,137,146,128,134,135,766,767,1125,794,1271,1272,1273,432,435] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [3571,3583,2475,2482,2637,2639,2656,3568,3569,3570,2480,2470,2460,2463,2467,2471,2478,2796,2797,2757,3584,3585,3591,3593,3423,3592,2754,3026,2498,2448,2452,2453,2459,2446,2447,2496,2497,2483,2484,2485,2715,2714,3470,3445,3025,3563,3564,3567,3562,3486,3487,3030,2623,2440,2441,2442,2444,3042,2445,3044,3051,3059,3070,3073,3077,3078,3105,3048] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [8143,8144,8152,8145,8148,8149,8150,8151,8164,7240,7077,7241,7242,7078,7085,7259,7308,7309,8172,7337,7340,8166,8174,8067,8068,7099,7100,7101,7043,7049,7086,7087,7048,7623,7045,7047,7652,7630,7638,7649,7645,8031,7044,7050,7051,7053,7055,7056,7062,7063,7066,7070,7074,8051,7656,7657,8026,7684,8004,8173,7081,7083,7413,7604,7605,7380,7379,7609,7621,7627,7226] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4743,4744,5355,4793,4794,5775,5776,5759,5859,5851,5852,5853,5856,5857,5858,5860,4737,4738,4739,4741,4742,4745,4746,4795,4781,4782,4784,4934,4935,4936,5880,5882,5872,5873,5874,4779,4772,4953,5002,5042,5045,5303,5304,5190,5308,4920,5326,5320,5322,5084,5085,5356,5383,5734,5712,4749,4750,4756,4757,4760,4764,4767,4768,5881,4775,4777,5351,5348,5329] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [7866,8103,7456,7468,7470,8112,8113,8114,7863,8111,8109,8110,5917,5934,5935,5943,5944,5920,7888,5914,5918,7889,7885,7887,7467,7469,5984,7451,7832,5988,5983,7459,7452,7457,5967,5976,5978,5985] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [965,931,962,3655,3629,3645,3625,3628,3631,3677,3678,985,986,988,3693,3689,3694,3699,3687,956,573,575,576,563,565,557,984] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [2327,2839,2991,2804,2814,2805,2955,2224,2813,2973,2333,2335,2956,2777,2971,2191,2194] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1443,1760,1442,1666,781,782,1128,1129,1410,1716,1714,1715,1717,1699,1722,1728,1732,1752,1753,1749,1766,1765] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [9033,9030,9035,9039,9042,8485,8452,8455,8441,8438,8439,8440,9014,5065,8444,5021,8443,5022,5024,7897,7903,7905,7934,7932,7933,8442] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [5371,5735,5731,5738,6054,6053,6369,6368,6364,6318,6319,6352,6355,6317,6363,6331,6356,5370,6320,6277,5411] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [4077,4078,3447,3448,3446,3762,3761,3763,4073,4072,3986,4026,4064,4065,3092,3093,4029,4040,4044,4027,4028,3730] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [8641,8642,8621,8649,8340,8650,8654,8655,8588,8603,8638,8604,8605,8027,8029,7672,8030,8339,8560,8563,8606,7671] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [5092,5102,5064,9056,9023,9029,5244,5269,5259,5261,5243,5127,9026,5270] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1557,1031,1032,1033,1543,1545,1546,1547,2201,2203,2207,2214,2210,1006,2219,2734,2733,2736,1002,996,1004,2776] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5886,5072,5110,5889,9074,5897,5901,5902,5903,5074,5984,5900,7888,9100,7886,9069,9066] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [826,6401,6402,6446,6041,6437,6494,6465,6440,6441,859,6490] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [6059,6208,6211,6034,6394,6559,6741,6743,6598] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [8345,8497,8680,8320,8679,8962,8964,8819,8824,8494] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        