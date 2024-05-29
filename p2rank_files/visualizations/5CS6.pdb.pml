
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
        
        load "data/5CS6.pdb", protein
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
 
        load "data/5CS6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1372,1003,1064,1065,998,1000,1002,1059,1054,999,1001,1389,1058,1062,1053,1135,1138,1096,1102,1098,1099,1100,1140,997,1872,1896,1326,1329,1330,1355,1354,1353,1328,1959,1961,1908,1910,1179] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4170,3753,4068,4069,4070,3222,4176,4178,3172,3173,3177,3236,3238,4167,4171,4175,3711,3713,3714,3577,3576,3578,4169,3738,3737,3356,3357,3358,3175,3341,3342,3354,3237] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [553,1474,449,448,450,568,569,570,1472,1476,1475,434,1335,1480,1483,789,923,925,926,390,1362,1363,1364,790,961,554,959,385,387,388,384,974,958] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4059,4078,4032,4034,4035,4036,4567,3885,4593,3770,3769,3771,4075,4077,3841,3844,3846,3756,4592,4563] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [746,747,748,749,801,797,3070,744,753,3665,3046,3049,3050,796,3073,3629,3681,3682,3683,3630,3412,3413,3414,3415,3663,3441,3440,3447,3449,3438,3408,3410] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [417,424,408,412,1308,1507,1508,426,434,1348,1483,405,1323,1336,1338,1324,396] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3200,3202,3212,3432,3433,3222,4177,4178,3205,3209,3217,3221,4195,4202,4204,4203,4014,3469,4194,3357,3358,3439,3371,3374] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2995,2992,2983,2990,4251,4218,4249,4269,4270,4271,3021,3011,3012,3000] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [71,2688,2691,2693,2682,2671,1783,1789,1797,1798,1801,2640,54,58,59,61,2650,2694,1242] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1196,1130,1170,1416,1437,773,3061,1457] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        