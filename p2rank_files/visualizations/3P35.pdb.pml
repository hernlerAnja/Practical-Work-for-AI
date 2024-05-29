
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
        
        load "data/3P35.pdb", protein
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
 
        load "data/3P35.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [606,607,608,609,610,611,752,645,605,618,619,620,625,626,5532,5534,5538,5539,3291,5378,1069,1075,1079,1081,477,661,1065,4793,754,756,646,627,4803,4812,4818,5410,4795,5407,5408,5386,4815,4817,2762,5537,5540] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [1067,3279,291,300,1061,284,289,298,292,288,1236,1239,1242,1238,1252,281,1379,1393,1400,1402,278,1378,3269,3280,3272] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4934,4941,4981,4982,4983,3953,3956,3957,4956,4985,5002,4609,4584,4591,4592,5001,3948,3951,3932,3933,3936,3937,3945,4587,4586,5127,5130,4952,4950] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [5044,5046,5053,3897,5055,4657,3894,3884,3887,3890,4891,4892,4895,3906,3904,4670,4702,4706,4673,5032,4905] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [2674,2680,2682,2663,2664,2679,2683,2639,2665,2201,2708,2709,2707,2711,2681,2643,2203,2668,5512,2148,2153,2163,2164,2166,2167,2168] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [2068,2074,2079,2081,2825,3212,3203,2088,3052,3048,3049,2071,2090,3062,3189,3210] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [879,413,414,415,416,417,418,376,378,943,944,945,947,914,915,916,917,918,919,374,901,902,904,910] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [3288,3289,3290,2763,3159,2774,3255,5431,5432,5400,2767,2778,2782,2786] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [1003,996,999,5473,1328,1329,1331,1010,1013,1009,1327,1347,1349,1014,1446,1029,1472,1474,1475,1476,1445,1022] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2241,2267,2269,2270,2271,2687,2689,2690,5436,2727,2728,2128,2770,2723,2724,5435] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [4504,4506,4505,4021,4022,4023,3983,3987,3988,4535,4533,3984,3986,4469,4465,4466,4489,4490,4499,4500,4491,4492,4494] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [5087,5089,5104,5107,3816,5156,5157,5139,5158,5159,5293,5276] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [637,638,640,639,784,785,4002,4003,4800,4804,4807,4806,3975,3976,3977,4786,4787,4808,3994,3995,4001,3993] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [3133,3475,3446,3440,3443,3466,3150,6,12,13,14,15,3270,3271,3272,3273,1,2,1232,3130] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [3104,3133,3475,3464,3501,3502,3465,3466,3100,3102,3503,2990,2991,3505] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [4061,4513,4545,4548,4515,3944,4549,4550,4553,4554,4103,4087,4090,4516] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [4610,5127,5128,5130,5098,5126,5125,5002,4605,4606,4609,4590,4591,4592,4981,4980,4598,4599,4614,4625] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [3596,3602,3619,4872,3607,3613,4896,4897,4871,4762,4873,4877,3625,3623,3624,4885] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [5352,4947,5350,4833,4834,4945,4975,4974,5313,5319,5322,5348,5311] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [5528,3109,3113,3091,3115,2137,2140,5527,5507] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        