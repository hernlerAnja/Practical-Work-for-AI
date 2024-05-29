
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
        
        load "data/7VDS.pdb", protein
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
 
        load "data/7VDS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [401,1164,1062,1158,1162,1163,1165,1157,1050,1057,695,1078,509,1079,669,680,681,682,688,668,1022,1178,1181,1186,1187,119,259,261,402,257,642,643,644,122,136,96,97,83,84,134,135,78,81,639,640,641,244,638,82,107,109,111,114,116] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3338,3339,3337,2908,2925,2928,2392,2393,2394,2395,2504,2399,2921,2923,2769,3417,2519,2518,2396,2899,2900,2902,2903,2904,2768,2898,2692,3310,3317,3322,2952,2955,3418,3419,3422,3423,3424,3425,3432,2520] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2379,2382,2520,2521,94,95,2538,2609,2610,2607,3423,3424,3425,3438,3439,3282,3446,3447,3448,2628,2629,3440,2630,73,74,3299,3281,3575] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2870,2871,6675,2642,2670,2812,6712,6715,2829,2831,6676,2612,2615,2616,6682,2558] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2389,2525,92,128,2540,2544,2589,2379,2380,95,280,284,285,287,265,288,2547,2548,283,314,103,349,350,119,120,2530,2527,2528,2529] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2332,2837,2344,2345,2341,2348,2512,2818,2820,2369,2370,2878,2862,2859,2836,2876,2877,321,327,320,322] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [5316,5325,5329,5330,5331,5332,1244,1245,5023,1251,5003,5004,1247,4985,4980,5024,4978,4982,4956,4970,4973,1202] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4018,4392,4404,4405,4372,4022,4068,4070,4014,4015,4223,4069,4406,4441,4398,4410,4411,4031,4034,4035,4030,4065,4066] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1348,1330,1332,1334,1335,1337,3012,2979,1314,1315,1316,1037,711,1054,1055,712,1317,1321,2980,2981,1333] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [5964,5993,5967,6002,6003,6031,6389,6390,6362] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [6558,6172,6177,6148,6161,6170,6517,6522,6532,6524,6523,3505,3507,3511,3512,3513,6216] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [2554,6573,6683,6572,2616,2617,6571,6684,2600] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [6909,6911,6912,6908,6910,6204,6877,6878,3497,3498,6205,6201] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4424,4425,4433,3697,3691,3692,3640,3643,4095,4096,4097,4079,4129] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        