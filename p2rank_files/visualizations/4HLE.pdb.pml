
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
        
        load "data/4HLE.pdb", protein
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
 
        load "data/4HLE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5011,1061,1063,1064,4898,1059,1060,1062,5025,5008,4385,4401,4872,5028,4846,4868,4869,4870,4871,5010,4810,3384,443,444,3625,3626,3659,3661,4399,4400,4847,3346,3656,3657,3705,3658,3660,3704,3342,3343,3352,3353,3319,5031,4814,5041,3355,4867,4900,4895,4897,1087,4899,4932,4934,4935,4936,4894,4973,1084,1085,1086,1083,1094,1047,1055,1056,4929,4962,524,514,516,3356,3322,3323,1020,1021,1022,472,1017,1048,1050,4992] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [5793,5794,5665,5761,5763,5766,5767,4740,5768,5769,4578,4512,5102,5107,4738,4778,4719,5101,5103,4720,5121,5119,4806,4523,4739,4522,4556,4541,5017,5018,5022,5758,5760,5020,5680,5681,5124,5148,5161,5162,5183,5184,4515,4516,4513,5664,5653,5656,5657,4519,6697,5157] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [6213,3156,2220,2222,2224,6335,2582,6188,3161,3162,3163,3160,3164,3150,3173,1569,2571,2814,2576,2577,2578,2586,2598,2602,2603,2604,2592,3123,2572,3125,2806,2841,2842,6307,6310] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3973,3617,3939,1221,1213,1211,3945,3947,4405,913,4365,3972,4363,4364,4428,4429,3647,422,424,405,423,3615,406,3613,914,1184,910,3622,4404,4406] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3367,3298,3090,3329,3330,3331,474,473,3075,3088,3084,3082,3071,3081,4911,6162,6163,4905,4903,6139,6141,4943] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4830,5607,5800,6229,5797,6264,6237,6288,5600,5592,5598,6205,6207,6323,6349,6350,6352] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [188,204,2024,2274,2277,2273,2005,2011,2018,2022,2106,3487,165,177,179,180,2281,2286,159,3818,212,169] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [5269,6668,6670,5208,5228,5247,5235,5640,5656,5176,5175,5211] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [5109,5110,5111,5112,4385,4401,4419,4420,4685,4681,903,904,901,894,895,889,893,4399,4400,4390,4689,4704,4697,4698,4699,4694,4701,4680,4388,5133,5116,5135] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1458,1483,1945,1497,1683,1685,1461,1457,1970,1968,1969,1441,1440,1442,1980,1981] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3438,6254,6255,6256,4770,4787,6249,6241,2243,2244,2245,2231,2232,6270,3766,3756,3767,3785,6265,6266,6269] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        