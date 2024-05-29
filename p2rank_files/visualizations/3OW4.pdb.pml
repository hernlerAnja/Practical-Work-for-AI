
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
        
        load "data/3OW4.pdb", protein
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
 
        load "data/3OW4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1228,293,1226,1227,553,552,1219,1220,1221,1222,1225,123,738,739,740,5241,111,2449,5240,2451,1140,715,1141,2413,2414,764,766,2395,2405,2411,2421,2422,714,276,689,170,290,291,292,168,169,309,151,118,119,120,693,110,112,117,705,711,387,388,389,404,406,412,144,145,146,148,441,1241,308,417,1124,1083,1112,1113,1114,1100,5247,5258,5262,5263,5257,756,758,761,794,803,1249,1251,5260,5261] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3717,3343,3345,3341,3342,3344,3358,3365,3366,3369,3371,3729,3830,3831,3833,3826,3718,3824,2775,3745,3746,2773,2774,2719,5018,5016,5010,5000,3157,3298,3825,2881,3316,3320,2898,3047,3823,2896,3294,2721,2722,5321,5027,2715,2716,5020,5025,2723,2728,2724,5054,5026,5317,5319,5320,3359,3360,3361,3362,3363,3364,3398,3399,3408] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2752,2756,2758,2749,2914,2750,2754,2990,2992,2993,2994,2956,3705,5327,5338,5343,5342,5340,5341,5344,5345,5346,2898,3823,2895,2896,2775,3688,3729,3830,3831,3832,3833,3718,3824,3046,2913,3022,3009,3017,3854,3856,3011,3846] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2233,2209,2190,2082,4317,4318,4320,2083,4307,2109,4314,2191,519,978,981,951,953,974,975,976,977,955,1011,2110] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1073,1266,1344,1341,5283,1255,1245,1246,1247,1365,401,409,410,411,400,432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4602,4603,4118,4600,4082,3925,4605,4610,4611,4612,3917,4088,4099,4100,4101,4103,4114,4110,4645,4649,4652,4653,3911,3912,3913,3905,4108] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3852,3848,3014,3016,3951,3037,3860,3871,3005,3006,3950,3678,3947,3015,5363,3946] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3581,4715,4814,4714,4794,4795,4796,4802,3558,3560,3579,3582,3580,3583,3586,4838,4836] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1513,1997,2005,2007,2008,1998,1477,2044,1503,1505,1509,1494,1495,1498,1306,1308,1320,1483] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1357,1359,1382,1722,1724,1762,1760,1734,5273,5274,5269,5271,5270,5288] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        