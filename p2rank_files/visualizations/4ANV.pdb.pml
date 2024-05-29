
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
        
        load "data/4ANV.pdb", protein
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
 
        load "data/4ANV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5000,5036,5062,3527,3529,5057,5058,5059,5060,5061,3516,3522,3799,3800,3493,3496,3517,3520,467,468,4581,1077,1119,1120,1122,1118,5198,5200,5201,5088,5182,5194,5214,5215,4998,3558,5002,5221,3833,3830,3832,3834,3835,4566,3831,4576,4580,3879,3877,5231,1076,1146,1080,1154,5126,1107,1144,1145,1109,3530,5085,5087,5083,5084,5090,5122,5124,5125,538,540,549,519,3497,1081,5089,5163] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5212,5955,5957,5210,5293,4910,5292,5297,5311,5314,4768,5309,4930,4996,5963,5964,5965,4929,4952,4727,4728,4746,4928,4909,5317,5339,5966,5988,5989,5990,5991,5855,5958,5843,5353,5346,4702,5375,5374,4699,4706,4712,4713,4677,4678,5870,5871,5338] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3785,3786,3787,4121,3789,4119,4147,4544,4545,4546,429,3791,4114,1280,4113,970,973,971,1270,1243,1244,1272,4587,4585,4590,4591,4586,4588,4146,4111,969,992,993,446,447,448,3793,3796,981,982,3797,3798] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1645,3330,3336,3337,3338,6397,6403,6391,6459,3324,6428,6427,2756,3348,3349,6518,6514,6539,6538,2298,2303,6504,2745,2988,2760,2778,2746,3299,3296,6394,3015,3016,2980,2978,2979,2984] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3472,3503,3504,3505,3540,3262,3264,3249,495,496,497,3256,3258,3245,3541,5071,5092,5093,5095,5101,6379,6353,6355,5133] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2362,2096,2365,2366,2367,2369,2094,228,211,212,2184,3964,3993,2360,3956,3661,2372,3660,183,189,2373,203,194,195,3990,3991,3992,236,2100,2103,4000,3971,4001] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [6450,6451,5782,5788,5797,6420,6422,6452,6553,6554,6527,6528,6531,6476,6477,5999,6491,6494,6507,6479,5997,5790] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3930,3950,3937,3940,3941,2326,2328,2327,3959,3961,4977,4960,5011,6469,6471,6486,3612,6463,6464,2314,4973,6484,6485] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1933,1936,3096,3097,3098,3129,3130,2582,2562,2567,2575,1375,3067,1372,1910,3070,3071,3371,3362,3364,3379,3370,3372,1939,1943,2557,2558,1945,2158,1927] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [963,4581,466,1077,1119,1120,1122,1123,1083,1092,1094,1118,981,1082,3800,467,468,4580,4582,1076,1075] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [6874,6875,5398,5400,5830,5458,5460,5387,5365,5420,5414,5444,5433,5844,5847,5363] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [961,948,960,1093,1163,1165,1166,1171,1188,962,1123,4845,4849,4857,1189,4874] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5160,5161,5698,5700,5701,5669,5670,5164,5178,580,581,1141,5658,5662,5639] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [2354,3616,1637,1962,1963,2350,2352,3634,3637,3638,1951,3627,1633,1634,3354,3355,3328] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [6035,5762,5767,5769,5771,6558,6559,6695,6028,6033,6036,6732,6731,5764,5788,6592,6588,6589] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [6133,6127,6114,5507,5509,6116,6117,6132,5508,5550,5634,6198,6120,6119,5625,5626,5652] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [4303,4304,4302,4731,4944,5263,5265,4939,4940] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        