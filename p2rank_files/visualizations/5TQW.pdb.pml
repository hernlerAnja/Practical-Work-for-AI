
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
        
        load "data/5TQW.pdb", protein
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
 
        load "data/5TQW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1184,1185,1186,1188,1189,1190,1233,1236,1246,1248,1174,1175,2711,2677,2712,1551,1535,1536,1553,1415,1416,1423,1427,1428,1431,1229,1420,1232,2710,2699,3887,2674,2698,2700,2703,2707,2708,2704,3913,3914,2742,512,515,2741,506,508,509,514,482,3850,3851,3886,3885,1179,1238,1247,1237,467,470,459,2747,1554,2715,2750,2714,2687,2713] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [5111,5771,5772,5776,5778,5781,5782,5783,5785,5833,5834,5835,5842,5843,5844,5845,5786,5787,5830,6017,5826,5829,5525,6150,6151,7308,7309,7347,7271,7311,7312,7274,7284,7310,6148,6020,6024,6025,6028,6132,6133,6012,6013,8447,5103,5105,7305,5106,7295,7296,7304,7338,8448,7297,7300,8510,7301,5109,5112,5064,5056,8482,8483,8484,8511,5067,7307,7339,7344,5079] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [2795,2826,2794,2796,503,2797,491,2764,524,530,1567,1564,2772,2769,2771,516,2799,2798,2766] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [7422,7423,6161,6164,5121,5133,5113,7366,7368,5088,5100,5127,5130,7396,7363,7369,7361,7391,7392,7395,7393,7394] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [6890,7005,7006,6591,6572,6573,6946,6735,6736,6949,6988,6760,6987,6690,6691,6906,6888,6889,6931] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [2163,2093,2094,2291,2292,2309,2293,2408,2138,2139,2352,2390,2391,2334,2349,1975,2409,1976,1994] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [5462,5464,5482,5483,5153,5415,5023,5052,5124,5051,5154,5157,5152,5188,5185,5463,5465] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [455,527,426,454,557,560,555,556,588,591,866,865,867,885,886,818,868] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [5330,5325,5314,5332,5327,5500,5270,5271,4986,4989,5313,5315,4990,5261,4996,4998,5493,5497,5495,5496,5499,5503,5504] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [673,664,674,733,735,392,399,389,717,728,730,716,718,393,401,899,902,900] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [5674,5675,5276,5278,5642,5275,6447,6448,6473,6475,6427,6392,5636,5244] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [681,1045,679,1039,647,1850,1851,1876,1878,1795,1077,1078,678,1830] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [4203,2905,2933,2931,2932,2956,4204,4168,3659,3649,3693] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [7529,7530,8246,8290,8256,7553,8800,8801,7528,7502,8765] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [3929,2670,3944,3866,2735,3836,3865,3878,3993,2734,3945,3962,2694,3960,3961,3963,3967,3840] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [7331,7332,8475,8542,8559,8433,8462,8526,8557,8560,8564,8437,8590,8463,8541,7291,8558,7267] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [4573,4539,4542,4569,4570,3345,3346,4572,4564,4596,9147,9176,9175,3327,9169,9172,9174,3329] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [1170,1633,1635,1168,541,577,568,1576,1530,1632,543,546,539] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [3209,3210,9046,9049,9082,9047,3167,7770,3171,3173,4452,7768,7807,4485] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [2836,2871,2036,4085,4088,2872,4121,4122,4159,2840] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [8685,8682,8719,7437,7433,8718,7106,8756,7468,7469,6633] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [2782,2780,2527,4033,2562,2563,2777,2752,2755,2528,2598,4032] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [7377,7379,7124,7374,7349,7352,7159,7160,7195,7125,8629,8630] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [5583,5878,5880,5578,5875,5876,5877,5879,5584,5585,5515,5516,5545] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [9170,9136,9166,9167,9138,9139,7943,7903,9140,4550,7901,7902,7904] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [5992,6301,6300,5813,5815,5935,5937,5685,6304,5936] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [1216,1338,1340,1218,1339,1088,1704,1707,1703,1395] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        