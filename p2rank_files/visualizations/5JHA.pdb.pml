
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
        
        load "data/5JHA.pdb", protein
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
 
        load "data/5JHA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4791,461,462,4768,3249,3250,3251,3255,3256,3292,3281,3612,4767,3254,3284,3563,3613,3534,3564,3565,3566,3567,3568,3569,4306,4316,4321,4962,4307,4304,3611,1016,1017,1018,1051,1052,1055,1042,1043,1044,3261,3263,3264,4822,4825,4826,491,490,4855,4857,4856,1046,543,3227,3230,4789,4790,4792,4793,4929,4932,4913,4945,4946,4949,4731,4952,4818,4819,4820,4893,4894,4896,532,4889,1082,1083,1081,4895,4816,4815,4817,534] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5083,4432,4497,4499,4641,5661,5558,5656,5659,5660,5662,4683,5654,5546,4433,4477,4430,4431,4418,4660,4661,4659,4444,4443,5651,5653,5573,5045,5069,5070,5072,5574,5078,5549,5076,4640,5023,5024,5040,4725,4727,4657,4938,4939,4941,4943,5028,5042,5048,4724] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [3855,3880,3881,4285,4286,907,908,909,910,4350,3523,3525,3844,3845,3846,3847,3848,3849,3853,1209,4325,4326,4327,4284,3871,439,423,440,441,442,906,3520,3527,3519,3521,928,930,1180,4330,4331,4328] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1505,3068,3069,3070,3072,3064,6114,3058,3071,6057,2480,2714,3029,3081,2749,2750,2722,3083,2746,6187,2490,6082,6159,6162,2141,6113,2138,2139,6144,6150,2479] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [5485,5491,5493,5690,5691,6175,5500,5666,5678,5688,6098,6106,6074,6076,6133,6132,6176,6105,4751,4718] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6010,6008,4864,490,3274,3275,6033,3260,4826,2996,3206,2998,2983,3237,3238,3239,3215,489,2979,2992,4832] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [187,206,183,189,205,197,2197,2201,2204,2205,177,195,2210,198,1935,3725,3726,229,222,1943,1941,2025,1937,3394,3395] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5096,5097,5129,5132,5533,5534,6522,6523,6519,6521,5160,5162,5118,5150,5159,5119,5121,5122,5123,5153,5161,6476,6449,5539,5542] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [4689,4691,4707,4708,6123,6124,6118,6125,6128,6129,2156,2169,4690,4706,3668,6122,6126,6117,6110,6116,3346,3674,3675,2167,2168,3693,3664] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [460,462,1029,1031,1058,1060,1023,918,898,4320,4321,4322,4330,900,1012,1013,1019,1056,1057,1020,1059] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [4273,4275,4359,4248,4249,4223,4250,4229,4233,3939,3937,3964,4527,4370,4371,3973,3971,4225,4227] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5032,5037,4605,4620,4615,4619,4610,4322,900,4340,4341] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [446,3516,3501,434,443,403,448,449,3220,3223,379,404,406,408,409,412,3504,3503,468,464,467] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2114,1910,2128,2132,2156,2169,6137,2175,2127,2166,2168,1912,3693,3675,3695,3684,3664,3683] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [4038,4462,4996,4036,4037,4670,4995,4668] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3947,4652,3972,5016] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5430,5646,5625,5440,5429,5415,5439,5444,5417,5735] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [505,618,556,719] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        