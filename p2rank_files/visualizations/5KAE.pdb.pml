
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
        
        load "data/5KAE.pdb", protein
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
 
        load "data/5KAE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4914,4915,4938,4939,4940,5076,4937,5078,5180,3412,3413,3416,3695,443,3696,444,1033,1035,923,904,921,4454,4882,5092,5093,5096,5099,4453,4451,4463,4466,4467,4468,4469,3775,3726,3727,3728,3729,3730,3731,4966,1060,1062,1064,1094,1059,4963,5004,4965,1085,1086,1087,4972,4936,4961,4962,4968,4969,3389,3392,3426,3425,458,472,1022,1020,1021,1016,1018,1023,1024,1017,1048,1050,3424,516,5030,5002,5003,5060,5079,4967,5041,1095] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5231,5748,4788,5192,5216,5749,4644,4646,5721,5829,5836,5837,4579,4580,4806,4807,4808,5732,5828,5826,4624,4577,4578,4622,4628,4629,4638,5085,5087,5089,5090,5170,5171,5175,4786,5189,5193,5195,4787] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3231,3232,3233,3234,3230,3244,3245,2911,2912,2646,2648,2910,6302,3217,3220,6278,2641,2652,2656,2668,2673,2887,2662,3195,2884,2876,2674,1557,2233,2234,2235,2236,2237,2238,6334,6335,6431,6434,6425,6397,6400] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [423,405,3687,1184,406,1222,3681,3682,3683,4017,3685,1221,4475,4473,4474,4431,4432,4433,911,912,913,914,3715,422,424,932,934,3688,3689,4042,4497,1211,1213,4043,4006,4009,4008,4495,4496,4032,4034,4070] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [5841,5869,5675,5660,5668,5666,5866,6377,6440,6441,6413,6439,6353,6319,6295,6297,6327,4896,4866,4898] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3141,471,5011,5000,5001,5002,6228,6230,3436,3437,3154,3158,3160,3399,3400,3401,3368,3425,472,473,474,3145,4979,4971,4972,4973,4969,4949,6254,5004,3152,3161] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [3023,3025,2992,2993,2994,2995,2996,2469,2470,2473,2475,2965,2999,2963,2966,2967,2970,1301,3026,3258,3276,1848,1850,2083,1300,1838,1841,1844,2451,2452,2456,2461,1832,1815,1297,3260,3267] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [4727,4735,4736,889,890,1129,1130,4723,903,1034,901,4748,4757,4766,4487,894,895,4488,4689,893,4722,1104,1107,1108,1109,1031,1112,1133,1126,4749] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2025,2027,188,204,2288,2287,2019,2021,2291,3557,206,177,179,180,187,212,211,169,3887,159] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6741,6712,6739,6740,6751,6752,6755,5336,5338,6758,5243,5276,5315,5277,6760,5310,6783,6794,5704,6784,5718,5722,5723,5724,5725,5244,5278,5716] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2259,3826,2258,3836,3837,3833,6338,6339,6344,2245,6331,3508,4855,3808,6360,6361,5143,4838] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4830,5733,5860,5861,5862,4829,5732,5721,5835,5836,5837,4579,4580,4808,4606,4607,4608,4609,4591,6784,6786,6787,5724,5725] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [5548,556,557,5042,5056,5039,5538,5576,5578,5545,5546,5541,5544,5540,5517,509,510,511,512,1084,1082] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [442,444,1033,1035,923,904,920,921,4468,1016,1018,1023,1024,1017] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [446,449,428,452,970,3373,3378,3382,3385,3678,416,385,386,3663,3665,430,431,425] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2264,2267,2268,1556,1560,1577,1884,1521,1536,1537,1538,2276,2263,1885,1902,1901] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [948,762,939,788,765,766,841,951,949,387,389,414,859,1177,1178,377,379,845,838] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [891,4730,640,641,659,1147,639,647,1149,648,656,657,4715,4717,4714,4712] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        