
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
        
        load "data/3CSF.pdb", protein
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
 
        load "data/3CSF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3428,4956,4957,3430,4978,4979,4980,4981,4982,3429,954,952,1111,1113,1114,1083,1085,1109,1110,1112,1067,1106,4495,4505,4510,4511,4922,3778,3779,3734,3735,4496,5141,5149,4921,5014,5003,5004,5010,5011,5046,5042,5044,5045,519,520,1096,1097,1098,1133,548,547,549,3699,466,467,468,3700,1074,973,3415,3416,3421,3422,3417,3420,4519,4520,3450,3730,3731,3733,3732,3447,3777,1068,1073,1071,3397,1070,1072,1100,3427,496,497,5008,5007,5009,5118,5121,5135,4918,5138,4920,5005,1134,1136,1137,540,5072,538] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5785,5865,5866,5873,5874,4850,5258,5261,5786,4688,5770,4622,4632,4633,4619,4621,4648,4848,5212,5213,4829,4830,5217,5229,5127,5128,5231,5234,5130,5132,5294,5295,5272,5758,5760,5761,5762,5267] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1582,3230,6366,6367,6310,2645,2646,3224,3235,3236,3237,3238,6335,2717,2889,2660,2667,2668,2672,2676,2677,2678,3199,3247,2879,2878,2915,2916,3249,2880,6420,6421,2656,6334,6456,6454,6455,6422,6423,2652,2666,2650,2651] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4517,4516,4514,4515,4519,4520,446,448,963,964,3686,3719,973,3687,429,3689,3691,1234,3721,4020,4473,4474,4475,4538,4044,4046,4047,1263,4013,4539] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [5894,5895,5893,6401,6448,5896,5712,5703,5705,6472,6471,4938,4940,5878,6384,6385,6359,6383,6382,6446,6397,6447,6398,4907,6351,5697,6358,6329] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [6749,6772,6790,6792,6793,6787,5321,5318,5353,5354,5355,5359,5285,5308,5374,5375,5286,5759,5762,5746,5745,4641,5751] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3439,3403,3404,3405,3427,496,497,3149,3162,3164,3156,3158,3165,3145,5017,5021,6285,5052,6260,6262,5012,5013,5014,5015,5016,5051,5053,6284,3441,3426] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1871,2095,2097,2449,2440,2443,2446,2448,2454,2455,1862,1859,1865,1866,1869,2058,2997,3028,3030,3263,3026,2463,2457,2456,2967,2969,2996,2974,2451,1853,3280,3271,2098,2057,3000] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [194,235,208,3891,2295,183,2299,189,195,202,204,211,2304,2305,201,203,2067,2073,2060,2123,2291,2041,2035,2039,3560,3561,228,225] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [6391,6392,4880,2261,2262,2263,3830,3837,3841,4897,3859,3512,6371] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [989,786,1001,781,789,790,1013,1002,1003,1004,812,883,999,998,904,907,1228,404,405,895] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [5220,5221,5219,5226,5243,5134,5222,4814,4799,5245,5118,4495,4508,4509,4510,4511,4529,4809,954] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4764,4731,4808,4732,4765,4529,4530,953,944,945,939,943,4794,4791,4777,4790,4799] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [5983,5984,5391,5980,5982,6011,6710,6068,6051,6054,6056,5985] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4972,5648,5884,5713,5670,5669,5673,5646] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        