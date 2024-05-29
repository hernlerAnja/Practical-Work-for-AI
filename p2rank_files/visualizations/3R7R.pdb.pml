
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
        
        load "data/3R7R.pdb", protein
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
 
        load "data/3R7R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4964,4963,4965,5077,5058,1124,1126,1127,1157,1122,1123,1119,4933,4934,4935,4961,4938,4936,4937,5074,4876,4912,4913,5091,4451,4452,5090,4467,5094,5097,5105,5107,3421,471,472,473,1079,1080,1083,1084,1096,3379,3384,3385,3389,3390,3391,3378,3393,3380,3392,3693,3694,3696,3698,3695,3697,3663,3383,3662,4461,967,4465,4466,986,3742,3741,1149,1150,5038,5039,1146,1147,1110,543,545,553,4966,4967,4959,4960,4998,5028,5000,5002,1085,1113,3360,1109,1111,5001,501,524,487] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4806,5829,5832,5835,5824,5826,5827,5746,5747,4577,4578,4786,5190,5214,5185,4644,4872,5833,5834,4575,4588,4589,5809,5083,5084,5168,5173,5187,5088,5086,5169,4871,5085,5719,5228] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1276,3976,3983,3654,3973,1284,4009,4010,4429,4430,4431,4492,4494,4000,434,1247,1285,997,3650,3652,4470,451,453,974,975,976,977,4471,452,3648,3656,3649,3682,4472,4473] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [5658,5664,5666,6420,6421,6395,6396,6394,5673,5851,5852,5857,5859,5839,6276,6278,6300,6306,6307,4894,4896,6335,4864,6332,6333,6334,6356,4860] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [6370,6371,6372,1617,6283,6284,6406,2619,6259,3193,6315,3159,3187,3198,3199,3200,3210,3212,2875,2878,2879,3197,3201,2680,2877,2623,2606,2608,2629,2635,2639,2609,2842,2843,3162,2852,2853,2854,2847,2851,2640,2641] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3125,6233,6234,3118,3119,3120,3121,4971,5009,503,3367,502,3112,3335,3127,3108,3366,3368,6210,4977,6212,5008,3404,3402] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [471,473,1079,1080,1086,1090,1096,465,985,983,984,967,4466,4475,986,965,3663,1122,1123] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1126,1127,5176,4467,4485,5177,5182,4760,4765,4767,4770,4755,5091,4451,4454,4456,5090,5178,4458,966,967,4465,4466,4484,4486,5194] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [209,2309,2313,207,2322,200,216,217,208,2049,2308,2310,2311,2312,2055,2053,233,2317,3854,241,198,188,194,3523,230,3524] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2072,2468,2937,1889,2465,1901,1895,1905,1907,2111,3226,2959,2961,2960,2989,2991,2993,2930,2932,3243] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [6319,6320,6325,6327,6331,6318,3475,6312,2268,2279,2280,4851,4852,4836,2281,3793,3800,3822,4853,3803,3804] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [4725,4728,1169,1170,1171,1175,1127,4467,4485,1097,1098,1192,1196,1193,952,4486,953,966,967,4484] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4746,4687,4764,4747,4755,4485,4721,4733,952,958,4486,4720,966,967,4484,4688] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [2281,3793,3800,3822,3824,2226,2240,2244,2245,2023,2024,6337,2267,2268,2278,6347,6331,3803,3804] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1219,812,662,663,833,834] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5666,6422,6424,6426,6451,6455,6562,5645,6456,5889,5892,6598,6599] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3833,3835,3819,3827,2304,3863,3864,3523,2316,2306,2311,3828,3856,3490] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        