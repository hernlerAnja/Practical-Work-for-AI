
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
        
        load "data/7OY5.pdb", protein
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
 
        load "data/7OY5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [361,363,1279,1281,253,359,1273,1274,1275,721,723,451,432,563,562,728,1166,1164,1165,1176,748,774,1193,1192,252,346,198,202,741,745,800,1152,1134,1136,1280,1282,1295,1296,1298,1299,448,1297,1126,1301,4383,223,225,226,229,231,4382,4407,4381,4363,4364,1303,4370,4373,4374,4375,4543,4562,4358,1153,210,232,233,235,234,228,378,204,1408,1381,1396,1398,1406,1380,4561,4551,4553] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1737,1755,3909,1747,1748,3923,3924,3926,3930,2843,3908,4023,4033,2850,2840,2844,2845,2847,2848,2980,2982,2997,3002,3003,3051,3022,1913,4008,4025,4007,2852,2823,2854,2870,2872,2819,2871,1756,3763,3779,3780,3796,1731,3792,3793,3804,3901,3902,3903,3906,3907,3170,3900,3171,3349,3071,2978,3344,3342,2965,3922,3070,3928,3753,3791,3395,3803,3820,3819,3362,3369,2821,3360,3366,1780,1779,2841,1930,1931,1932,2835,1724] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1424,4365,1455,1456,1457,4366,1389,1392,1765,1494,1739,1492,1385,1484,4354,4360,4361,4082,4083,4084,4121,4119,1738,4012,4016,4019,4111,4391,4392,4051] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3520,3467,3469,3551,3553,3554,3827,3590,3431,3841,3838,3432,3588,3549,3552,3832,3860,3840,3589] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [922,923,925,927,963,1200,1211,1214,1215,1213,810,811,846,848,893,900,901,926] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2880,2882,2797,2991,2649,2650,2878,2989,2879,2881,2883,3321,3252,3253,3234,2774,2972,2973,2772] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [700,626,42,261,177,178,153,155,353,28,29,372,645,644,262,263,264] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2199,2201,2504,2505,1548,1549,1557,1558,1561,2179,2190,1069,2208,1067,1066,1556,1551,1553,1555] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        