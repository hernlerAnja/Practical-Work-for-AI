
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
        
        load "data/7KL1.pdb", protein
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
 
        load "data/7KL1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2258,2261,2265,4318,3312,4488,3163,4489,2250,2257,2282,2284,2285,2290,2283,2296,2295,3309,3310,3313,3314,3315,2399,2662,2661,2804,3337,4502,2266,2274,2275,2276,4312,2493,3328,3329,3339,2519,3330,3331,3332,4509,2518,2410,2411,2412,2413,2555,2556,2409,2796,2798,2800,3317,3323,2799,2281,2427,2428,2794,2795,4506,4505,1640,1646,1648,1652,4309,1631,1634,2514,2520,2521,2513,2515,2484,2470,2494,1653,2251,2245,2246,2248,2238,106,2239,2846,3316,3192,3203,3220,2839,2844,3219,2836,2240,2241,2243,2817,2820,2821,4482,4342,4344,4480,3193,3179,3180,3204,4467,4486,4459,123,124,4460] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [122,126,149,150,279,280,281,4351,129,133,138,4456,143,141,295,364,387,388,394,395,398,296,119,116,117,162,163,164,277,111,4336,4341,4481,4465,4473,4468,4469,4476,110,2252,4347,4348,4353,4358,4396,4354,4364,4368,4369,4370,3474,3475,4498,4500,3810,3775,3776,4448,392,393,4371,4450,3793,367,389,365,4377,3807,3789,3803,3804,3781,3808,1067,1170,1172,1174,1176,4350,1027,1161,1084,1083,113,114,684,1162,1164,1168,1178,1189,1190,1192,1191,1193,1158,1184,429,430,663,664,460,532,267,668,681,658,659,660,661,662,679,531,530,687,1056,1057,1043,1044,1060,4329,711,1055,4323,708,710,2254,2255,700,1200,1198,4319] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [612,305,614,2900,2903,321,615,285,288,636,148,155,156,157,2875,4461,2873,2874,2870,2897,289,20,22,635,77,171,173,302,4433,298,4459,128,132,135,136,4458,137,2864,2898,4437,145] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [728,738,734,2280,2287,2289,2288,2303,2305,2205,4321,2434,2437,761,2747,2748,2750,2751,2268,2269,2277,2278,2417,2430,2420,2421,2772,2267,735] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1112,1115,1119,1120,1123,1126,1091,835,865,866,1092,857,809,1139,747,776,810,837,838] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2251,2245,2248,2252,4482,4341,4343,4344,4481,4480,122,119,116,123,2254,2258,4489] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2020,2013,2014,2015,2016,936,2025,969,958,960,1452,1454,1456,1450,1451,1457,1458,2004,1462,1463,1250,1461] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3284,3286,3002,3001,2993,3027,3228,3273,3266,3270,2974,3267,3268,2945,2946,2971] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3072,3096,4167,4171,4159,3094,3595,3593,3105,3592,3598,3599,4161,3390,3597,3389,3627,3625,4156] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2434,2435,2436,2437,761,4299,4300,4296,759,2268,2267,2270,2449,2451,728,762,738,2264] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        