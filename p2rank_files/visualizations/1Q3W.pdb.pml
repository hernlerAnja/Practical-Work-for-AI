
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
        
        load "data/1Q3W.pdb", protein
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
 
        load "data/1Q3W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3928,3931,3939,3927,4042,4045,2988,2989,2990,2935,2937,2939,3086,3494,3496,3899,3916,3527,4066,4044,3103,3101,3102,3476,2941,2944,2961,2953,2956,2966,2946,2952,2976,1773,1782,1791,1792,2967,3956,4036,4037,3955,3481,3498,3309,3310,3477,3508,3501] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1158,1160,1306,1200,1327,371,1305,1319,1320,259,1176,1177,1189,1192,1188,1438,230,4530,4531,235,236,237,238,239,240,241,225,221,222,223,224,4511,4512,4521,4522,4505] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [257,258,259,370,204,210,208,355,737,1216,1217,742,753,579,735,755,1306,1200,1298,1299,1303,1297,372,471,1300,578,1189,787,788,813,1188,814,769,762,213,221,222] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1451,1441,4502,4508,1491,1492,1493,1414,1415,1418,1419,1422,4513,1454,1800,1801,1775,1531,1520,1528,1417,4161,4158,4230,4231,4232,4154,4267,4259,4156,1769,1770,1774,4193,4539,4540,4514,1763] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [379,661,715,362,161,641,28,29,159,660,42,270,265,266,268,182,184,269,183,381] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [861,862,917,924,948,949,950,951,824,825,846,860,847,848,849,850,851,1239,987,1229,1235,1238,1237] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3110,3112,3392,3391,2996,2997,2998,3000,3001,2890,2892,3093,3094,2759,2760,2773,3372,3374,3454,2915,2914] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1982,2969,2971,2970,2972,2968,2000,2001,2965,3117,3123,3137,3176,3180,3135,3182,3194,3198,3183,3187,3201,4060,3118] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4721,4548,4282,4580,4280,4715,4719,4278,4621,4622,4666,4665,4971,4578,4615,4710,1428,1410] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [387,392,4731,238,240,241,234,4713,470,456,451,463,467,1321,4732] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3974,3977,3968,3976,3563,3656,3599,3601,3688,3689,3690,3600,3663,3963,3564,3725,3726,3996] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1982,2971,2970,2972,2001,4149,4150,4165,1784,1783,4065,4066,3889,4062,4064,4175,4060,1992,1994] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1585,1597,2289,2292,2294,1584,2283,2272,1093,1593,1587,1591,1592,1091,1090,2301,2601,2602] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1876,1927,1926,1541,1543,1539,1990,1883,1880,1984,1979] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4522,4523,1426,4712,4713,4714,241,1411,1436,1326,1150,1327,1323,1321,4721,4723,4724] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        