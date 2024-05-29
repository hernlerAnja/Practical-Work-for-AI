
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
        
        load "data/3S2A.pdb", protein
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
 
        load "data/3S2A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4893,4915,4916,3386,3388,4917,4918,4919,5055,5057,5058,5039,1033,1035,1031,3374,3375,3378,467,468,990,4882,4884,4894,3736,4859,5078,4432,4433,5072,5075,4447,3737,3658,3692,3693,3688,3689,3690,3691,4860,4941,4947,4948,4951,4942,4944,4945,4946,4983,5015,1057,1058,1059,1019,5021,548,1066,1028,540,5009,992,993,994,482,989,1020,1022,1027,3387,3355,496,4982] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5065,5067,5149,5805,5808,4766,5150,5154,4558,4767,5161,5164,5168,5166,4623,4625,5165,5809,4853,5810,5813,5814,5815,5816,4787,4825,5840,4587,4785,4580,4586,4557,4603,4588,5064,5066,5069,5807,5727,5172,5174,5728,5171,5195,4573,4569,4570,4571,5232,5711,5210,5700] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3195,3196,2614,6372,3194,3205,3207,3192,3193,2204,2205,2206,2207,2208,2209,3182,6310,6253,6277,6278,6400,6309,6408,2603,2608,2610,2618,2604,3157,2874,2838,2846,2636,2870,2873] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [210,212,225,211,2258,2262,201,203,2266,2271,1994,204,2084,3849,235,236,3519,3848,3850,183,193,1996,2260,228,2002,2000,2021,2259] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3979,4412,3970,4004,4005,4410,4411,885,3649,3971,1185,904,906,429,430,1156,1157,3645,3647,446,4454,447,448,883,884,4452,4453,886,3643,3644,3650,3651] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3397,3399,497,3361,3362,3363,496,3107,3330,3114,3116,3120,3122,3103,4990,4928,4958,4950,4952,4951,6229,6205,6203] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2984,2986,2445,3221,2988,3238,2954,2955,2927,1829,2058,2428,2432,2437,3222,1823,1827,3229,1817,1820,1811,1276,1279,2427] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [6687,6716,6732,6734,5223,5257,5222,5255,5696,5286,5294,5299,6730,6731,6736,6694,5317,5315,5683,5702,5704] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5639,6270,6272,6301,6302,5645,5647,5844,6415,6417,6414,6389,6390,6391,6388,4877,5845,5654,6329,6344,6327,6345,6343,6294] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3470,6314,4817,6321,6336,4834,2229,6330,6335,2216,2228,2230,3788,3795,3798,3817,3808,3799,6313,6320] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1033,1035,1036,1007,1031,1032,1034,468,990,893,995,892,1005,999,895,876,4448,4447,988,989] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2234,2235,2239,2237,1517,1880,1940,1864,1486,1900,1881,1986,1515,1516,1535,1556,1539,1540,2247,2198,2194,2196] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [5035,5520,5523,5524,5527,5519,5556,5496,5525,5516,5558,5518,5018,5019,1056,5021,1054,534,580,581] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1036,1078,1079,1080,1006,1007,1084,1105,1102,862,1101,875,876,861,1076] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [513,959,962,1049,589,756,757,623,957,545,586] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3204,2861,3192,2905,2908,2906,2903,1526,3208,1524] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        