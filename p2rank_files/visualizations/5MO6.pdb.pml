
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
        
        load "data/5MO6.pdb", protein
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
 
        load "data/5MO6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4066,4068,4069,4070,3734,3737,3738,4681,4682,3777,4633,3739,3889,4604,4606,4607,4632,4634,3766,3804,3765,3768,3736,4094,4095,4093,4112,3717,3875,3919,4109,3878] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1922,1010,1876,1877,1846,1867,1875,1155,1355,1111,1040,1114,1336,973,976,970,1002,972,1006,1011,1013,1004,1302,1306,1305,1923,1924,1925,1304,1850,1868] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4203,4102,4104,3698,3699,3714,3133,3134,3136,3537,3302,3303,3539,3701,3695,4201,4205,4075,4204,4206,4209,4210,4212,3538,3670,3672,3674,3675,3317,3318,3319,3315,3139,3197,3199,3198] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [433,434,538,435,369,374,375,376,378,908,910,909,906,773,774,1444,1446,775,1347,1447,1312,934,935,937,539,372,370,554,555,1448,1452,1453,1455,419,911] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4088,4210,4211,4212,3318,3335,3182,3183,3154,4048,4063,4064,3157,3395,3391,3392,3393,3394,3430,3400,3161,3168,3169,3170,3166,3173,4236,4237,4238,4228,3162,3163,3390,3355] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [246,247,248,270,243,647,237,3546,3544,3545,241,242,3680,3503,3508,267,827,3501,3502,826,3495,609,611,612,644,646,637,675,879,880,859] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [575,402,403,404,405,406,409,397,666,1471,630,1472,627,628,629,1479,1481,1480,568,636,554,555,414,1454,1455,418,419,1284,571] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2819,4536,4518,2825,4559,5403,5415,5409,5412,5414,5392,2846,2836,3982,4524,4532,4533] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2961,2944,2972,2973,2982,2951,4257,4285,2953,4283,4304,4305,4251,4252,4260] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        