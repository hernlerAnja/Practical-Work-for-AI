
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
        
        load "data/7JXI.pdb", protein
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
 
        load "data/7JXI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7651,7652,7654,8053,7624,7627,7628,7642,7659,7680,7683,7658,8023,8037,7164,7165,7317,7318,7301,7605,7147,8024,8028,8052,7629,8133,8132,7606,7119,7113,7114,7163,7116,7117,1967,1968,1969,7120,7125,7722] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [4843,4895,4842,4844,4893,4894,5903,5820,5900,5901,5902,5918,5373,5821,5422,5426,5427,5451,5419,5908,5910,5913,5196,5357,5048,5044,5046,5916,5194,5195,5372,5378,5031,5390,4846,5277,5279,5396,5397,5392,5395,5805,4854,4855,4858,5791] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [4055,4057,4059,4062,4083,4084,1823,1887,1884,1885,1886,1921,1922,4082,8516,8518,4079,4085,1894,1900,1856,4073,3856,4077,3939,4088,4106,4107,3895,4161,4162,8509,8510,8517,1701,1847,1848,3934,3945,3948,1718,1699,1719,1892,1895,3962,1843,1844,1869,1888,3915,3920,3949,1683,1692,3916,3933] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [343,149,150,151,154,155,189,190,191,344,148,140,145,146,147,138,139,144,1083,1097,1113,1112,1192,1193,1200,1201,327,142,682,666,718,719,712,714,687,688,743,711,684] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [2545,2546,2547,3578,2495,2496,2498,2494,2501,2502,3065,3088,3089,3092,3066,3491,2692,2696,2700,2686,3060,2683,3048,3062,3096,3097,3461,3462,3121,3463,3464,2528,3475,3490,3570,3042,3043] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [8484,8483,8494,8207,8429,8206,8208,8168,8173,8176,8179,7675,8026,8027,8028,7136,7130,7132,8195,8192,8193,8194,8538,8513,8515,8014,8203,8000,1945,1946,1948,1949,1980,1967,1968,7125,8486,1912,1913,1914,1915] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [7428,7429,7511,7368,7397,8144,8145,8153,8154,8157,8162,8130,8150,7606,8135,8138,8142,8140,7316,7335,7589,7590,7334,7371,7141,7142,7143,7144,7318,7605] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [4941,4933,4936,4939,5011,4732,4940,4934,4935,4938,4752,4730,4751,5365,5285,5284,5287,5025] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [579,577,657,321,232,234,235,237,229,230,312,307,576,47,26,27,28,236,575,581,582] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [2954,2382,2384,2385,2955,2957,2953,2959,2960,2588,2663,2590,2591,2592,2593,2404,2668,2677,2403,3035] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [3575,3592,3595,2866,2867,3583,3599,3602,3579,3572,3573,3580,2809,3043,2943,2864,2947,2944,2698,2700,2717,2716,3027,3578,2523] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [1858,1859,1938,1979,4043,2011,2012,2013,1978,1975,1976,2009,2010,2006,2003,7741,8485,8514] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [3132,3520,3168,3192,3191,3130,3231,3519,3530,3232,3233,4527] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [7295,7281,7203,7209,7211,7597,7021,7002,7001,7210,7517,7519,7000] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [4195,4196,8524,8526,4159,4161,4136,8496,8510,8619,8617,8618,8620,4204,4169,4192,4193,4167,4165] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [5614,5646,5621,5588,5624,5855,5247,5248,6973,6969,6695] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [5699,2557,5705,5710,5711,5712,5723,2538,2539,2540,2708,2709,2558,2555,5675,2491,5677,2462,5206,5207,2463,2466,2471] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [2279,2280,2281,916,1147,1157,1158,1160,1162,528,1159,1161,2312,2333,2334,539,540,938] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [5214,5732,5187,5188,5733,5914,5915,5191,5916,5160,5921,5922] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [906,880,907,916,913,539,540,2030,938] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [5849,5521,5495,5498,5600,5461,5850,5462,5558,5559,5560,5561,5562,5563,5531] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [4683,4684,4685,4686,4628,4629,2918,3292,3294,3535,4660,3538,3539,3540,3536,3537,4627,3525] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [2917,2918,3291,3292,3294,3316,3258,3284] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [854,855,1152,787,823,813,814,790,792,753,754,1141,1142] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        