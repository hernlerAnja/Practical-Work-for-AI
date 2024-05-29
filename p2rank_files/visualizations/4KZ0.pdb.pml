
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
        
        load "data/4KZ0.pdb", protein
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
 
        load "data/4KZ0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4612,4613,4614,4615,4754,4755,3176,4611,4641,4642,4643,985,1009,1012,1040,4591,4759,4769,4772,4153,4616,4752,4152,4166,4167,4554,4590,3525,4556,3523,3166,3142,445,972,446,983,968,967,3161,3163,3174,3139,3165,3478,3480,3481,3477,3479,3476,3162,3164,3446,4775,4785,4736,4639,4640,4637,4638,4644,4649,4678,4679,4706,4673,4677,4712,1005,1033,4715,4718,996,997,505,493,494,4687,4680,971,998,461,1000,3150,3143,460,473,474,4719,4728] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4550,5469,5470,5471,4846,4847,5468,4463,4482,4483,4851,4863,4271,4329,4464,4307,5465,4761,4762,5460,5462,4763,4765,5464,5463,5444,4865,4868,4871,4888,5382,5383,6345,5356,5359,5367,4902,5494,5496,4275,4281,4282] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [4910,5433,5598,4909,4911,5390,5192,5194,5195,5391,5033,4929,5057,5059,4928,5031,5032,5065,5374,5566,5564,5581,4907,5602,5226,5599,5190,5189,5620,5158,5159,5164,5040,5595,5596,5597,5395,5415,5416,5156,5157] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [1164,1153,1155,3753,3761,3437,3759,1163,3465,4131,4132,3782,868,876,4171,4174,4176,4177,864,4172,4173,424,425,426,865,3438,3439,3442,3443,3431,3432,3444,407,3433,3435,408,886,888,1126] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [5898,5901,5875,2970,2982,2983,2984,5900,6010,2418,5902,5907,6011,1462,2976,5932,2079,5903,2967,5986,5987,6009,6008,2407,2408,2943] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [4070,4072,4094,3840,4098,4203,4206,3859,4357,4207,4213,4068,4073,3868,3869,3870,4093] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2910,2897,2904,2908,2911,2901,2902,476,3149,3150,2891,2895,3118,3151,4655,5827,5852,4651,4646,4647,4649,5849,5829,4687,3186,3187] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [191,192,199,2146,171,2142,3632,223,181,218,216,3307,213,2140,1894,2139,1888,2138,1892,200,1976] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [5875,2970,2982,2983,2984,2418,2981,2994,2995,1471,2664,2665,2666,2414,2422,2434,2439,2407,2408,2629,2630,2440,2628,2474,2943,2946] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4574,5302,5512,5971,5999,5294,5300,5895,6028,6025,6026] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [5193,5601,5618,5621,5622,5625,5712,5713,5711,5199] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1027,941,944,992,1067,562,515,530,682,683,561,574,488,939,509,512,514,1028] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1839,1840,1383,1362,1806,1559,1560,2215,1563,1347,1345,1346,1849,1851] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1719,1950,1716,1722,1725,1726,1948,1207,1208,1214,1710,1213,1240,2746,2747,2777,2779,2780,3008,2719,2748,2721,3018,3026,1910,1218,1219] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [3446,874,876,4176,4177,864,426,856,857,3444,446,983,444,4167,858,985] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5937,2109,2110,2096,3258,4531,4514,5943,5944,3576,3583,3586,3599,5936,5958,5959] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [6320,4947,4978,4981,5343,6323,4915,4944,6322,6343,6353,5001,5003,5350,4913,4916,5342,5358] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [597,601,618,612,595,596,1091,4394,4396,4409] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [2133,2140,3596,3306,3609,3604,3605,3633,2145] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        