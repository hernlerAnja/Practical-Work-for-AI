
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
        
        load "data/3QA0.pdb", protein
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
 
        load "data/3QA0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3789,3190,3191,3774,4267,4269,4262,4263,3255,4268,4132,4261,4258,3727,3728,3729,3730,3731,3732,3726,3193,3360,3359,3755,3758,4160,3594,3596,4260,4161,3768,4133,3199,3202,3197,3196,3201,3254,3256,3240,3374,3375,3376,3488] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [554,1455,1326,949,950,1354,1353,1355,946,1330,967,384,390,448,449,450,385,396,387,388,405,920,921,923,924,925,1456,1462,1452,788,789,790,952,1454,434,568,553,930,1463] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3218,3221,3231,3214,3223,3227,3228,3229,3222,4417,4420,4423,4294,3451,3446,4285,4293,272,273,256,3235,3240,3392,3487,3375,3376,3211,4103,4105,4120,4121,4133,4145,4266,4284,4135,4137,4267,4269,4263,4104,4426,4427,3415,3413,3414] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1480,1479,1487,1488,1460,1463,1478,1297,1298,1299,417,421,422,423,425,645,434,569,570,681,429,586,1461,412,415,416,1315,1328,1329,405,408,640,651,608] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4740,4767,4768,335,818,4769,324,4855,4728,323,4737,505,506,4721,4724,4723,5206,4851,4853,4744,808,809,810,815,514,490,333] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3803,3804,3805,3807,3808,3809,4134,4135,4137,4138,4120,4121,4129,4448,4460,4732,4119,4426,4427,4733,4128,3825,277,291,273,274,280,278,279] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [242,251,174,699,175,176,4812,720,723,731,247,249,178,181,180,186,4435,4436,4780,4794,4788,4791,4792,4795,255,254,4802,4810] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1124,1126,1134,1170,1345,1346,1852,1029,1031,1139,1878,1879,1055,1129,1363] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1952,2044,2080,2400,1944,1945,1917,1918,1938] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3459,3428,3430,3431,3700,3647,3648,3456,3458,3070,3091,3699] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [223,214,195,1536,222,224,226,230,231,232,233,636,207,212,202,204,1502,1503,1555,1556,1534] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3037,3028,3029,3030,4308,3001,4309,4362,4361,3018,3008,3013,3010,4340,4342,3442,3038,3039,3040] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        