
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
        
        load "data/6GLA.pdb", protein
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
 
        load "data/6GLA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [329,330,331,468,469,1238,1250,144,151,176,177,152,155,163,174,175,165,167,348,1137,1132,1230,1138,1231,1234,1235,1237,1236,145,429,1260,170,172,426,1251,1252,396,397,398,394,1101,1258,1259,1401,1383,1123,1154,188,189,190,184,132,133,1153,1229,715,139,140,142,138,179,180,178,716,741,760,136,134,137,315,1126,768,767,763] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2494,2495,2634,3012,3013,2620,2493,2441,2449,2450,2482,2489,2443,2444,2445,2447,2437,2439,2442,2481,2483,2484,2485,3533,3528,3535,3547,3548,3549,3539,3555,3557,2456,2457,2460,2635,2636,2774,2729,2735,2736,2773,2653,2701,2699,2480,2470,2479,2472,2702,2703,2468,2475,2731,2734,2477,3434,3534,3423,3424,3532,3429,3435,3531,3527,3398,3556,3680,3698,3064,3065,3420,2438,3450,3526,3451,3060,3038,3057] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4260,3881,4391,4392,4393,4394,4396,3735,3882,3708,3710,4033,3711,3713,4063,4177,4211,4210,3884,4245,4254,4259,4395,4397,4244,4261,4094,4093,4237,4200,4202] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1976,1977,1978,2109,2111,2112,2113,2114,1585,1587,2110,2108,1736,1416,1766,1894,1917,1919,1928,1954,1927,1961,1962,1971,1797,1796,1411,1414,1895,1413,1438,1584] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2006,2332,2001,2007,2012,2013,2016,2017,2023,2782,2922,2816,2899,2921,2781,2979,2978,2323,2747,2750,2751,2789,2790,2791,2749,2008] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2004,1998,1989,1983,2960,1785,2714,2955,2957,2961,2962,2966,2971,2003,1999,2708,2711,2712,2710,2751,2752,2754,2972,2976,2979,1643,1724,1759,1725,1726,1984,1758] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1125,1432,1653,1127,1128,1433,784,785,1731,1728,1732,1739,1740,1744,1745,1695,1711,1693,1696] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3081,3082,4004,4025,4028,4029,3730,4042,3992,4008,3950,3727,3080,3990,3729,4036,3993,4037,4041,3725,3728,3422,3423,3425] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2182,2186,2177,2180,2193,2198,1531,1532,1540,1575,2189,1547,1553,1003,997,1005,1032,1535,1033,1035,1533,1537] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3829,3828,3830,3837,3329,3330,3832,3834,3844,3850,4472,3294,3300,3302,3332,4469,4476,4481,4463,3872,4465,4460] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2003,2005,2935,2955,2966,2971,2944,2004,2972,853,1676,2009,1665,1674,1726] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [476,477,486,509,511,681,624,27,625,18,594] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        