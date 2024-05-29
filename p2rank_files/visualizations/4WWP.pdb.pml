
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
        
        load "data/4WWP.pdb", protein
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
 
        load "data/4WWP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [999,1000,1001,1003,436,437,438,3572,863,3571,973,975,958,4793,4794,4816,4817,4818,4819,4955,4815,4845,3288,3289,3292,3300,3302,3268,4971,4972,4975,4978,3649,4330,4332,4333,4345,4348,4342,4346,4347,844,3602,3604,3606,3607,3651,3603,3605,4356,4357,3330,4757,1026,1027,4883,4882,518,1025,4842,4841,4847,4848,508,510,962,3301,3269,452,466,468,961,960,956,957,453,990,988,992,4958,4844,4846,4931,4939,4920,4957,4909,4919,4921] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4667,4444,4523,4525,4443,5708,5715,5716,4687,4502,4503,4501,4452,4513,4517,5054,4665,5049,5050,4666,5072,5074,5068,5071,5095,5627,5628,4964,4965,4969,5705,5707,4967,5102,5110,4459,5600,4453,4456,4457,4458,5098] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6214,2528,6181,6182,3096,2191,6262,3102,3108,3109,3110,1518,3107,3119,3121,2186,2187,2189,6213,2522,2532,2538,2517,2550,2762,6157,3071,2752,2760,2788,2787,2524,6259,6261,6295,6287,2190] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3593,4312,3916,3955,4310,3919,4311,4375,3893,4376,3563,3883,3884,3885,1151,1153,3891,3886,3887,3909,417,418,853,854,399,1124,3559,3561,4352] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1789,1792,1780,1786,2001,1253,1241,1244,1796,1798,2038,2040,2035,2000,2034,1243,2869,2902,2868,2870,1256,2901,2872,1252,1254,2843,2875,2839,2841,3134,3152] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3275,3312,3313,3036,3021,3276,3277,465,466,467,468,3017,3030,3034,3027,3028,3029,4828,4854,4858,6130,6133,4849,4850,4851,4852,4853,6109,6107,4890] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2240,171,173,174,172,182,181,165,2248,3762,2244,3763,153,206,3764,205,163,200,2241,1982,1984,2242,198,3432,3433,1978] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4775,5547,5554,6198,5720,5744,5745,6233,6231,6205,6206,6247,6276,6277,6278,6275,6230,5539,5545,6301,6302,6174,6176] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4734,6218,2212,2211,2198,3702,3722,3384,3713,3684,3712,3709,6223,6217,6210,6225,6224,6240,6238,6239,4717] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4337,4348,5058,844,4366,4367,4645,4641,4646,5063,4648,4651,4636] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [5186,5197,6616,5201,5215,6622,5155,6614,6620,5588,5587,5604,5123,5157] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [5611,4459,4469,4470,4458,5738,5740,5716,4687,4486,4488,4487,4686,4484] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4921,4918,550,551,5415,5416,5417,5455,5457,5458,5425,5426,5427,5420,1022,4935,1024] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4602,4610,4614,4615,4601,4598,843,4366,4367,841,835,829,833,4645,4627,4568,4606,4608,842,4628] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4709,5715,4753,4725,5050] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        