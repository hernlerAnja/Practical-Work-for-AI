
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
        
        load "data/7PQS.pdb", protein
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
 
        load "data/7PQS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [837,863,173,864,819,826,174,828,808,342,816,176,802,806,251,177,1295,1328,180,182,228,230,229,179,1526,1527,1530,1531,1533,1225,1242,1525,1241,814,785,788,795,639,791,216,357,359,790,1532,1534,469,638,839,1218,184,185,197,1213,817,829] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4296,4297,4298,2995,3132,3008,3007,3009,3117,3564,3575,4299,3134,3414,3557,3559,3554,4300,4293,3244,3577,3585,3586,3583,3982,3989,4291,4292,4010,4011,3994,2961,2952,2953,2957,2958,2955,2956,4097,3030,2963,2964,2975,2976,3599,3606,3608,3595,3633,3597,3588,3598,4064,3987] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2096,2097,2094,2120,2121,2122,2089,2361,2360,3164,1965,1984,2065,3174,3177,1986,1987,2335,2347,2020,2022,2334,2336,1934,1946,1962,2377,2380,2093,1930,2449,1927,2450,2374,2375,2376,2378,2379,2381,2420,2421,2448,1889] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4859,4883,4884,4882,5137,5123,4827,4858,4731,4712,4728,5140,5142,5139,5183,5143,5138,5097,5109,4851,5118,5226,4655,4700,5182,4855,5215,5216,389,5214,399,4752,4753,4782,4784,4693,4696,5227] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4394,4407,1988,1993,4317,4311,4313,4314,4315,4318,1991,1995,3177,3178,3179,3214,1985,1987,2022,3211,3212,3209,3213,2988,2989,4319,2039,1979,1982,2986,4383,3207,3232,3235,4380,4381,4382,4323,4384] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4757,4759,404,437,439,1549,1641,1548,1547,1628,1614,1615,1616,1617,209,207,411,438,210,403,4748,1553,1545,1551,1552,1557,434,436,457,1618,460,4801,4754] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [199,200,202,211,186,188,3693,3694,3695,3696,3697,3692,4695,3682,3690,3691,4688,208,4736,201,206,222,214,3623,4664,4704,4706,4707,4697,4690] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [27,31,35,38,242,24,8,18,222,169,34,365,370,744,745,363,369,374,3682,3691,3683,3705,3706,3707,3686,724,188,190,202,211,375,378,384,379,203] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3001,2810,2817,3021,2787,2806,3000,2973,2992,2996,2813,3140,3145,3517,3519,2820,3150,3153,3144,3138,2948,913,2803] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2988,4299,4319,4297,4298,2995,3132,3133,2983,2986,3147,2994,3148,4317,4309,4310,4311,3243,4318,3134,3211,3212,3183,3210,3213,3219,3178,2977,2976] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [209,204,207,411,438,409,210,403,1545,1552,437,408,435,436,1532,468,1543,372] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [209,204,207,411,438,409,1553,1545,1551,1552,197,198,216,357,358,359,215,372,373,1531,1533,408,435,436,444,1532,468,1543,1544] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2978,2979,2965,1938,1940,1941,1970,1929,1931,2985,2987,854,855,926,927,928,923,925,1922,1924,1898] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2978,2979,2965,2971,2973,2993,1940,1929,3001,2980,2981,2990,922,923,924,925,921,1922,913,926,927,928] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4397,4398,4399,4505,4512,4990,4989,4991,4985,4986,4987,4988,4811,5023,5009,2249,2030,4404,4408,4402] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        