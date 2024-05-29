
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
        
        load "data/5CVH.pdb", protein
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
 
        load "data/5CVH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1439,371,432,434,1310,1311,1312,1314,1338,1339,380,905,538,537,907,433,369,367,368,373,374,1337,1436,772,774,773,1438,1440,1441,1446,554,1323,1444,1445,1447,908,910,909,418,552,553,933,949,951,930,936,934] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4201,4204,3714,4102,4103,4104,3710,4206,4210,4212,4205,3199,3132,3133,3134,3137,3716,3731,4079,3153,3154,3142,3144,3145,4075,3670,3198,3672,3674,3538,3673,3302,3537,3539,4203,3303,3695,3698,3701,3699,3317,3318,3319,3675,3136] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1192,3073,2655,2657,2681,2654,3255,3254,748,749,750,1197,1199,3038,3041,1193,1166,1167,3017,3565,3566,3567,3037,3240,3044,3062,3072,80,82,1225,1191,1194,3045,3048,1226,3021,1169,1168,3018] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3031,3034,3590,728,730,737,3591,731,3374,3375,3376,785,780,781,732,3627,3623,3624,3007,3410,3408,3411,3010,3399,3402,3372,3371,3643,3644,3401] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3394,4238,4210,4211,4212,3393,3168,3169,3170,3183,3358,3161,3166,3173,3163,3157,4236,4237,4048,3334,3335,3430,3318,3319,3339,3400] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4369,4389,4391,4402,3743,4675,4371,4375,4392,4379,4064,4062,4071,4080,4078] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2973,2970,2972,4251,4283,4285,4304,4305,2944,2956,2951,2953,2963,2961] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [179,191,1518,1520,186,188,196,1492,1485,1486,1487,1539,207,208,217] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2819,2823,4518,3982,3984,2836,5412,5414,4512,4526,4527,4530,4553,5403,5409] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4112,3919,4627,3804,3875] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        