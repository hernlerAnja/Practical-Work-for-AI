
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
        
        load "data/7UJP.pdb", protein
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
 
        load "data/7UJP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3198,3309,3310,3311,3308,3175,3158,2254,2256,2257,2263,2264,4330,4331,2251,2244,2245,2246,2248,2249,2301,2302,2815,2816,3214,3215,3303,2404,2812,4329,4444,4450,4453,4455,2417,2418,3312,2559,2560,2416,2790,2791,2792,2793,2794,2795,3304,3318,2660,2658,2287,2288,2432,2799,3307,3324,3325,3326,3333,4472,4473,4475,2279,2281,2267,2271,2280,2282,1655,2528,2524,2525,2521,2523,2491,2493,2496,1654,1656,2484,2486,126,2841,3187,125,4426,4434,3188,4448,4446,127,2831,2834,2839,105,2867,102,103,104,106,2830,2822,98,4305,4297,4299] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [117,119,121,122,128,129,4447,4449,153,167,130,132,133,136,4423,282,283,284,298,143,146,398,393,110,116,165,166,111,4332,4335,4350,4354,4355,4357,4419,3770,391,387,390,145,147,362,385,392,359,363,4363,3789,2260,4328,4323,1064,1051,1052,1075,1180,1181,1183,1182,428,1176,1177,1196,427,1035,4336,4337,1198,1204,1206,1065,4316,1091,1092,1175,533,666,667,668,670,671,672,669,113,114,692,270,689,676,716,718,1063,2261,707,708] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2273,736,738,2270,742,769,2211,775,2439,2442,2743,2745,2294,745,747,4310,746,2309,2286,2274,2275,2283,2284,2285,2422,2295,2425,2426] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [755,817,818,1100,873,1152,784,1133,1134,1140,1125,898,899,865,843,844,846] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2940,2966,2993,3223,2878,2907,2941,2988,2992,2967,3222,3247,3253,3265,3261,3262,3268,3269,2996] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [117,119,122,129,4448,4449,110,116,2259,2260,4328,4330,4337,2261] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2019,2020,2021,1252,2010,1999,2016,1464,1465,1455,1466,1457,1459,1977,1271,1489,2022,944,2031,977,968,966] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2211,2767,2743,2745,2746,2309,746,2295,2425,2426,2766] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4156,4146,4152,4155,4157,3067,4158,4163,4167,3091,3622,4162,3593,3594,3598,3599,3089,3588,3590,3592,3384,3100] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3806,3843,3840,3446,3448,3845,4463,4373,4375,3444,4481,3442,3443,3447,3551,3552,3528] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4322,4329,4325,4453,4457,4460,4461,4462,4464,4346,1671,1672,4348,1670,4471,4468,1666,1669,4314,4317,4318,4320,1337,1338,1643,1702] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        