
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
        
        load "data/3H10.pdb", protein
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
 
        load "data/3H10.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2506,2379,3468,3469,2319,2320,2325,2326,2327,2377,2378,3324,2773,2489,2919,2926,2937,2940,3352,3353,2931,2322,2933,3419,2331,3473,3325,2967,2958,2961,3423,2505,2914] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [143,144,150,132,138,139,140,131,137,133,192,317,318,319,190,191,302,750,135,744,727,753,771,746,1232,1236,780,1137,1166,586,1164,1165,1282,1281,1149,1253] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4503,4505,4684,4555,4556,4557,4496,4497,4498,4502,4509,4951,5530,5531,4667,4500,4501,5115,5118,5109,5111,5097,5104,5514,5502,5529,5597,5601,5645,5646,5647,5145,5139,5136,4683,4682,5092] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [5783,5789,104,199,201,103,105,202,203,5787,5788,325,343,345,326,681,683,59,60,61,5773,5774,5782,5770,5796,5790] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5674,5675,5682,5705,5707,5922,5489,5506,5507,5995,5968,5921,5952,5161,5967,5698,5695] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1356,1355,1753,1442,1445,1447,3623,3629,3632,3938,3940,3542,3543,3547,3595,1362,3624,3634,3635,3627,3932,3567,3970] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [4662,5084,4975,4976,4977,4978,4979,4974,4598,4599,4601,4408,4409,4411,4645,4646,4640,4641,4643] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3444,3296,3439,3440,3441,3442,3443,3313,3293,3559,3554,3418,2349,3466,3484,3551,3552,3481,2624,3449,3447,2664] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4840,4842,5436,4839,4865,5627,5449,5457,5471,5464,5462,5463,4841,5606,4874,4898,4838,4837,5617,5599,5441] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [5471,5472,5474,5515,5463,5676,5625,5627,4842,5491,5617,5618,5619,5620,5621,5513,5512,5622,5606,667,5454] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1098,1099,1084,1102,1105,1106,1109,501,1097,1262,1252,1253,1256,474,475,476,477,462,1231,437,1260,1234] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1109,1367,1370,1371,1103,1106,1107,1108,1110,1090,1094,1559,1394,1393,1397,1084,1087,1088,1089,1360,1364,1409] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1109,1126,1372,1348,1363,1364,1365,162,1293,1297,1257,1294,1260,1149,1150,1254,1255,1279] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [610,46,47,234,297,275,276,278,611,612,613,719,280] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3277,3554,3596,3557,3579,3580,3581,3294,3295,3296,3312,3293,3290,3275,3281,3746,3551,3271,3276] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2906,2797,2798,2799,2800,2801,2233,2234,2484,2465,2467,2468,2421] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        