
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
        
        load "data/5OUU.pdb", protein
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
 
        load "data/5OUU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3748,3781,3887,3900,3931,3901,3854,3858,3859,4649,4651,4653,3778,3816,3890,4078,4080,4081,4619,3746,3749,3752,3788,3790,4699,4105,4124] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1106,1343,1869,1870,1871,1035,995,996,997,998,999,1000,1001,1005,1007,994,1297,1299,1300,1301,1916,1917,1919,1324,1325,1150,1120,1838,1862] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4218,4221,4222,4224,4213,4217,4100,4216,3726,3727,4116,3728,3209,3210,3211,3150,3151,3152,3154,3144,3145,3146,3195,4087,4091,4092,4093,3314,3549,3684,3686,3687,3551,3329,3330,3331,3550,4231,3682,3685] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1295,1443,400,403,412,407,408,419,564,565,581,676,640,1442,646,637,415,414,424,429,416,1459,1279,1467,1468,1469,1606,1310,1312] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3083,3084,3085,1188,2661,2662,2663,1187,3266,3267,1221,80,82,760,3050,3053,1193,1189,1190,1222,3060,3082,3096,3577,3579,3251,3252,3583,3049,3029,3578,3074,3570] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4223,4224,3403,3405,3406,4248,4250,3179,3194,3195,3180,3181,3190,3178,3182,3185,3173,3175,3166,3169,3174,4076,4091,4093,4060,4249,4375,3330,3331,3442,3412,3344,3347] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [748,3022,3041,3043,741,792,742,743,744,3637,3638,3019,3023,3025,791,3017,3386,3387,3388,3603,3655,3656,3635,3636,3046,3383,3413,3420,3385,3422,3384,3362,3411] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [929,1335,548,931,1435,1311,1312,783,785,1434,784,1432,382,444,443,445,379,380,385,564,565,429,1443,399,400,932,1436,1440,973,974,972,383] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4410,4409,4407,4702,4396,4397,4393,4076,4074,4385,4421,4389] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [71,2640,2646,1749,1767,2598,61,2629,2608,54,2651,2652,1213,1755,1763,1764,1790] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2984,4264,2985,4297,4316,4295,4315,4317,2956,2973,2963,2994] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        