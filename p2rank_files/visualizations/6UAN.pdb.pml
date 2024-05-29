
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
        
        load "data/6UAN.pdb", protein
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
 
        load "data/6UAN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2179,2180,2175,2176,2212,2143,2173,2171,2174,2110,2725,2727,2758,2761,2734,2736,2643,2756,2782,3163,5492,2610,2602,2607,2779,2793,2202,2577,2581] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [4072,4080,4082,4084,6135,4232,4233,4234,4739,4740,4114,6248,6098,6100,6103,6750,6115,6134,4690,4723,4724,4691,4692,6700,6701,6702] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [4673,4674,4109,4753,4754,4757,4247,3847,3765,3715,3716,3763,3764,4278,4672,4254,4267,4274,4225,4224,3860,4245,4229,4758,4759,4760,3745,3743,3712,4643] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [7687,7688,1700,7681,355,354,388,929,931,7671,353,387,1035,986,989,966,999,1000,962,965,1034,1315,1316,1325,1314,1323,958,960,330,351,930,968,924,333,7667,7673,7674] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [5513,3101,5492,2122,2147,2148,2145,5511,5514,5524,5507,2155,2151,2152,3099,3100,3104,3105,3109,3111,2723,2725,2727,2755,2756,2181,2179,2180,3451,5543,3095,3102,3103,3428] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [4469,4480,5851,4714,4723,4724,6276,6277,5855,6701,6702,4092,4083,4084,4085,5848,6252,6248,6750] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [4387,4682,4285,4327,4455,4384,4385,4429,4286,4383] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [5885,6225,6021,6022,5886,6785,5764,5767,5902,5763,5983,5985,5986,5987,5992,5958,5963] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [5587,6239,5884,6222,6223,6224,6022,6775,6763,6771,6047,6048,6127,5588,5585] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [5886,6783,5605,6785,5597,5601,5606,5757,5764,6879,6022,6769,6770,6622,6623,6625,6786,6792,6885] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [4000,4001,4773,3862,3740,4775,4774,3877,3879,3878,3972,4197,3966,3968,3969,3967,3941,3944,3863,4211,3858,4004,4003,4002,3974,3976] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [3852,3854,3868,3683,3871,4189,3853,4203,4185,4186,4179,4180,4181,4153,4157,3667,3663,3668,4218,3654,3650,4158] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [1334,1329,1361,1225,1258,1582,1523,1555,1526,1546,1549,1551,1250,1331,1223,1332,1256,1252,1255] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [476,1400,1445,474,475,473,1056,1058,435,438,439,7660,7661,1022,1057,7636,7645] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [6308,6657,6922,6649,7133,7184,6923,6909,6889,6311,6310,6312,6349,7176,7174,6340,6351] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [4004,4105,4771,4030,4766,4768,4770,4211,4225,3860,4109,4753,4754,4757,4769,4767,4759,4772,4761,4763,4764] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [1041,1042,1043,1128,1008,1010,783,784,758] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [7117,7118,7123,7327,7328,7413,7392,7394,7395,7389,7111,7112,7149,7146,7367,7343,7150,7154] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [6490,6510,6511,3825,6479,6733,6102,6103,6110,6111,4263,3831,4238,4241,3828,4260] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [3457,3487,3488,3456,3083,3367,3364,3086,3084,3414,3437,3439,3413,3388,3462] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [5575,5611,6657,5567,5574,5559,5565,6359,5555,5558,6292,6309,6311,6318] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [3823,3798,3824,7567,3814,3815,3821,6531,7540,7566,7568,7539,7510,7513,7512,3796,3794,3801,3799,6508] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [3038,3058,3116,2690,2695,3093,3108,2715,3112,2698,2716,3059,3095,3096,3091,3092,3094] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [6175,5692,6193,6194,5671,5893,5894,6217,5876,5877,5707] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [6496,7107,7106,7108,6523,7085,6634] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        