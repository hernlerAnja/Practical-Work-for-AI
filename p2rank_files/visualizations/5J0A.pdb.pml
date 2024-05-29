
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
        
        load "data/5J0A.pdb", protein
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
 
        load "data/5J0A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [631,3032,3012,3013,3014,723,438,440,629,630,648,649,3106,3110,2812,428,733,736,741,2821,2823,3031,727,737,3124,3128,3116,3120] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2377,2029,2030,2031,2371,2383,2010,2019,2566,2564,2561,2562,2572,2395,2563,2394,2396,1759,1980,1981,1983,1950,1952,1982,1780,1781,1782,1783,1953,1931,1765,2005,2004,2006,1984,1987] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [799,800,807,831,832,833,829,2729,1750,1748,1490,2656,823,1732,2655,1739,1738,2644,2654,2694,1704,2692,2690,2693,2725,2717,2741,2744,2726] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [358,359,361,3183,3190,3215,3212,270,272,3213,3216,3214,3179,3182,3207,307,261,4131,4133,310,311,3873,4088,345,4122,4123,342,344,334,309] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4388,4393,4402,181,4166,4164,4412,4413,4414,4163,4170,189,209,210,12,4165,4336,4314,4148,4335,4370] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3547,3676,3527,3528,3529,3530,3672,3520,3521,371,374,3512,3684,3685,3838,3835,3675] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [325,326,327,4280,4305,298,4320,4321,4344,4359,4322,3854,4347,4346,336,338] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2709,2712,1896,1897,1898,2708,2719,1470,1963,1922,2721,1961,1974,1976,2681,1939] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1292,1293,1144,1147,1138,1139,1452,2754,1289,1301,1302,1129] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4436,4437,4438,4468,33,4508,49,58,4531,35,39] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        