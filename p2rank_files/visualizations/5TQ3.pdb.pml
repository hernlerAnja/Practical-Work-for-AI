
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
        
        load "data/5TQ3.pdb", protein
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
 
        load "data/5TQ3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2439,2444,2603,2601,2602,2445,2446,2447,2428,2432,2433,2776,2991,3536,3542,2744,3523,3526,3528,3530,2743,2975,3529,2705,2706,2672,2674,2618,2709,2675,2585,2459,2460,2599,2590,2595,2988,2995,2989,2586,2587,3543,3380,3551,3544,3703,2441,2443,3552,3692,3567,2701,2702,2703,2704,3568,2676,2678,2680,3673,3680,3682,3683,3657,3676,3677,3414,3423,3390,3418,3419,3520,3721,3444,3445,3521,2414,2425,2408,2409,2411,2412,3002,3013,3016,3017,3007,3009,3048,3076,3041] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1229,1088,1231,137,143,1390,1384,1252,1253,1254,405,409,1246,378,380,151,153,155,381,382,384,386,1244,1245,406,408,1116,1230,448,172,315,313,314,126,134,145,156,157,158,159,161,327,447,410,413,127,1380,1381] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [693,1223,1230,297,298,299,694,448,171,172,307,315,311,313,696,700,480,680,707,1141,1142,753,1112,1143,121,721,746,712,714,118,115,116,119,718,722,778,1238,1225,1228,1229,1232,1121,1126] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3168,4596,4598,4592,4591,4594,3169,3171,3164,4323,4324,4294,4301,4302,4305,4306,4308,3160,3163,3179,862,866,1994,2284,2286,877,2280,2279,2282,867,869,1982,858,861,1989,1990,1993,1996,2011,2012] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1685,1690,1644,1725,1733,1740,1739,770,1439,1440,1115,1117,1687] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4244,4080,4398,3922,4256,4079,3733,4399,4400,3891] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3972,1975,1976,1978,3981,3982,3983,3984,3986,4014,4032,4286,4283,4280,4287,1666,1667,1668,1669,1671,4288,4290,1699,1717,1657,1974,1971] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1607,1576,1420,2087,2086,2088,1944,1764,1765,1932] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2169,2172,1539,1540,1541,2160,2163,2165,2176,1327,1542,981,985,1012,1010,975] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3857,3854,3855,3856,3625,3277,3312,3313,3314,4481,4484,4477,4488,4475,3287] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        