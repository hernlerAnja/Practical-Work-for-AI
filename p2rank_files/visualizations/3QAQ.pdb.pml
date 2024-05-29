
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
        
        load "data/3QAQ.pdb", protein
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
 
        load "data/3QAQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4967,4946,3447,4970,4971,4968,4969,3449,1062,4911,3797,3798,5130,5140,3753,4484,4498,4499,4910,3460,3435,3436,3448,3439,3718,3719,467,468,1026,1028,3750,3752,3754,3751,3749,5010,6232,6258,4999,5001,5002,5003,5004,4993,5031,5033,5035,5034,1052,539,540,548,1053,1054,5042,6234,3168,3391,3422,3423,3424,495,496,497,498,1027,3416,482,483,1056,3181,3183,3175,3177,1091,1092,1093,4994,4996,4997,4998,4934,5107,5109,5110,1090,4936,5123,5124,5127,4909,5061,5067,5071,5072,5073] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5851,5853,4819,4677,5218,4818,4837,4839,4611,4655,5844,5842,5764,5845,5765,5223,5247,4905,5850,4877,5116,5117,5119,5200,5201,5202,5206,5220,5213,5217,5749,5262,5737,5283,4621,4622] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1573,3254,3255,3256,6306,6338,6339,3243,3249,3257,6282,3266,3268,2931,2934,2935,3253,2933,3215,2664,2697,2665,3216,3218,2899,2675,2671,2669,2670,2242,2243,2244,2245,2246,2247,6397,6399,6401,6403,6429,2674,6307] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3712,3704,3706,3711,3705,4040,447,448,917,4463,4464,919,4066,918,920,938,4526,3740,4505,4462,4504,3708,429,430,1227,3710,940,1190,1219,1217,4032,4065] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5857,5872,4896,6420,6374,5676,5682,6444,6446,5684,6417,5691,4927,4929,6323,6330,6331,6299,6301,6358,6356] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [201,203,204,211,212,2296,2300,2304,2309,2032,2034,2038,2040,228,2066,2072,3580,193,235,236,3910,183] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3287,3049,3282,3047,3299,2483,3016,1313,2489,2491,3015,3017,2986,3290,1861,1863,2096,2466,1857,1845,1851,1854,1828,1310,2465,2470] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2266,2267,2268,3878,3869,3860,3849,3831,3859,6335,6341,2254,2260,6343,3531,4886,6364,6363] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [909,1040,1041,1070,1113,1118,1139,4754,4762,4519,908,895,896,1135,1136,900,907,899,1111,1112] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2273,1550,1571,1572,1574,2285,1549,1551,1590,1532,2272,1898,1896,1897,1914,1915,1534,1569,2234,2276,2277] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2211,2218,6363,2255,6382,2265,2268,3878,3880,3869,3860,2008,3849] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [5307,5732,5275,5274,6716,6745,6761,6763,6755,6756,5338,5352,5354,5739,5740] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5069,5592,5594,5595,5590,5591,5593,5552,5555,5556,5557,5533,5553,5554,5073,581,1088,5070,5071,5564,5087,5562] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4040,4463,4464,3740,4462] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [5837,5929,5932,5816,5635,5620,5621,5630,5631] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3253,3259,3265,1583,1558,1560,3269,2969,2966,2967,2964,1555] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3875,3883,3889,3912,3579,2291,2303,3919,3920,3546,2281,2293,2297,3555,2298,2299] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        