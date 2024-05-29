
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
        
        load "data/4DK5.pdb", protein
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
 
        load "data/4DK5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1046,5000,1041,1044,1045,1072,1074,1085,1088,1080,1083,1084,1071,1079,3410,3412,3405,3406,3414,4964,4965,498,3411,3413,483,1042,3377,3380,3381,496,482,4932,4931,4957,4958,4959,4961,4962,4963,1107,1109,1110,1111,5037,5038,1087,5048,5047,540,548,5036,4999,1076,4910,4911,3399,3400,467,3684,468,928,1059,1057,4874,4899,4933,4934,4935,4936,5072,5074,5075,5079,947,3401,3403,3404,5176,4449,5089,5092,5103,5105,5088,3716,3718,3719,4872,4875,3763,4901,4878,5095,4464,4465,3714,3717,3715] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5830,5831,5166,5165,5167,4783,4784,4575,4576,5178,5183,4642,4826,4804,4842,4868,5833,4802,5191,5171,5185,5826,4870,5827,5824,5084,5086,5822,5744,5825,5227,5717,5745,5212,5729,5832,4582,4583,4586,4587,4573,4577,5249,4581] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2634,2640,2635,2636,2629,2644,2650,6291,6419,6266,3208,2255,2258,2257,1582,3214,3221,3222,6290,6322,6323,6385,6387,6410,6412,6413] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3677,3676,447,4470,4471,3669,3670,3671,3673,4429,4469,958,935,936,937,938,429,3675,430,1208,446,448,946,956,4005,4428,4030,4031,4492,4491,4493,3996,3997,1237] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [4892,5835,5836,5837,5838,4894,6307,6341,6342,5656,5671,6314,6315,6283,6285,6401,6365,6402,6357,5848,4862,5662,6427,6428,5851,5852,5664] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3129,495,6216,6218,4967,4971,5007,3140,3387,3388,3389,497,4975,3423,3425,4968,4969,4966,498,3148,6242,3142,3133] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [201,203,204,195,212,211,2043,236,189,192,193,2311,3875,2309,3545,228,2045,2307,2051,2049,2133] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3248,3252,3247,3012,3014,3264,2489,1321,1324,1865,2980,2982,2981,1872,2107,2472,2476,1868,1871,1862,1856,2471,3010,2491,2984,2953,2987,2492] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4832,4834,3496,4851,4833,3824,3825,3814,2265,2277,2278,2279,3834,6333,6334,6326,6327,2266,6347,6348,6349] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [5572,5574,5575,5535,5036,581,5543,5544,5048,5051,5052,5787,5537,5541,1108,1110,5037,5038,1118,1106] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [925,927,1059,1058,913,4723,4726,914,1153,4719,4731,1136,1154,1157,1088,1086,1131,1130,1132] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1585,1561,1580,1601,2296,1562,1560,2288,2287,1945,1989,1907,1909,1925,1926,2286,2283,2284] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [976,987,812,790,972,973,975,789,413,403,405,878,882,883,884,869] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [4727,4719,4685,4686,4718,4731,4728,4729,4730,4744,4745,4752,4483,4484,4762,4753,917,918,927,928,913,4723] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [512,1101,589,623,753,756,757,1014,1066] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3854,3856,3884,3885,2304,3520,3840,2302,2309,2310,3544,2308,2314,3848,3877,3511] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        