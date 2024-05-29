
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
        
        load "data/2X1W.pdb", protein
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
 
        load "data/2X1W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3975,4162,4163,4165,4240,1900,2527,2529,3961,3964,2515,2526,2528,3963,2525,3966,2561,2562,1881,2520,2523,2524,2530,3695,2533,2548,2549,2490,2448,2449,2450,2452,2537,2488,2495,4182,4169,1899,4164,4238,2439,1889,1896,1897,1898,2437,2440,2457,2459,2460,1867,1870,1871,1872,1875,1876,1880,1888,1892,1887,2807,2507,2821,3709,4421,3700,3703,3704,2836,2816,4195,4198,4189,4180,4190,4191] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [216,198,208,209,210,211,212,5584,5585,5586,5587,5597,218,219,5610,5591,1134,1135,249,296,1160,1161,1162,1163,5643,5636,5639,5640,5641,5644,320,321,1139,1144,1145,1156,1152,1153,5630,5662,283,284,285,286,274,279,289,317,292,308] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1064,395,401,408,409,413,416,417,1065,1018,1023,1026,1033,1036,1052,1027,1028,419,7164,1001,1004,1003,1005,387,392,962,963,942,390,391,1072,940,385,943,955,1040,952,953,993,960,991,998,1006] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2669,2638,2650,2648,2649,2653,2637,2641,2642,2647,1676,1696,1691,1677,1678,1679,1797,1800,1801,2628,2631,2632,2633,2636,1672,1799,1808,1662,2626,1698,1699,8638,2658,2659,2661,1766,1768,1754,1759,1764,1687,1688,1729,1737,1739,1769,1772,1776,1685,1787,1788] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [4811,4997,5020,5021,5022,5023,5019,875,4792,4793,870,4778,1480,1133,1149,4985,4995,879,1479,1465,1469,1470,1471,1475,1478,8364,878,1461,8362,8363,4810,8343,8344,8348] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6257,6258,6259,6471,6468,6469,6463,6464,6445,6433,6443,3850,6279,6281,6240,6241,731,734,735,3845,3846,3847,3851,4537,4538,4539,717,727,725,726] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [548,549,550,619,773,775,798,837,5133,5110,5131,4546,4549,5109,5043] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5146,5160,5165,5419,5159,5161,5824,566,581,5828,5829,285,287,288,5836] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [6240,6241,6226,731,6467,123,134,126,135,389,735,736,6468,717,725,404,405] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [4223,1895,3123,1890,3967,3121,3122,1910,1891,3532,3503,3955,3697,3100,3531,3101,3108,3701,3702,3706,3707,3096,3098,3117,3118,3109,3949,3951,3950,1912] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [31,6618,6639,32,5988,5989,5990,6641,54,1293,6491,93] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [2376,2976,2977,2966,2972,2372,2375,2364,7793,7775,2646,8001,8002,2630,7760,8004,2975] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [8132,8133,8137,8025,8038,8039,8040,8153,8154,8149,8152,2301,2269,2280,2273,2270,2302,2304,7754,8042] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [8464,1763,1764,8193,2060,2046,2074,2075,8202,1787,1788,8188,2648,2653,2642,2658] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2205,2211,2215,2197,1615,2216,1611,3309,3310,3539,1603,3295,1869] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8782,8350,8351,8788,4834,4837,4854,4886,4829,5000,5001,4815,4824] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1508,3654,3655,3635,3574,3573,3575,1540,1541,1543,3560,3289,3577,3650,3639,1509,1512] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4311,4312,6268,6249,6206,6524,6525,6510,6205] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        