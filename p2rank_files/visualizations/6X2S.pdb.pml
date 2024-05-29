
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
        
        load "data/6X2S.pdb", protein
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
 
        load "data/6X2S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4039,4040,4076,4041,4492,4493,4009,4010,776,778,813,1078,781,784,4085,785,4073,4087,811,744,745,4457,4461,4774,4455,812,841,1075,779,809,810,819,1066,1067,1069,1070,1073,1079,1080,4525,4826,4827,4828,4796,4797,4798,4483,4484,1039,4074,4075,4522,4524,4523] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [916,917,918,1161,1157,919,84,86,118,119,111,113,114,241,250,120,83,259,240,242,243,258,94,95,98,87,107,112,106,468,263,264,472,220,229,236,239,211,1163,206,207,942,934] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [535,796,797,798,820,3690,818,530,536,538,527,528,537,3261,3668,3257,3260,471,482,486,487,489,511,460,767,768,565,466,794,831,488,3317,3720,3259,3282,3286,3290,3283,3718,3719,3721,3285,755,752,788,787,77,764,765,731,732,733,4050,4048,4049,4115] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [704,696,697,9958,75,76,78,79,9961,77,733,656,9959,9960,9962,471,473,481,489,919,659,82,84,85,86,9939,9933,9954,9937,242,244,477,478,9943,9518,9519,9520,9521,9522,678,679,9536,9967,9968] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3869,3874,3969,3862,3892,3893,3868,3938,3505,3506,3939,3483,3510,3512,3705,3841,3993,3503,3484,3836,3861,3863,3865,3866,3839,3811,3814,3961] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [4118,4124,4121,4125,3745,4114,3746,4115,10662,4111,4131,10714,10743,10742,4150,4151,4153,4154,10718,3360,3741,3752,3753,3754,3755,10696,10698,10697,3317,3720,3314,3716,3742] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5595,5590,5591,1105,1103,5603,5604,5166,5224,5171,5174,1126,1227,1251,1252,1254,1288,1290,1128,1223,1256,1259,1261,1263,1221,1255,1226,1301,1333,1334] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [7956,7962,8000,7966,7999,7487,7733,7736,7458,7488,7525,7527,7726,7728,7732,7737,7738,7425,7730,7396,7400,7403,7759,7727,7461,7957,7960] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2195,1823,2503,1984,2096,2095,2594,2373,2375,2212,2213] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [842,843,844,845,846,3624,4399,3953,3625,3626,3627,3984,3986,4461,4423,4428,4459,4429,4008,4010] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [1115,1119,1130,1109,5624,1134,1135,1137,1189,1190,1199,1000,6010,6009,6011,5613,5652] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [7118,7115,7119,7124,7151,7153,6743,7097,7095,6744,7093,7096,6420,6423,6770,6773,6774,6775,6388,6389,6751,6741,6742,6745,6746,6769,6001,6003,6777,5995] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [9895,10374,10343,9889,9880,9882,9859,9860,10345,10346,10347,9890,9893,10384,10385,9881,9920,10355] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [4150,4153,4154,4172,4173,4175,4176,4177,10743,10742,10718,10721,3791,3358,3360,3750,3792,3794] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [863,864,867,5230,5201,5206,5223,1297,1299,1300,5199,1301,5187,5186,1084,857,858,853,1266,1296,869,5258,5220,5225] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [9795,9753,9377,9397,9398,9364,9380,9381,9805,9806,9402,9762,9764,9400,9759,9751,9752,9758,9734,9732] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [9809,9815,9767,9645,9776,10061,9778] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [1628,1815,1816,204,1162,1603,1943,1160] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        