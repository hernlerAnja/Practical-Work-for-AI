
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
        
        load "data/4K0V.pdb", protein
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
 
        load "data/4K0V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2621,2622,3244,2623,2619,2676,2677,2687,2690,2691,2693,2697,2698,2700,2675,3119,3223,2589,2597,3224,3226,2695,2696,3227,3228,2596] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [176,179,180,183,189,190,191,192,193,175,174,177,459,194,195,1906,1909,1905,1,2,3201,18,3197,3199,3200,225,229,230,211,216,172,222,3,4,6,7,10,654,14,16,22,650,3102,3103,3104,200,186,2833,2826,2827,2829,2840,2849,2842,3127,232] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4399,4400,4401,4402,4798,4799,5705,5706,5707,5723,4305,4328,4423,5693,4403,4591,4288,4289,4290,4291,4869,4870,4868,4800,4801] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1710,2792,3150,3151,1709,1885,3154,1,3201,1883,1884,3139,3185,3138,13,2814,2870,2813,2785,2828,1713,1711] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4384,4680,5715,4679,5042,4944,4946,4774,4630,5377,5376] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1032,1370,1066,5548,5547,1128,5577,1129,1035,5406,5412,5600,5334,5335] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1102,1066,5548,1366,1368,1370,5327,1064,1348,5323,5321,5324,5325,5547] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1700,1674,1675,1676,2036,2053,2039,1725,1726,9,703,705,2037,13,699,702,696,1709,1885,1717,1716,1720,1721,1728,1884,1699] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2402,2438,1814,1817,1821,2383,2386,2397,2396,2524,1816,1820,2377,2401,2400,2423,1641,1802,1640,2373,2435,2443,2445,2446,2447,2448,2450] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2099,2096,2366,2363,2368,1749,1858,1831,2092,2112,1866,1851,1857,1845,1846,1935,1973] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3597,3598,3644,3822,3767,3768,3842,3743,3744,3756,3585,3592,3820,3573,3574,3575,3576,3577,3578,3579,3580,3581,3642,3643,3583,3584] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [495,497,424,426,439,151,152,153,52,67,53,1997,1998,137,510,124,138,1922,448,449,1936,1941,440,1996,1931] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2057,857,874,2073,844,2257,2064,2080,2081,2243,1649,2235,2234,2233,2259,869,872,873] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1086,1060,1061,1062,1063,1348,318,1334,1394,1388,1390,1391,317,323] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        