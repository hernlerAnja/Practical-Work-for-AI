
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
        
        load "data/6P3W.pdb", protein
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
 
        load "data/6P3W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4883,4721,4852,5584,5585,5588,5589,5590,5591,4574,4955,5511,5512,5583,5487,5495,5122,5123,5134,5137,5077,5078,5079,5080,5081,5082,4704,4602,4601,4603,4719,4561,4956,5086,5103,5106,4555,4557,4558,4559,4560] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [248,247,249,1127,1129,1023,666,373,606,607,608,609,611,616,232,610,1049,1050,633,636,652,88,644,130,87,86,93,84,90,131,95,96,103,104,477,1121,1122,1123,1126,1033,1021] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [3340,3342,3343,3373,3374,3345,3350,3375,3339,3341,3338,3309,4481,4482,4488,4509,4511,4498,4489,4501,3310,3311,3382,2940,2941,4684,4512,4648,530,2931,4983,4984,4986,4974,4975,4999,5001,5000] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [7789,7790,7766,29,176,7755,7757,7758,7759,27,28,7728,5023,7798,7347,7356,7357,5005,508,509,7791,511,524,526,39,15,21,22,26,40,600,499,500,212] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [6798,6810,5645,5881,6800,5880,5429,5870,5875,6808,7922,5639,5640,5641,5643,5659,5665,6811,5860,5873,7954,5662,7953] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [2857,2860,2863,2891,2856,2829,3443,3446,3448,2854,3690,2833,3776,3781,3782,3759,3803,3449,3455,2518,2531,2532,2523,3746,3730,3731,3680,3684,3686,3682,2489] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [1183,2382,1178,1181,1411,1421,1424,2420,2393,2395,2384,963,1425,1426,1431,1432,1196,1197,1200,3498,3506,1177,3537,3538] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [8723,8725,7943,7945,8028,8054,8024,8025,8031,8035,8711,5663,7879,7214,7215,7216,7210,5656,7208,7909,7912,7914,8055,8056] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [6927,7279,7272,7273,7276,6940,6941,7307,8166,7270,8149,6902,7854,7859,7862,7245,7870,8201,8202,8100,8110,8104,8179,8223,8150,8151] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [5800,5848,5873,5874,5801,6598,6599,5837,5834,6608,6592,6260,6254,6251,6295,6293,6265,6266,6267,5839,5832] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [3462,3634,3635,3636,4288,4302,4300,3615,2801,3527,3529,3608,1194,1202,3497,3498,3493] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [3341,321,535,3301,3332,3334,3335,3338,3302,315,312,313,3304,547,3311,551,536,271,273,281,270] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [1800,1807,1387,1396,1385,1382,1835,1842,1833,1400,1399,1349,1348,1834,1794,1791,2142,2143,2144,2136,2145] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [2185,2186,2363,2378,2381,2196,2187,2182,919,921,1431,1458,928,894,917,892,895,2366,2374,2383] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [3982,3547,3545,3535,3537,3978,3979,3548,3534,2362,2396,2390,2391,2392,2393,2394,2395,2400] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [110,1142,1128,1129,1026,96,103,106,1010,993,992,1280,1143,1150,1151,1269] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [7717,7754,7757,7748,7716,7723,7718,4764,4768,4769,5022,5011,4756,4791,4794] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [6047,6445,6532,6562,6193] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [7226,7509,7518,7887,7886,7888,5635,5634,5631,5412,5647] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [4730,4609,4712,5054,4611,4613,4728,4614,4486,4526,4505,4506] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [2025,2006,2011,2016,2249,2251,806,772,774,775] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [6638,6648,6650,6637,6644,6785,5385,6639,6797,6790,6794,5360,5383,6825] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        