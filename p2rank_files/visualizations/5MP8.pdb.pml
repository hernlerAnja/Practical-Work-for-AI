
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
        
        load "data/5MP8.pdb", protein
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
 
        load "data/5MP8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1335,1352,1115,1044,1333,1006,1009,1872,1873,1874,1087,981,1010,977,974,978,979,957,1128,1129,1084,1306,1309,1334,1308,1847,1159] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [438,542,910,914,915,437,439,912,373,378,379,380,559,423,557,558,394,1342,1444,1315,1344,1328,1449,1450,1452,777,779,1443,778,913,1441,1445,1446,1316,1451,1343,954,941,935,938,939,374,376,543,377] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4622,4623,4626,4651,4652,4645,3908,3907,3756,3758,4085,3760,4088,4089,3753,3785,3823,4653,3861,3866,4131,3894,3740,3788,4087,4112,4114,3938,3752] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4122,3173,3202,4225,4228,4223,4107,4229,4231,4121,4123,3161,3172,3158,3159,3151,3152,3153,3557,3689,4220,4222,3556,3558,3718,3720,3717,3155,3216,3217,3321,3322,3218,3334,3336,3337,3338,3694,4224,3691,3692,3693] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3394,3395,736,737,3050,3053,3610,3642,3643,3647,738,3427,3428,3429,3030,785,786,735,742,743,744,3029,3024,3026,3421,3388,3392,3393,3368,3369,3390,3662,3663,3420] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2692,1194,1196,1197,2664,2665,2666,2668,1230,1231,74,76,754,1202,1171,1169,3584,3586,3259,3585,3063,3089,3092,3274,755,1204,3056,3057,3060,3091,3064,3036,3577] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [559,670,422,423,558,575,397,401,406,633,634,403,410,413,409,1451,1468,1469,1288,1476,1477,1478,1452] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3180,3181,3185,3182,3183,3184,3176,3202,3189,3192,3194,3413,4248,4255,4256,4230,4067,4231,3188,3187,3351,3354,3449,4247,3337,3338,3376,3419] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [65,1799,2643,2655,2649,2632,2654,1776,75,48,53,54,1758,2609,1196,2659,1764,1772,1773,1222] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3185,3173,3176,3202,4225,4228,4230,4223,4107,4229,4231,4082,4083,3161,3172,3159,3218,3337,3338] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4543,4537,4551,4555,4001,4578,2827,2831,2844,5428,5431,5433] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1491,1523,1525,1545,1544,212,213,1492,222,196,201,184,219,191,193] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [762,3041,1150,1393,1406,1110,1176,3039,3040] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        