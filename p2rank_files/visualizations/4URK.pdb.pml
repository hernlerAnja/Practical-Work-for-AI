
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
        
        load "data/4URK.pdb", protein
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
 
        load "data/4URK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4927,4928,3379,4926,5070,4956,4957,1100,1102,1104,1105,4953,4959,4964,4954,4958,1128,1126,1127,1097,1088,3342,3376,3378,482,3345,3346,467,1063,1061,1062,1058,1064,1068,1074,1089,460,3649,466,468,3647,943,945,4458,4459,1076,3365,3366,3684,3681,3683,3369,3407,4869,4929,4905,4906,5083,4930,4931,5067,5170,5169,5171,4460,3646,963,448,960,961,962,5090,5100,5084,4444,4457,4478,3726,3728,3680,3682,3679,4454,4468,4469,4870,4995,5031,538,540,548,4993,4994,4991,4992,5021,496,1091,5175,5027,5032,5051,5030] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5821,5822,5825,5826,5828,4799,5820,4779,5739,5740,5207,4636,4637,4797,4615,4613,4614,4616,4635,4629,4865,5079,4778,5161,5162,4777,5166,5180,5178,5081,5817,5819,5076,5077,5186,5183,5851,4600,6785,4590,4597,4570,4556,5243,5244,4568,4569,4571,4582,4564,4565,4572,5715,5221,5222,5215,5724,5853,5697,5716] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [954,955,429,430,1225,3635,3970,3636,3638,3640,3968,1262,4422,4424,3668,3670,4465,4466,3634,3641,3642,445,446,447,448,975,3993,3994,3995,3996,4487,4488,1254,3962] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [2242,3179,6333,6424,3186,2594,2605,2601,2615,6302,2595,6277,1599,1600,2243,2609,3187,3184,3185,1610,3197,2828,2864,2865,3198,2827,2829,2833,3146,6387,6394,6391,6392,6395,6396] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1992,1704,1705,1706,1708,1709,1452,1455,1457,1993,1967,1968,1511,1703,2221,2222,2223,1472,1454,1484,1470,1479,1480,1481,1482,1504,1488,1500,1707,2003,2004,1434,1436] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [6337,3461,3761,4846,6338,6344,6345,6346,6330,2272,2273,2259,2271,3779,3808,3789,3790,3781,4829,6360,6359,6354,6358,5134] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3094,496,6227,6229,4961,4962,5002,3111,3113,3390,3352,3353,3354,497,3098,3321,4939,4940,4970,6253,4963,4964,4965,4935,3105,3107,3114,3104,3106] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2302,2303,227,228,3510,2300,2301,2304,183,189,193,195,211,2305,2309,2314,3840,2045,2047,2129,2041,201,203,204,235] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5610,5927,5791,5812,5929,5731,5597,5810] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [5270,5267,5268,5269,6786,5235,5234,5700,5699,6756,6758,6793,5302,5306,5327,5329,5303,5714,5715,5716] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [6296,6326,6375,6325,6374,6376,6412,6294,5651,5659,5869,5657,6441,6438,6439] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [3487,3204,3483,3486,1572,1589,1573,1896,1906,1590,1593,3177,2287,2289,1578,2290,3465,1908,1909,2286] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5851,4591,4600,6785,4590,4597,5853,6776,5847] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4714,664,931,932,4705,665,683,667,4715,1189,1190,663,671,672,4706,4703,4708] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [513,562,624,545,1118,586,587] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [2296,3805,2298,3849,3850,2303,3509,2308,3814,3842,3813,3476] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [1587,3189,3199,2896,2897,3194,3205,2899,3209,3183] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        