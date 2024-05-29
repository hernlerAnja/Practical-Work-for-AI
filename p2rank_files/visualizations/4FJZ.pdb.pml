
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
        
        load "data/4FJZ.pdb", protein
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
 
        load "data/4FJZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4855,4856,4992,4854,4879,4882,4883,4994,4995,1067,1069,1042,1043,1045,1046,4831,4852,4853,5009,5012,5015,4367,4369,4370,5025,5008,3362,4794,1068,515,4952,4956,4957,524,1065,1066,4958,516,1029,4887,4888,4877,4878,4884,4885,4916,4959,3603,3604,442,443,444,3320,3318,3319,3325,3326,3324,3321,886,1015,1017,3637,3638,3639,4379,4382,4383,4384,3682,3683,3636,3634,3635,1004,3301,3333,3334,999,1000,1002,1003,474,4920,1030,1041,1028,3330,3332,1032,472,4918,4919] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5087,4703,4704,5102,4554,4560,4562,4723,4724,5732,5733,5734,4720,4721,4540,4539,4521,4550,5728,5731,5725,5006,5727,5723,5103,5105,5111,5108,4493,4494,4495,4480,4481,4496,5147,5618,5645,5726,5132,5646,5629,5002,5004,5086,5091,5098] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2178,2180,2181,6282,6286,6288,2549,2555,2556,6192,6224,6223,2560,6314,2548,2550,2176,2179,2795,2564,2576,3140,3141,3128,3134,3142,6165,6167,3151,2784,3153,2819,2820,2581,2582,2818,3100,3101,3103,2792,6284] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [3589,3591,3925,405,3593,3595,3917,1193,406,1166,1167,1195,1196,4388,4393,893,4349,4389,894,895,3950,4348,896,4411,4413,4390,4391,3590,3951,3941,3916,421,422,423,914,916,424,3600,3601,3597] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [5557,5572,5565,4781,5738,5752,5753,6264,6266,6303,6302,6259,5563,6186,6328,6329,6331,6242,6208,6216,4812,4814,6215] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3060,4927,471,3049,3343,3345,3062,3066,3068,6143,3307,3308,3309,473,3053,3276,4895,6117,6119,4886,4887,4888,4889] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [2232,2234,1955,1961,1966,1968,2230,2231,201,204,187,2056,159,177,179,2238,2243,165,180,168,188,3465,3795,206,211,212,169,1972,1974] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [886,905,884,1015,1017,3604,442,444,4384,4393,4391,998,999,1000,1005] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3167,3168,3184,2932,2934,2930,2392,2397,2399,2901,2388,2873,2903,2904,2386,2387,2395,1785,1788,2900,2871,2875,2878,3172,3175,1791,1797,2030,1795,2028,2385,1794] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6643,6641,6645,6647,6649,5233,5235,5219,6650,5182,6646,6648,5160,5157,5159,5193,5194,5192,5606,5605] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3584,3586,3290,3293,3571,3573,416,417,425,428,430,431,385,386,433,446,449,452,952] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4652,4651,4649,4650,4682,4605,4664,4673,875,4606,4638,4404,885,871,883,884] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2179,2211,1508,1849,1848,2210,2207,1912,1484,1485,1831,1468,1524,1503] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [4771,3734,2201,2202,6249,3745,3744,3416] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5473,5436,5475,5476,5434,5435,5442,5443,5445,4972,5438,5441,5414,5430,5437,4958,1064,557,509,510] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [5758,5759,4525,4524,4496,4507,5630,5629,4724,5732,5734,4521,4523] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1387,1393,1931,1916,1917,1930,2147,1919,1615,1616,2148,2149,2150,1374,1920,1875,1398] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [3144,3154,3160,2849,2851,2854,3150,3164,3138,1517,2816,2820,2807] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        