
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
        
        load "data/5MOW.pdb", protein
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
 
        load "data/5MOW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1335,388,389,390,453,454,558,392,559,794,793,795,926,1358,1359,1457,1459,1460,1360,1331,928,929,930,931,575,1461,1462,1465,574,1468,455,573,950,393,987,954,969,970,972,951] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4228,4230,3715,3719,3721,4129,3718,3337,3338,3339,4232,3690,3692,3693,3694,3699,3557,3558,3559,3695,3322,3218,3154,3156,3203,3335,3217,3219,3321,3323,4239,4130,3158,3159,3160,3162,3153,4236,4231,4131] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3030,3049,3051,3054,3611,758,751,806,752,753,754,3643,757,801,802,3430,3025,3027,3031,3422,3663,3664,3393,3394,3395,3396,3419,3423,3389,3428,3391,3392,3421] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [650,686,1484,651,652,648,1492,1493,1466,1467,574,1344,1468,1304,1319,1320,439,424,425,591,410,413,417,418,422,429,595,656,426,1332,1333] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3174,3177,4239,3181,3182,3183,3186,3190,3193,4263,4264,4265,4068,4084,4083,4115,3450,4255,4256,3338,3339,4238,3413,3414,3202,3203,3355,3189] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3093,3275,3091,3092,771,1220,3058,3061,3065,1247,1213,2681,2682,2684,770,1218,1214,1215,1246,90,92,3037,3057,3591,3586,3585,3587,3104,3064] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4408,4400,4404,4082,4422,4708,4091,4436,4437,4709,3763,4424,4425,4412,4084,4101,4105] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1238,2671,1780,81,2665,2670,1792,2648,2659,2627,2617,1788,1789,1774,64] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [812,814,815,496,933,936,551,535,519,540] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1513,1560,1541,1539,1507,1508,228,238,212,217,200,207,209] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3578,3579,3260,3283,3102,3315,3299,3697,3700] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        