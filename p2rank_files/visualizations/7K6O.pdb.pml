
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
        
        load "data/7K6O.pdb", protein
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
 
        load "data/7K6O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5517,5707,5708,5499,5501,5503,5526,5528,5553,5554,5555,5556,5558,5781,5527,5529,5905,5906,5881,5882,5886,5884,5887,6303,6306,6304,6307,6325,6326,6329,6318,6319,5642,5687,5807,5811,5787,5791,5788,5792,5795,5481,5812,5813,5831,5816,5806,5796,6328,5619,5638,5597,5785,5782,5263,5264,5265,5373,5480,5262,5531,5536,5926,5928,6305,5904,5907,5908,5911] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4846,4640,4825,5197,5199,4826,5198,5119,5697,5203,5220,5222,5698,5645,5646,5216,4662,5214,5219,5240,4618,4619,4607,5257,5278,5279,5239,4589,4909,5722,5723,5724,5716,5717,5718,5120,5121,5713,5715,4866,5623,5118,5116] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3773,4472,3772,3774,3775,3776,3777,4491,4482,4483,4484,3737,3740,3457,475,1129,476,4974,4975,1130,1131,3463,3465,4972,4973,5009,4946,3455,3456,3458,3461,4947,4950,3459,3453,3771,5139,3494,4918,3493,3822,3823,4938,5107,5130,4914,5127,5124,5137] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3915,2374,3919,171,172,174,173,180,189,2148,2150,3924,3927,3928,3920,3601,2373,3894,2229,2368,2370,2105,2215,2216,2217,2189,2141,2362,2367,2107,2111,2113,2365,2110,2135,2138,2142,3590,3576,2358] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2342,2343,2346,2331,2348,2349,2352,2358,6074,2345,3547,6080,6081,6082,2356,2081,2084,2332,3546,3549,3551,3881,3880,3895,3896,3897,6085,6086,6089,6090,6128,6129,6124,2264,2276,2279,2280,2282,2297] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [5478,5480,5371,5393,5372,5375,5377,5651,5265,5373,5826,5825,5475,5476,5671,5453,5454,5247,5284,5388,5390,5389,5244,5245,5650,5655] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [490,491,492,1157,5009,1158,5008,5037,5038,5039,5048,1130,4970,4972,5010,1129,1168,1163,1164,1167,1154,5083,5091,5000,5001,5002,1188,1187,5109] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5150,5153,4159,5156,4130,4108,4135,4138,3840,4110,88,3835,3839,3812] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1021,1023,1022,1133,1136,1138,1006,476,4484,4768,4779,4769,4505,4506] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1648,1649,1650,1659,3261,3268,1647,2340,2338,3260,2345,2347,2346,2344,6076,6143,6145,6124,6131] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [441,442,3732,3733,439,451,452,453,1312,1328,1321,4455,4454,1014,4514,4040,4031,4066,4068,1327,4033,4042,4067] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [490,492,1157,5040,1158,528,545,548,542,527,5037,5038,5048,1155,1188,1184,1187] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3844,3872,3873,5165,5167,6086,6092,5158,4873,4889,4890,4891,3853,3854,3855,3879,3881] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1130,1131,3465,4972,4973,5010,3433,3434,3443,491,492,5009,493,497,5007,5008,5048] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4933,5574,4966,5548] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3269,3226,3280,2984,3279,3254,2744,6054,2745] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        