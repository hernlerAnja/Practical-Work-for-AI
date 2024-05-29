
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
        
        load "data/5EDS.pdb", protein
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
 
        load "data/5EDS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4846,4847,3354,4870,3355,4401,875,4400,1032,1030,3706,3705,3707,3659,3661,3663,4385,5041,4398,4399,4395,3356,3357,3358,4901,4933,4934,4935,4936,988,1026,1027,524,1018,1019,1021,3344,3348,3627,3345,3628,443,444,3662,3658,3660,3375,3378,993,3325,989,991,992,458,472,4871,4872,5008,5024,4867,4868,4897,4898,4899,5010,4810,5112,1065,5025,5028,5031,4892,4895,4896,1056,1058,4893,4894,4900,4968,4973,4972,4974,4962,514,516,4975] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5661,5741,5742,5148,5662,4578,5739,5743,5748,5750,5749,4509,4554,4505,4506,4497,4556,4512,4510,4511,5163,5634,5017,5021,5022,5102,5107,5121,5125,4738,5103,4718,4719,4720,4576,5124,4555,5127] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6240,3149,3152,3158,3163,3164,3165,3166,1533,2645,2573,2605,2606,2816,2574,6183,3127,3162,3176,1537,1540,2808,3177,2843,2844,2840,2842,6207,6208,6239,6330,2196,2197,2199,2200,2201,6303,6304,6305,2584,2579,2580,2594,6339,6302] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4365,4427,3973,3974,3975,4364,3940,1192,3939,3941,3942,1182,1184,3943,3947,3949,3965,3615,3617,405,406,1193,3619,903,905,1155,4405,423,424,882,885,883,884,4406,4407,3614,421] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3073,472,3368,3086,3090,3092,3333,3075,473,3077,3083,3084,3369,4881,6159,6133,6135,3356,4905,4943,4903,4904,3093,4878,4911] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2251,1981,2250,1994,1992,2252,1988,204,188,2076,2253,3488,3489,3821,3825,206,3784,2245,3792,3793,2257,171,177,179,180,187,2254,159,3818,3819,169,211] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2955,2957,2958,3190,2925,2926,2924,2420,2428,1821,1819,1809,1812,2050,2407,2406,2411,1271,2895,2927,2897,1272,1268,1802,1803,1795,3192,3196,3208,2422,3198,3199,2928] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [875,4400,1032,1004,1006,1030,1031,988,3628,892,894,442,444,998,4407,4404,4409,4410,987,989,994,995,1034] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [6232,6201,6202,6347,6318,6344,4828,4830,5573,5754,4797,6258,6282,6280,5588,5768,5769,5579,6345,5581] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4787,6251,6265,6266,2208,6236,4770,2222,2220,2221,3758,3787,3769,3765,3768,6244,3440,2215,2214] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [860,4655,4657,4658,4659,1083,1104,1101,874,1035,1005,1006,1041,1100,4667,1078] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4523,4511,5646,5634,5638,5620,5622,4538,4540,4740,4512,5774,5775,5750,6653] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [6652,6654,5176,5210,5175,5208,5209,5629,5630,6665,6664,6666,5250,5251,5635,5636,5638] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [489,565,1048,961,732,733] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1513,1516,2875,1537,1540,1518,2876,2878,3162,3168,3173,3178] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        