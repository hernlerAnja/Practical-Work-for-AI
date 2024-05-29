
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
        
        load "data/3QAR.pdb", protein
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
 
        load "data/3QAR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4888,4889,5030,4917,4918,4919,5031,4866,4855,4891,4892,5028,4890,4830,1043,1045,1076,5044,5048,5051,4405,5045,4828,4834,1067,1069,4988,516,1068,4992,4994,1065,4924,4914,4921,4923,3356,3360,3357,3640,443,444,3671,3673,3675,3669,3670,3672,3674,4415,4419,4420,3390,3717,3719,3718,3337,1002,1003,1004,3336,1041,472,4956,471,4954,4955,4925,3366,3367,3368,3369,3370,473,5004,5012,5024,4995,4993] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5783,5778,5781,5786,5700,5144,5168,5701,5789,4740,4576,4758,4760,4529,4531,4598,4530,4517,4782,5038,5122,5127,5141,5134,5123,4739,5139,4826,4798,5037,5780,5673,5684,5183,5205,5175,5203,4542,4543,5171,5177,5174] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6282,6250,6251,6283,6373,6224,6226,3170,3177,2196,2198,2199,2596,2585,2590,2591,2592,2600,2606,2612,2586,3164,3175,3176,3178,3174,3187,1541,1542,1544,1537,2618,3189,2852,2854,2855,2856,2656,3137,3139,3136,2820,6345,6344] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3986,1203,3950,3952,3953,1193,1195,3961,3959,895,4384,4385,4447,423,424,914,405,3631,916,1166,406,1204,3627,3629,4425,893,894,896] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4850,5620,5627,5817,6275,6267,6274,6364,5815,5818,6323,6325,5793,6302,6299,6301,5612,5618,6243,6245,6390,6388,6361,6387] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2936,2937,2938,2968,2970,3203,2422,1275,2419,2427,2434,2435,2436,2907,2911,2909,3204,3220,1813,1816,1819,1823,2423,2414,2410,1272,1790,1807,1825,3211,2054] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3379,3102,3104,3344,3381,4925,4963,473,472,471,3343,3345,3312,3089,3085,3096,3098,4924,4923,4931,6176,6202,6178,4901] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [171,177,179,180,188,187,2248,2256,169,211,212,206,159,165,3831,2252,1996,1998,2080,2024,1992,3501,204] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1086,1090,1091,1046,1088,1089,4687,4688,871,872,1111,1115,1112,885,1017,1016,4679,1094] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3640,905,903,442,444,886,902,1006,1009,1015,1017,4420,4429,4430,4427,998,999,1005,1042] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1536,1552,1876,1496,2228,2229,1482,2225,2227,1877,1894,1896,1936,1531,1512,1513,2237,2224,1860] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [6707,6741,6742,5228,5229,5230,5195,5288,5290,6705,5263,5660,5661,5675,5677,5196] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2218,2220,2219,3770,3752,6287,2212,3452,4806,4807,3780,3781,6308,6307] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [5685,5684,4543,4561,4559,4560,5789,4760,5804,5785,5787,5788] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [2885,2887,1520,1522,2888,2890,1517,3174,3186,3190,1516,1524,1525,2852] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        