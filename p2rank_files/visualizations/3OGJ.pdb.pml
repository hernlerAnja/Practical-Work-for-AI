
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
        
        load "data/3OGJ.pdb", protein
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
 
        load "data/3OGJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2579,2653,2578,2638,2631,2629,2706,2689,2707,2708,2715,2436,2777,2437,2696,2697,2807,2792,2793,2782,2787,2789,2717,2713,2714,2775] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3677,3682,3685,3703,3194,3704,3433,3693,3773,3768,3692,3705,3785,3788,3789,3574,3634,3627,3778,3783,3709,3712,3648,3649,3803] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3355,3354,3372,3856,2376,2358,2359,2880,2882,2883,2866,2858,2534,3370,3371,3369,3857,3855,1066,1068,1069,2079,1043,2066,2071,3352,3353,3357,3359,1057,1059] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1677,1681,1707,1708,1653,1638,1578,1787,1632,1713,1716,1689,1436,1437,1696,1697,1807,1686,1772,1782,1789,1792,1793,1717,1721,1777] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3355,3354,3372,3856,3854,2376,3878,2358,2359,2361,3530,2373,2374,3370,3369,3857,3855,3066,56,68,2372,2375,3083,2362,2363,2368,67,42,3071,3079,3106,3879,3862,3876,3875] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1374,1375,1376,1373,1860,1862,534,854,356,357,371,375,853,856,859,849,851,852,65,70,3068,3069,875,358,359,876,78,82,2359] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [706,775,780,707,708,786,782,679,682,689,690,674,700,701,669,670,646,800,435,770,785,710,578,631,577,625] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1358,855,1858,1860,854,357,371,375,362,367,853,852,1066,1071,1079,1882,1880,1883,2069,2068,1866,1535,1084,1106,1879] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3920,3917,3919,1425,3921,3016,3021,3901,3032,3927,1491,1387,3037,3038,3039,1508,1510,1365,1367,3061,1366,1351] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2921,386,507,424,2924,2017,2021,366,2038,2060,2061,2039,2032,2348,2898,2905,490,2331] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [917,2491,2425,2367,2386,2387,37,897,924,38,31,20,25,16,60,2510,2508] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1038,1039,3363,3383,1925,1931,3487,1350,1060,3347,1905,3348,3424,3504,3506,3361] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [917,2491,2365,2367,2386,2387,37,897,924,38,60,891,59,330,2508] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        