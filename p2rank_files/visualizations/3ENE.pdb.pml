
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
        
        load "data/3ENE.pdb", protein
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
 
        load "data/3ENE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5000,5136,5153,5152,4997,4998,4999,5138,5139,1124,1125,1127,4974,4993,4996,4975,3751,3753,4513,4523,4526,3717,3718,464,467,468,4527,4528,4529,1099,1123,1097,3433,3434,3446,3797,3438,3749,3748,3750,3752,3435,3796,5156,5159,5026,1149,1150,1151,5063,5062,548,1119,1120,1159,1110,1111,4995,5021,5028,5029,5032,5022,5023,519,540,1086,482,483,1085,1114,1112,3447,3448,496,5064,5027] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5888,5886,5889,5781,5290,5808,5809,5276,5920,5922,5792,5793,5894,5895,5896,4651,4684,4638,4639,4625,4641,4659,4868,4660,4650,4934,5890,5891,5148,5150,5230,5235,5249,5252,4867,4847,4866,5231,4848,4706,6791,5782,5783,5784,5785,5311,5312,5313,4645] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [6345,6346,6434,2674,1638,3248,6377,3242,3254,3255,3256,1633,3253,3252,1632,1639,1644,1647,1640,3265,6319,6321,2668,2669,2670,2663,2678,2684,2690,2664,2897,2906,2696,2934,2734,2933,3214,3217,3267,2898,2896,6430,6432,6466] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3737,3709,4037,4038,976,4492,4493,977,978,4065,4031,1286,1277,1285,4491,4532,4533,3739,4534,4557,4064,4062,4063,4030,4029,4032,448,974,429,447,1248,1249,430,3703,3711,3704,446,3705,3707,4538,987,3715,4535,4537] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [2054,2312,2264,2268,2270,2257,3852,4914,4915,5193,2309,2310,2311,3877,3879,3880,2250,3855,3858,3848,2297,2299,6374,2298,4911,4913,6387,6388,6389,6381,3530,3830,6382,6393,6399,6412,2271,2275,4898,6392,6398,6405,6409] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [3174,3163,3173,3457,3459,3390,497,3421,3422,3423,3180,3182,3176,3183,5009,5039,5006,5033,6296,6295,6290,6294,6258,6271,6273,5069,5070,5071] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [228,3578,3579,230,211,183,194,195,2335,2340,2341,2342,2343,2344,2347,2348,2353,201,203,204,212,3883,3911,3915,3874,3882,235,3906,3910,236,3908,3909] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [4958,5735,5720,6338,6340,6362,6370,6456,6457,6458,6459,6394,6395,6418,4922,5901,4925,6396,6397,5728] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [5136,5239,5240,1125,1127,1128,4813,967,968,1099,4513,4526,4527,4529,4520,4547,4822,4826,4827,4829,4832,4816,4817,4548,4516,5244,5261] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [1584,1979,2321,1615,1961,1585,2320,2316,2317,2329,1613,1614,1996,1998,2024,1962,1978,1633,1654,2288,1635] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [3408,3404,3407,3687,3700,408,409,449,454,455,386,410,412,457,452,3688,3685,462,3395,3400,470,473,474,475] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [468,4528,4529,968,1099,1123,1088,1097,987,1124,1125,1080,1081,1087] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1015,1016,1018,1027,812,786,789,790,438,1013,401,403,413,411,921,909,1242] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5339,5367,5336,5361,6803,6804,5386,5397,5304,5301,5303] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4791,4795,4813,967,968,959,4783,953,957,4782,4789,4816,4817,4749,4807,4808,4809,4794,4547,4826,4548] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [666,668,687,692,686,4781,954,4774,4772,4775,4777,4788,955,4784,672,1213,663,4767] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1927,3298,3044,3046,3048,1925,2504,2506,1921,3281,3015,2992,1915,2505,1909] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5666,5881,5860,5859,5971] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [5907,5908,4990,5669,5671,5736,5697] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        