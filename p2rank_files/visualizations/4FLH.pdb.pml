
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
        
        load "data/4FLH.pdb", protein
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
 
        load "data/4FLH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3716,3718,3719,4458,4468,4471,4472,4473,4474,4943,4944,1081,1079,922,1051,1053,1082,3442,3761,3763,4920,4919,4887,4941,3713,3714,3715,3717,3684,3404,3683,3401,461,3400,3434,941,460,462,939,5112,5114,3413,3414,1040,1038,5005,5009,5008,1039,1073,1074,1077,1078,1035,1042,1064,1065,1066,1068,542,3412,4973,4974,4977,1036,1041,3377,3380,4942,5083,5084,4968,4971,4972,1105,5098,5101,5081,4881,4884,4945,4885,5104,4966,4967,5035,1101,1103,1104,5047,533,534] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4879,5836,4877,5840,5841,5093,5095,5831,5833,5835,5839,5194,5200,5197,5192,4878,4792,4793,4649,4651,4628,4629,4813,4811,4812,4851,5106,5174,5175,5176,5090,5091,5180,5730,4585,4589,4595,4583,5842,4596,5236,5753,5754,5221,5737,5834,5726] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [6307,6430,6427,2634,2636,2640,6402,6404,2650,6400,6436,6439,2245,2247,2248,3220,3222,1576,1575,3221,3214,6340,3208,2629,6283,2630] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4436,4437,931,4438,4031,4030,3997,1229,1231,3675,4005,1239,438,440,3673,423,439,441,442,1240,424,4477,4482,4483,4479,4478,928,950,952,1202,929,930,932,3677,3670,3669,3671,3676,4480] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3012,3014,3264,3010,2463,2464,2471,2472,2475,3248,3247,2981,2980,2982,1318,1315,1319,2951,2953,2955,2957,1865,1866,1868,2097,1862,1850,1856,2453,2454,2458,3252,3255,2984,2987] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3129,489,490,3133,3142,3146,3148,3356,3388,3387,3389,491,492,4976,5016,3423,3425,4984,3409,3410,4978,3411,4977,6259,6233,6235] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [230,183,187,206,2301,177,3875,2297,2305,195,197,205,198,2035,2298,2041,2039,2060,2067,2073,222,3545,2299] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [5680,5846,5870,5871,6419,6382,4901,4903,6324,6358,6359,6332,6331,5665,5671,6300,6302,6418,6444,6445,5673] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2255,6343,6365,6366,2269,6351,4860,4843,3814,6344,2268,3496,3821,3824,3825,3843,3845,3834] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1919,2276,2277,2278,1979,1525,1595,2286,1555,1579,2274,1903,2273,1556,1537,1538,1539,1902,1920] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [5249,5713,5714,5248,5283,5721,5341,5343,6762,6764,5281,5315,6798,6799,5728,5729,5730] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2873,2875,2898,2899,2900,2662,2629,6283,2630,2864,3183,3231,3233,3219,3220,3222,3218,3221,1588,3208,2644] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        