
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
        
        load "data/3L54.pdb", protein
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
 
        load "data/3L54.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4869,4870,4891,4894,4895,4892,4893,4921,4922,5034,5035,1101,1064,1067,1068,4859,4861,4896,5032,5052,5056,5048,4407,4409,4410,5049,4423,3412,4834,5055,4958,4959,4986,524,4997,1094,522,532,1055,1092,1093,4919,4917,4918,4924,503,3350,451,452,1025,1026,3369,3370,3375,3376,3347,3371,3381,3382,3383,3384,3404,3732,3733,3374,3685,3687,3689,3683,3684,3686,3688,3654,4424,4432,3731,1030,1028,1029,1056,1058,4960,3351,480,482] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4533,4536,5813,5814,5816,5793,5689,5791,5792,4543,4546,4547,4548,5186,5704,5785,5172,5705,5138,5142,4580,5127,4743,4744,4602,5143,5805,5809,4830,5787,5786,4764,4786,4762,5784,5044,5046,5782,5151,5145,5148,5677,5680,5207,5208,5209,5126,4802,5131,5041,5042] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [2608,2599,2604,2610,6365,6398,2605,2606,6387,6268,6389,6388,1594,2235,2237,2238,2239,2598,2845,2614,2620,2626,2631,2630,2597,2600,3190,3192,2866,2869,2870,3188,3189,2670,2671,1602,2868,3178,6243,3149,3150,3191,3201,3203,1585,1599,3184,2632,2842,3153,2834,6362] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [4001,3967,1220,3973,3975,1228,3675,4387,4388,4389,4037,3998,4000,4453,413,1191,1192,414,1229,3641,3643,3645,4429,4430,430,432,922,920,921,3640,3647,3673] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3112,3116,3118,3099,3105,3103,3326,3357,3358,3359,481,482,3109,3110,3393,3395,6216,6217,6218,6194,4935,4926,4927,4928,4929,4930,4931,6196,4967] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [195,2126,188,196,2292,187,2288,185,2296,2295,3845,3846,219,220,177,209,167,2301,173,179,3514,212,3515,2076,2044,2042,2038] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [6759,6723,6725,5232,5259,5271,5276,6758,5225,5291,5293,5222,5281,5282,5277,5664,5199,5200,5235,5665,5679,5681,5672] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [6378,6341,6343,6376,6381,6262,6404,6405,6407,5616,5631,5834,5855,5853,5854,5856,5857,5622,6291,6292,4854] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [450,452,1031,1032,1041,1043,3654,931,4424,4432,4433,4434,912,910,1071,1067,1068,4409,4423,4425] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [2951,2952,2950,2923,2927,2953,2954,2957,2921,2924,3216,3217,2984,2980,2982,3234,2448,3233,3232,1871,1877,1881,1882,2438,2100,2101,2437,2442,1300,2447,1865,1297,3223,3226] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [6304,2259,2260,6325,6326,6311,4794,4807,4810,4811,3784,3813,3466,3795,3794] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4409,4423,4425,5134,5135,5136,4414,5133,5140,4443,5159,5032,4723,4725,4728,4718,4713,4722,1071,4424,912,911,4444,5157] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5677,5678,5679,5681,5688,6749,6752,5814,5815,5816,5817,5818,5793,5689,5791,5792,4547] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5624,5622,6406,6408,5855,5854,5856,5857,6378,6343,6376,6381,6262,6369,6404,6405,6407,5616] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1457,1456,1499,1974,1477,1989,2000,2220,1988,1961,2001,1701] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4442,4443,4709,4679,4683,4687,4691,4704,4713,4722,4645,912,903,909,910,911,4444,897,901,4678] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1935,2265,2268,2269,1934,2264,1570,1918,1571,1917,1554,1591,2277] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5622,5880,5601,5603,6406,6408,6410,5605,6435,6439,6440,5878,6582,6583] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [5619,5588,5589,5803,5804,5567,5565,5592,5593,4887] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        