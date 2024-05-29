
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
        
        load "data/7N93.pdb", protein
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
 
        load "data/7N93.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1110,1238,1239,1242,1243,1207,1234,1235,2290,2292,2293,1111,686,709,710,681,1198,1199,1208,1197,1206,287,1227,2298,2299,91,1245,2323,2325,1246,1244,2294,2300,759,732,733,734,731,1082,1094,92,146,147,148,97,134,102,109,132,270,286,302] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2668,2679,2681,2631,2632,2627,2680,2624,2625,3231,3259,3264,3265,3267,3651,3652,4789,4791,4792,3759,3767,2664,2665,2666,2667,2835,3623,3739,3740,4793,4797,2630,4822,4824,3292,3266,3293,4776,4783,2633,2634,2642,3086,3243,3732,3730,3731,3214,3219,3242,3237,2803,2974,2818,2820,2817,2819,3729,3765,3766] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3628,3627,3806,3282,3284,3286,3306,4018,4019,4046,3808,4057,4058,3307,3308,3344,3618,3779,3797] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1272,1549,774,777,749,751,778,784,787,1511,1078,1298,1300,1077,1510,1538,1550,811,753,1087,1086] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1223,1231,408,410,411,1205,1232,1236,1237,1027,1051,1044,1040,1042,1204,1071,1054,1260,1261,1070,1094,1095,1308] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [194,583,585,587,588,44,33,582,2475,1,593,601,603,2490,195,208,43] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3414,3416,4550,4558,4564,4565,4569,4551,3421,4651,4652,4656,3419,4611,3413,3387,3389] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [695,1132,1133,1135,1136,1137,687,692,690,717,2238,250,2243,245,246,2232,2236,4620,2239,2240,2241,2242,2216,2218,1134,4595,4591,4593,4594,4589,4590,4625,4618] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3091,3094,3055,4634,3717,3668,3716,3676,3678,3224,3222,3223] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3091,3092,3093,3094,3098,3110,3224,3220,3222,4990,4977,4989,3041,3042,3043] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [561,690,1135,1137,1127,2135,1185] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [993,1954,955,956,957,991,992,994,1947,936,1956,1982,1950,1955,1934,1941,1946,1983] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        