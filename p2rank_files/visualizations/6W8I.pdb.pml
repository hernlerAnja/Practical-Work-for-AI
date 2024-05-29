
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
        
        load "data/6W8I.pdb", protein
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
 
        load "data/6W8I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [140,141,298,296,297,996,1104,1105,1096,1097,1098,1099,157,1127,1128,155,312,314,311,313,318,338,339,1147,1109,650,651,1023,1024,1025,132,175,176,177,124,125,127,128,624,632,643,475,599,1116,1112,1114,405,494,294,582,583,584,388,362,364,365,564,562,565,383,382,385,381,384,517,477,598,281,621] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [2452,3019,2242,2244,2563,2596,2602,2605,2089,2132,2229,3093,3094,3095,3101,3120,3121,3122,3123,2354,3104,2332,3092,3091,3110,2564,2565,2357,2360,2469,2470,2333,2580,2584,2579,2383,2356,2991,3020,3098,3099,2102,2103,2106,2133,2245,2246,3100,2627,2631,2086,2087,2090,2131,2624,2632] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [5024,5026,4637,4997,4461,4584,5025,5097,5098,4585,4241,4601,4610,4087,4088,4603,4629,4632,4636,5105,4137,4258,4104,5106,4101,4254,4256,4135,4136,4085,4084] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5199,5201,5198,5244,5203,5208,5212,5246,1649,1652,1653,1699,1726,1727,5354,5355,1761,1762,5318,5139,1645,1648,1634,1637,1628,5200,5196,5242,5156,5133,5192,5369,5370,5371,4960,4961,4963,5135,5253,5252] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [7122,7124,2147,2149,2214,2215,2217,2162,2163,2216,2064,7187,7085,7109,7168,7169,7164,7167,7158,2593,2594,3042,3043,7170,2148,2146,7184,7324,3041,2614,2597,2599,2600,2071,2073,2613,2090] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5163,7217,7219,7220,7221,7222,5177,1509,1521,1522,7218,7224,1506,1507,1501,5176,5207,1638,1640,1641,1642,1643,1639,1637,1611,1612,1617,1487,1632,1463,1481,1480,1492] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [501,502,503,504,505,506,275,222,224,216,219,221,217,223,591,499,500,38,40,39,256,255,257,262,265,254] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [1466,1209,1210,1479,1174,1159,1160,1165,704,1472,7498,7500,1536,1537,7496,7494,1195,666,667,999,1000] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4256,4569,5105,4461,4584,5098,4585,4388,5128,5115,5117,5129,5099,5100,4479,4478] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [5212,5213,1603,1605,1621,1622,1779,5336,1804,1619,5325,1760,5211,5326,5329,5640,5337,5259] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [8019,8022,8024,8015,8016,4088,4602,4604,4605,4154,4156,4157,4228,4071,8034,4618,4619,4229] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [2205,2207,2479,2475,2477,2474,2001,2000,2002,2169,2171,2174,2176,2170,2172,2173,2202,2213,2481,2476,2478,2480] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [4770,4771,4738,4719,4720,4721,5053,5060,5062,4769,4805,4807,4672,4671] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4525,4560,4562,4017,4018,4057,4058,4039] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4486,4488,4490,4183,4184,4217,4219,4194,4214,4215,4216,4218,4220] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [6515,6516,6560,6561,6477,6498,3461,3498,3496,3497,6466,6593,6590,6591] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5344,5346,5310,5884,5342,5343,5345,5347,5348,1768,1830,1832,1913] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [4109,4110,4116,5172,5235,5158,4118,5190,5188,5191,5187,5189,5234,4108,4117,5001,4119,4975,5012,5011,5002] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [779,781,686,745,685,810,1059,728,1052,808,1060,1061,726,776,802,777] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        