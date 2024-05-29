
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
        
        load "data/2CHX.pdb", protein
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
 
        load "data/2CHX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3788,4965,3437,4986,4987,3425,4989,4990,3438,3439,3741,3742,3743,3744,467,468,1077,1116,1118,1114,3709,959,4504,4517,4518,4520,4514,4519,3467,464,3708,1073,3402,3426,3429,3739,4988,5017,5129,5130,5111,1150,5127,5143,5144,4927,4954,4991,4929,3787,5150,5147,4505,5158,5160,5012,5019,5013,5051,5054,1142,540,1141,548,1111,5016,5014,5018,5081,5091,5092,1140,519,497,3405,5053,5055,482,496,3406,1076,483,1075,1105,1103] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5784,5799,5800,5877,5281,5772,4839,5880,5267,4697,5885,5886,5887,5888,5879,5860,5243,4858,4675,4628,4629,4630,4695,4651,4637,4641,4642,4632,4616,4859,5774,5775,5139,5221,5222,5226,5233,5236,5237,5238,4923,4924,4896,4925,4838,5136,5240,5244,5246,5137,5141] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3233,3256,2924,3244,3245,3246,3247,3258,3239,1626,6310,6368,6312,2665,6423,6457,6421,6424,6425,6459,6337,2659,2652,2654,2900,2669,2675,2681,6303,2655,2889,3208,2887,2888,2925,2897,2687] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3450,3171,3173,3154,3412,3413,497,498,3414,3158,3165,3167,5030,6264,6286,6287,6262,5024,5062,3448,5000] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [5726,5905,5907,5910,5912,5913,6449,6450,6451,5892,5711,5717,5719,6474,6476,6473,6447,6329,6331,6360,6361,6387,6409,4947,4949,6352,6353,4915,6385,6386,6399,4913,4916] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3698,4028,4029,4056,3700,4022,4055,1276,1268,4482,4483,4484,4547,4548,3728,967,968,969,3695,3696,448,429,430,1239] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [203,189,201,204,212,195,211,2331,2334,2335,2339,2344,3569,3570,183,235,194,236,230,3873,2326,3865,2338,3900,3902,228,2071,2075,2077] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [4905,4906,4904,6371,6373,3521,2288,6365,2295,2301,2302,2303,4889,6379,6380,6384,2290,4887,3839,3846,3849,3868,3843] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [1589,1605,1606,1969,1970,1575,1587,1588,2312,2307,2308,2015,1645,1629,2279,2281] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [3709,959,4519,468,1088,978,4528,4529] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [5127,5231,5229,5230,959,4504,4518,4520,4519,1118,1119,4509,4538,5228] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [944,4780,948,949,950,4782,958,959,956,4786,4804,4740,4799,4773,4537,4538,4539,4817,4800,4807,4808] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [438,914,1000,1003,1004,900,413,401,403,1006,1007,1009,1018,784,785,789,790,786,812] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [5371,6793,5377,5388,5370,5327,5352,5316,6795,5355,5358,5330] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [1906,1912,1916,2492,2496,2497,1900,2983,1918,3006,3005,3007,2978,2976,2982,3272,3289,3035,3037,3039] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [5698,5700,5942,5945,6652,6615,6475,6477,6479,6504,6614,5937,6651] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [5093,5599,1137,5090,5107,5626,5628,5630,5587,5589,5592,5597] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [5328,5329,5330,5774,5775,5776,5760,6782,6783,6794] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [663,946,1202,666,4763,4766,4768,683,672,1204,4775,945,4779,4764,4765,668,4758] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3873,2326,3865,2338,3900,3569,3570,2333,2334,2335,3902,3910,3879,3881,2328] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        