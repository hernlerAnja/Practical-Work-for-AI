
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
        
        load "data/4Y83.pdb", protein
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
 
        load "data/4Y83.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [267,289,290,300,293,296,489,491,488,585,586,883,508,490,492,494,602,603,864,866,493,245,255,263,151,832,834,148,826,812,865,885,248] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [4627,5037,5058,5000,5001,4563,4660,4750,4564,5019,5034,5035,5005,5016,5380,4641,4642,4624,4626,4661,4625,4761,5421,5041,5341,5361,5422,5423,5408,4643,5426,4562,4569,4572,4575] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [927,929,933,1288,911,926,934,954,955,924,441,424,440,423,425,342,320,326,328,333,580,891,327,897,908,481,482,483,893,1351,1352,1353,1289] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3407,3408,3409,2708,3014,3016,3471,3472,3056,3057,3049,3052,3074,3075,3077,2473,2475,3031,3034,2480,2586,2587,3473,3478,3474,3475,2569,2570,2571,2609,2610,2611,2584,2723,2721,2467,2474,2489] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [4756,4668,4666,4667,4669,4671,4978,4981,4983,4503,4944,4686,4755,4745,4468,4698,4432,4504,4467,4766,4977,4993,4514,4511,4533,4535,4510,4534,4528,4472] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [2730,2731,2949,2985,2986,2987,2989,2955,2957,2935,2414,2396,2410,2441,2306,2619,2621,2622,2617,2618,2620,2452,2714,2616,2713,2636,3008] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [4942,4943,4945,4973,4937,4940,4375,4377,4949,4374,4376,4988,4932,4933,4935,4939,4423,4931,4934,4439,4780,4783,4816,4802,4823,4370,4379,4381,4355,4382,4818,4817,4845,4356,4918,4798,4393] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [2768,2769,2979,2263,2260,2929,2997,2255,2257,2943,2941,2745,2748] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [4833,5435,5437,5415,4831,4832,4859,4901,5218,5242,5244,4856,5287,5247,5271,5250,5226,5297] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [1011,1081,1071,1073,1068,1070,1072,1312,1298,1297,1299,1300,1304,1046,1044,963,359,360] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [3416,3420,3417,3419,3424,3164,3083,3126,3127,3128,3418,3160,3163,3162,3191,3193,3192,3159,2506,2507] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [5177,5204,6078,6079,5706,5980,6121,5151,6116,6118,6115,6117,5957,5205,5683,5705,5655,6097,5996,5997,6000,5979,5995,5658,6053,6054,5147] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [1237,1382,1375,1384,667,629,436,455,456,1383,1253,445,444,1359,1360,1361,666,1374,595,437,594,608,1252] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [5104,5103,5137,5165,5166,5367,5368,5370,5164,5063,5172,5105,5376,5384,5369,5371,5372] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [3169,3171,3172,3140,3837,3141,3143,3144,3809,4098,4263,4264,3179,4071,4074,4054,3805,4103,4073,4053,4049,3806] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [882,884,202,813,247,171,22] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [1689,2131,2140,1026,1054,1056,1057,1060,2139,1088,1688,1960,1933,1024,1027,1055,2132,1954,1932] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2581,2722,2723,2792,2596,2595,2790,2791,2757,2736,2594,3478,3479,3480,3481,3502,3494,3495,3496,3359,3503,3504] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [5322,5326,5329,5332,5698,5416,5356,5697,5197,5171,5729,5172,5170,5728,5403,5682,5325] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [638,111,120,620,121,105,821,100,820,856,640] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [2808,2809,2834,2837,2833,3488,3490,2885,3323,3284,3280] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [1908,1933,1024,1027,1913,1717,1912,1054,1714,1716,1055] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        