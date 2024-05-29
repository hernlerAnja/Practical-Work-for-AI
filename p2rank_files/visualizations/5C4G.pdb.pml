
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
        
        load "data/5C4G.pdb", protein
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
 
        load "data/5C4G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4705,4065,4062,4727,4728,4699,3831,3856,3857,3843,3742,3960,4224,3790,3977,3978,3769,4072,4073,3789,3765,3767,4258,3792,3795,3797,3827,4702,4701,4698,4710,3788,4081,3900,4105,4107,3854,3855,4066] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2995,2553,2554,2571,2490,2994,2484,2488,2498,2533,3011,3429,3430,3907,3908,3884,3986,3891,3394,3416,3423,2474,2458,3399,3405,2785,2573,2572,2794,2771,2818,2819,3284,3285,3286,3388,3385,3985,3072,3074,3987,3988,3983,3991,3993,3373,3389,3374,3029,3045,3009,3010,3387,3391,3396,3403,2980] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [122,123,778,784,785,786,112,114,106,107,109,111,800,1000,780,250,246,261,148,147,232,259,260,264,270,801,1005,1009,1011,234,135,139,140,126,131,133,1354,1359,1360,1362,1356,787,808] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [916,951,743,952,727,729,651,635,636,647,648,670,671,619,940,677,679,520,90,92,637,756,758,507,475,476,704,731] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1487,1513,1768,1769,1782,1785,2377,1758,1765,2638,2652,2359,2376,2624,2372,2375,2378,2633,1793,1816,1819,1786,1787,1790,1510,1511,1512,2340,2354,2321,2323,2357,2358,2361,2363,2640] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1508,1509,1514,1541,3081,1550,1551,1817,1818,1819,1515,1517,1520,3105,3137,3138,3302,3311,3312,2350,3294,2339,2340,2345,3296,3106,3295,3297] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2736,2737,2421,2871,2714,2735,2420,2883,2884,2438,2453,2454,2742,2444,2446,2447,2432,2435,2265,2267] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4007,4010,4016,4017,4018,4019,4020,3073,3993,3994,3029,3027,3028,3061,3065,3063,4047,4048,3064,4467,3033] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3072,3073,3074,3987,3988,3991,3993,3374,3029,3045,3009,3010,3070,3033] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1450,1451,1212,797,1392,1012,798,1211,1422,1423,1415,1424] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3313,2343,3314,2039,2041,3365,3366] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        