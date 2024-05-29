
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
        
        load "data/5OQU.pdb", protein
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
 
        load "data/5OQU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3734,3737,3738,3736,4093,4112,3844,3875,3889,3919,3739,3847,3766,3768,3804,4604,4607,4070,4067,4068,4069,3888,3741,4602,4603,4632,4633,3770] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1867,1868,1869,1040,1002,1111,1348,1004,1083,970,973,1843,1329,1302,1304,1305,1306,977,975,1862,1155,1839,1125,1845,1838] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [539,372,538,434,368,369,370,374,375,775,1437,1439,1339,1340,1440,773,1441,1324,1446,1447,1448,906,909,553,774,908,910,911,554,555,551,433,435,381,418,934] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4204,3698,3714,4103,4104,3317,3318,3319,4206,4211,4209,4210,4203,4201,4205,3198,3138,3132,3134,3136,3183,3197,3199,3153,3154,3139,3133,4212,4075,4088,3302,3537,3303,3539,3695,3670,3672,3673,3674,3675,3538] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [737,738,781,782,3010,3031,3032,3034,3591,3628,3623,734,731,732,733,706,728,729,3408,3410,3011,3013,3007,3643,3644,3375,3376,3373,3374,3401] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1193,2661,2662,2664,2688,3566,3038,3567,749,751,750,3017,3037,1165,1167,1168,1200,3041,3044,3045,1226,1227,3046,3048,1195,1198,1194,3071,3072,3073,3255,3062,70,72,1170] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3164,3173,3175,3157,3162,3153,3154,4048,4064,4212,4088,3170,3318,4211,4209,4210,3183,3199] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4257,4260,2972,2944,4283,4285,2973,4252,4250,4251,4304,4305,2951] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        