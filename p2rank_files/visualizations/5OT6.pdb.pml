
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
        
        load "data/5OT6.pdb", protein
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
 
        load "data/5OT6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1341,1358,962,1339,1340,1351,1314,1315,983,984,985,987,1312,1316,1135,1849,1872,1134,1878,1879,1165,1853,1847,1850,1050,1013,1015,1880,967,1121,1090,1093] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3803,4659,4660,4661,3915,3874,3764,3765,3766,3767,3763,3796,3797,3831,3869,3873,3798,3801,3905,4139,3902,3744,3748,4097,4706,4707,4708,4630,4095,4120,4093,4096,4634,3946,3916] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3225,3226,4106,4107,4108,4131,4130,3224,3160,3161,3166,3167,3169,3163,4228,4102,4231,3725,3737,3741,3164,3697,3329,3330,3699,3564,3566,3565,3721,3210,4232,4233,4236,4237,4239,3171,3172,3180,3181,3344,3345,3346,3701,3700,3702] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1449,1450,1447,1451,1321,1325,1327,1455,1458,1324,1326,1310,784,918,920,921,563,421,419,1294,1483,564,565,548,444,429,443,445,384,385,386,388,399,400,427,403,412,407,1348,1349,1350,963,962,961,380,382,378,379] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [791,792,3037,3038,3056,3058,3034,747,748,3032,741,742,743,744,739,3655,738,3061,3617,3401,3402,3403,3618,3400,3650,3651,3671,3376,3429,3437,3438,3396,3399,3426,3428,3398,3435] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3197,3210,3198,3199,3200,3202,3384,4238,4255,4256,4263,4239,4258,4257,4265,3419,3421,3184,3189,3190,3201,3203,4264,4075,4091,3346,3362,3457,3427,3416,3417] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1203,1236,1237,3592,3593,3064,3065,3068,3071,3072,760,761,1208,1210,3044,3594,3100,3099] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3099,3089,80,3098,3100,2672,2671,1202,1203,82,1236,1237,3075,3072] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4551,2835,2839,4009,2852,5441,5436,5439,4559,4560,4545,4563,5430] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2988,3009,4332,2971,2983,2999,3000,2978,4284,4310,4312,4278,4331] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [190,197,199,1503,1529,1531,1551,1550,1498,216,228,218,219,1497] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        