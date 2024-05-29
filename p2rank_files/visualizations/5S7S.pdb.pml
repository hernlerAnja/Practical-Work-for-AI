
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
        
        load "data/5S7S.pdb", protein
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
 
        load "data/5S7S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1227,1230,261,1233,1121,1122,1133,134,136,137,113,110,127,131,303,305,725,726,761,304,1094,1325,1326,1110,1111,1345,116,1124,1126,1324,156,157,158,99,721,100,101,102,693,718,104,245,690,684,686,259,638,642,657,1226,510,656,664,257,260,253,1150,1152,1154,509,1225,1340,1332,1341] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3524,3823,3507,3537,3818,3803,3834,3817,3819,3824,3825,2507,2508,2509,2510,2511,2533,2512,2484,2531,3650,2632,2767,3648,3649,2506,2630,3802,3804,2624,2628,3534,3535,3121,3568,3570,3122,3150,3114,3117,2479,3546,3643,3644,3647,3642,2616,3060,2482,2532,3089,3080,3082,3086,3084,2480,2481,2768,2890,3038,3053,3052,2803,2802,3034,3097,3099,2672,2501,2502,3801,2685,2687,2689,2503,3830,3833,3810] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [959,2309,2348,4370,4371,4372,909,910,911,941,939,4369,478,873,879,883,957,958,960,467,469,966,452,912,913,475,485,1198,1199,1200,881,994,3916,968,1010,1012,4396,4397,4400,4434,4435,4367,4404,4405,3917,3902,3896,4360,4362,4393,4394,4395,3915,3903,3904,2374] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [741,743,745,1123,1124,1125,1126,1094,1109,1110,1111,1345,134,136,1117,1650,1346,1860,1368,1369,1370,1785,1847,1850,1853,1854,1855,1868,124,1341,1347,1358,1793,1784,1786,1383,1381] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3497,3496,3492,3493,3814,3815,3818,3858,3862,3891,3892,4024,3848,3821,3765,3766,3995,3997,3682,3931,3932,3915,3864,4361,3812,3914,3889,4363,3943,3799,3784,3916] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1321,1334,1336,1330,1333,1337,1340,1392,1343,1083,1084,1517,1459,1460,1519,1386,1420,1546,1390,1419,1471,1442,1417,1883,1079,1088,1093,1080] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3834,3824,3825,3842,3840,3841,4263,3524,3522,3537,3538,3539,3536,4136,3530,3531,3137,3139,3141,3853,3535,4262,4264,4345,4346] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [982,2308,1525,2297,2301,2302,2307,2291,2294,2295,2296,984,1561,1527,1528,1529,1501,992,995,958,1537,1500,2274,2285,1535,1498,1499] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4739,4742,4743,4744,4745,4750,4754,4757,3401,3403,4013,4015,4016,4733,4003,3977,3978,4722,3388,3389,3390,4005,4006,4007,4039,3392] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [493,511,512,668,672,674,676,666,670,699,1169,1167,698,696,1172,455,457,681,473,1170,471,1171,463] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2892,3066,3070,3072,3064,3068,3062,2878,2891,2851,2859,2861,3587,3092,3585,3094,3095,3077,2865] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [532,239,649,34,57,650,199,201,203,204,205,206,200,202,538] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2932,3022,3024,3025,3026,3027,3028,2450,3029,2929,2930,2437,2434,2430,2433,3046] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4784,4785,3616,3374,2855,2856,2857,3367,4756,3369,3403,3347,3349,2873] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [894,896,829,860,862,1191,1189,772,716,773,1161] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        