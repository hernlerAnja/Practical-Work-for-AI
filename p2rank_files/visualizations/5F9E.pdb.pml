
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
        
        load "data/5F9E.pdb", protein
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
 
        load "data/5F9E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [760,761,1117,753,1143,1144,751,2438,2436,752,762,1128,737,1145,122,146,147,148,143,144,145,111,113,167,731,734,2440,281,116,115,109,110,168,296,298,1222,1227,449,1223,1224,568,709,142,1230,569,567,280,290,706,707,2441,2445,2448,783,780,2475,2477,1120,1118,775,776] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3960,3959,2935,2937,2990,2991,2992,2933,2934,2939,2940,3532,3105,3388,3526,3961,4038,3118,4039,3387,3528,3550,3554,3544,3553,3578,3933,3580,4053,2966,2967,2968,2969,2970,2971,2972,3120,3121,3122,3268,4043] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [135,396,139,140,141,142,1230,395,393,417,418,424,1243,1244,298,448,1228,1229,351,310,311,134,137,144,1088,1257,1255,1246,1104,1105,379] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3034,3036,5265,2840,3423,3411,3414,3416,5285,3100,3031,3032,3033,3098,2886,3060,3075,3074] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [5085,5086,5087,364,365,367,3983,3984,3985,3986,369,3994,3978,3975,3977,3530,3533,3537,4024,3538,3541,3557,3974,4025,3393,3395,3397,3415,3417,3357,3360] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2963,2959,2961,2965,3135,3122,3267,4045,4059,3134,3904,3920,3944,4046,3921,4066,4044,3213,3214,3215,3175,4068,4069,3243,3236,3237] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2541,2545,2546,3993,5145,5146,316,342,344,317,2551,3984,3986,343,150,158,159,160,125,126,151,161,2538,128,131,318,302,312,2537,127] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3127,3500,3483,2985,3502,2902,2999,3001,3002,3003,3112,2856,2857] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [991,994,1017,1018,1305,1516,1294,1517,1025,2077,1519,1518,1520,1521] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3597,4219,4446,4489,4476,4210,3626,3596,3635,3928,4473,4474,4475] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2194,2195,2207,881,880,907,914,2300,2305,2322,912,2301] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5124,5125,3696,3699,5108,5126,3730,5103,4997,5010,5001,3728,3723,3698,3721] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        