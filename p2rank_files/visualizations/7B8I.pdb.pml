
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
        
        load "data/7B8I.pdb", protein
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
 
        load "data/7B8I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [957,1342,1343,1344,393,394,380,373,438,374,376,377,941,954,938,379,437,439,934,557,559,1451,777,1441,1443,1444,779,423,558,913,915,912,542,543,910,911,909,919,405,1319,1315,1452,1328,406,410,413,397,403] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4266,4267,4268,4259,4260,4131,4135,4137,4160,4158,4136,3487,4257,4261,4262,4269,3374,3189,3195,3196,3253,3254,3255,3192,3770,3771,3772,3773,4159,3358,3359,3373,3593,3725,3726,3727,3728,3729,3730,3731,3595,3757,3222,3226,3239,3209,3210,3213,3198] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1841,1352,1867,1868,1044,1115,1113,1123,1308,1306,1309,977,1018,1159,1333,961] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3222,3225,3226,3227,3228,3239,3229,3231,3210,3213,3217,3445,3446,3448,3412,3413,3414,3395,3388,3390,3391,3486,4283,4284,4264,4265,3374,3375,4286,4266,4268,4135,4104,4119,4120] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [401,406,410,413,415,397,403,1476,1477,1449,1452,1288,1468,634,423,558,559,1450,1451,575,670,394] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3090,3069,3700,3698,3699,3647,3428,3429,3430,3458,3457,3679] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4308,4361,4307,4313,3007,3009,4339,4341,4360,3028,3000,3029,3036,3037,3039,3017] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [221,223,213,212,1491,184,1525,193,201,191,1492,1544,1545,1523] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        