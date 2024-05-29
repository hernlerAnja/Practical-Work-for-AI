
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
        
        load "data/3ETA.pdb", protein
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
 
        load "data/3ETA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [121,157,158,159,1273,1275,1277,1303,108,109,110,101,102,103,107,679,1171,302,696,717,105,106,720,726,750,716,317,314,315,316,310,672,674,1322,458,1262,1268,1172,554,675,1269,1270] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3635,2541,2542,2543,2672,2459,2457,3046,3065,3053,2473,2475,2487,2489,2461,2463,3622,3542,3048,3049,3541,3630,3628,3633,3637,3094,3100,3123,3091,2455,2456,2460,3685,3689,3725,3070,3071,3076,3078,3090,2684,2685,2686,2680,2828] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [458,1258,1263,1264,1266,1257,1259,1256,483,484,1250,417,451,454,455,456,457,482,1265,1287,1288,129,1278,1279,1282,1286,416,418,420,138,140,421,139,1296,318,128,1096,1118,1289,1083,1084,1085,1100,1102,1089,507,1042,505,547,448,475] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3466,3626,3453,3454,3455,2877,2917,3412,2844,2845,3618,3470,3472,3613,2821,2824,2825,2826,2827,2828,2791,2852,2853,3617,3619,3622,3623,2854,3610,3625,2503,2505,3640,3624,2818] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [441,644,2770,2771,2773,399,400,401,403,2811,3018,3005,3007,3013,3010,628,631,633,639,626,2809,2810,440,439,331,636,2701,2800,2699] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3568,2901,3572,3589,3328,4606,4607,4609,4623,4624,4608,3355,4666,4667,2911] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [985,1229,2210,1212,2226,2211,2227,2212,530,531,2269,541,2234,955,958,2209,2270] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [964,966,1216,1217,929,931,868,930,933,1218,1219,760,761,926,928,954,955] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3301,3303,3134,3135,3238,3576,3577,3578,3580,3334,3336,3298,3324,3325,3299,3300] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [688,680,1184,1185,1193,530,531,1245,1246,683,1229,1211,1212] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2898,3057,3606,3054,2900,3554,3571,3572,3605,3555,3559,3570,3062] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        