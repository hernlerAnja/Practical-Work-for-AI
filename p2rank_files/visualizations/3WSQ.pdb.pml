
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
        
        load "data/3WSQ.pdb", protein
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
 
        load "data/3WSQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3196,3197,3198,2918,2920,3128,3129,3130,3131,3181,2653,2898,2900,2482,2475,2478,2479,2470,2403,2409,107,111,3158,3133,3138,3139,3132,3156,3117,6259,6261,3112,6055,6054,6079,6072,6078,6071,2934,2935,2659,2634,2652,2477,2404,87,88,89,95] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2093,2095,2097,2067,2064,2165,3532,3533,3534,3535,210,34,35,36,2164,3546,3545,3547,25,28,30,20,21,22,207,3548,3549,3550,2012,2013,7,3100,2079,2083,2086,2074,2071,3521,3120,3094,3096,3324,3325,3097,3098,3326,3327,3328,3558,3147] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2885,2221,2228,2608,2610,2213,2207,2204,2883,2884,2419,2417,2427,2171,2176,2182,2192,2161,2160,2167,2173,2177,2172,2375,2376,2377,2353,2354,2358,2392,2393,2394] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [6092,6244,2690,2692,2694,2697,2698,2705,2700,2704,2703,2713,6081,2693,2665,2666,6609,6662,6108,6224,6228,6229,6230,6227,6607,6608,4935,2712,4957,6109,6222,6205] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4540,4542,4914,4915,4978,4979,6186,4974,6661,6663,6692,6130,6190,6197,6201,4968,4906,4931] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [436,437,438,446,1708,1702,1714,1715,1718,1722,1713,1760,1778,1780,1794,1699,1678,1686,1687,1691,15,2027,2028,1757,2024,257,258,447,2021] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2665,2666,2667,2669,2503,2668,2738,2485,2472,2488,2522,2502,6092,6082,6244,2690,2697,2698,2699,6243,6245,2705,2706,2700,2704,2703,6081,6242,6281,6253,6257,6083,6260,2481,2474,2479,2480,6093] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6089,6090,6616,3193,2933,3200,3202,2934,2935,2659,6049,6038,6041,6054,6079,3195,3196,3198,2920,5879,6599] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [107,111,3158,3139,115,3156,3159,104] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3266,3268,3830,3836,3269,3829,3835,3853,3831,3841,3848,3852,3885,3886,4083,4084,4062,4068,3851,4072,3904,3905,3906,3887,3884,4067,3910,3814,3846] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3636,3443,3631,3635,3436,3616,3407,3433,3435,3609,3612,3432,3437,3475,3590,3591,3592] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [15,2027,2028,257,258,2018,2020,2022,2023,2012,23,274,2010,2006] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [749,873,829,857,872,874,502,485,582] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        