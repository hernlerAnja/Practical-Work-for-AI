
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
        
        load "data/5L04.pdb", protein
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
 
        load "data/5L04.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [221,2732,2733,2734,3022,3300,3301,189,196,2756,2758,3056,3069,3055,3254,3255,3256,3276,3277,2792,3299,3384,3376,3381,316,317,318,3059,212,213,186,187,183,220,291,292,3015,3016,3018,3047,3021,3023,3086,3017,2822,3028,2570,2602,2604,2740,2742,320,323,2731,190,451,452,455,456,457,2717,2727,2718,2541,2543,2568,2738,2728,2754,2766,2767,2755,2757,2643,338,322,350,437,633,634,2638,2639,2641,2647,2649,2813,2814,3676,2823,298,324,326,3673,3674,3677] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1887,1873,1874,1862,1875,1876,1880,406,407,409,1867,1869,1005,1008,999,615,616,1890,1888,426,428,1889,2521,965,1871,932,601,602,368,369,1003,1000,1001,608,431,367,639,641,906,1886,1854,1894,1908,1909] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2853,2833,2852,3913,3914,3918,2838,2843,3941,3938,3886,3887,3888,3896,3909,299,300,2820,3035,3036,286,3034,3043,3903,3891,3892,3890,820,822,803,810,821,2837,2836,3666,3669] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [705,707,3852,3803,3809,3812,3832,3840,3844,3826,3827,3828,3849,3846,3845,704,3854,1797,1794,3780,1793,1763,1766,1768,1769,1770,1801,3778,3779,706,1759,1760,1762,1795,1734,1735,1736,3815] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [920,922,941,72,71,923,50,67,980,1345,1350,1359,1361,1363,943,944,945,915,917,66,1197,1224,1227,1229,1231,887,1221,1219,1253] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1206,1204,1205,1301,1304,1567,1577,1307,1315,1316,1208,1603,1639,1640,1239,1305,1291,1602,1604,1612,1613,1302,1292,1295] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2788,2794,3588,3602,3604,2789,3584,3418,3419,3453,2998,2791,3391,3395,3397,3454] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1887,406,426,428,1889,419,2521,1888,367,1886,1894,1908,1909,1906,2502] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        