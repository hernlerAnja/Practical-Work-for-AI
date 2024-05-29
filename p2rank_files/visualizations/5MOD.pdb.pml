
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
        
        load "data/5MOD.pdb", protein
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
 
        load "data/5MOD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3896,3940,3910,3867,4115,4114,4116,4141,4663,3757,3751,3731,3743,3825,3826,3753,3747,4655,4707,3797,3799,4662,4709,4710,4661,3749,4091,4636,4087,4089,4090] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [969,957,1005,1348,970,1041,1869,1109,1111,1114,1119,953,1329,1302,1304,1305,1306,973,975,977,1155,1843,1839,1868] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [538,539,372,1339,1340,368,369,370,373,1338,775,935,934,950,946,553,554,555,1439,1437,1440,1441,1442,1445,1446,1448,909,911,906,908,773,774,910,419,434,433,435] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3312,3682,3207,3208,3209,3547,3548,3549,4230,4232,4234,3680,3684,3685,4233,3149,3150,3152,3155,4096,4130,4132,3144,3143,3329,4238,4241,3327,3328,3154,3163,3193,3325] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [571,666,1464,409,629,630,1467,1472,1474,399,1473,636,402,403,404,405,406,594,397,575,554,555,1447,1448,1324,1284,1299,1300,1611,1312,419,390,393] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [273,280,274,277,3979,3978,3980,3977,307,308,309,5455,803,5453,5454,3955,5481,801,802,794,490,491,475,476,3524,3525,3983,3985,3952,253,257,3523,3953,4011,4012,2846,2844,281] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [267,878,3506,609,610,611,827,638,3512,3505,3555,3556,3513,3514,270,635,637,605,608,607,639,644,646,241,246,243] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4265,4240,4241,3164,3193,4085,3167,3171,3172,4069,4266,4084,4109] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4265,4240,4241,3440,3164,3193,3178,3179,3176,3345,3167,3171,3173,4069,4266,3403,3404,3183,3180,4267] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1218,2645,1795,2639,61,2648,2650,1760,1768,1754,1772,1769,48,44] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4562,4565,4588,5432,5438,2835,5443,5421,4003,4553,4561,4547,2818,5444] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [2961,2963,4314,2954,2982,2971,2992,4312,4334,4333,4279,4281,4280] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3021,3041,3044,3601,3409,3411,3652,3653,3412,3420,3418,3381,3379,3382,3383,3384,3385] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [256,257,258,241,4215,3532,3931,3932,3957,3891,4182,4195] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        