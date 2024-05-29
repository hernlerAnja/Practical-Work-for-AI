
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
        
        load "data/2E2B.pdb", protein
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
 
        load "data/2E2B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [704,256,257,366,374,378,705,476,689,380,500,501,206,230,231,232,234,202,203,204,205,1251,1233,1236,1245,1248,1250,1242,1244,225,233,236,729,1156,1157,1158,575,723,726,709,743,753,754,757,725] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2394,2395,2396,2905,2907,2909,2913,2397,2398,2921,2423,2417,2426,2428,2938,2941,3341,2928,2948,2910,2558,2888,2893,2915,2889,2448,2449,2566,2873,2570,2556,2557,3435,3340,3342,3432,3434,2759,2760,3421,3429,2660,3420,3426,3428,2572,2684,2685] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [473,1064,1065,1067,491,492,493,1230,1231,1233,1236,1237,1238,1240,1239,474,499,500,501,469,476,1024,1086,569,575,527,1080,1073,1074,1082,1084] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2657,2683,2685,2711,2753,2676,2675,2677,3413,3414,3417,2759,3408,3421,2660,3420,3258,3266,3264,3270,3207,3208,3248,3251,3422,3424] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1872,1874,1885,891,1909,1910,920,1884,1624,1621,1622,1625,1585,1589,912,888,890,910,908,909,914,915,946,918,921,1619,1617] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3786,3093,3784,3094,3096,3092,3074,3098,3072,3075,3787,3790,3750,4037,4039,4049,4050,4074,3130,3754,3104,4075,3099,3102] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3053,3054,2979,2981,2983,3055,3378,2928,3006,3007,3013,3014,3017,3062,2932,2934,2935,2933] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3845,4142,4144,3985,3709,4143,4145,3990] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1680,1544,1774,1820,1825,1980,1982,1977,1541,1978,1979,1981,1678,1382] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        