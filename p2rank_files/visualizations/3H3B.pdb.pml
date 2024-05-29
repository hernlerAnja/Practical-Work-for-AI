
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
        
        load "data/3H3B.pdb", protein
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
 
        load "data/3H3B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4490,2827,2828,2830,2844,2845,5967,2829,2582,2583,4476,2824,2831,2836,5970,5972,2818,2814,4473,4327,4339,4340,1320,4321,5968,6159,6322,1057,1305,1303,1304,1058,1292,1293,1298,1299,1289,6305,2588,6172,2589,2590,1063,1064,1065,4338,4491,4136,4489,5969,5949,5950,5982,4483,4485,4497,6321,6323,6317,6320,4135] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [524,339,341,335,336,347,346,352,793,795,792,533,534,2053,779,780,522,523,527,529,1628,1632,1653,128,129,102,105,112,109,544,546,803,543,356,777,783,1062,2071,1857,1859,2048,1882,1651,1652,2296,2314,2587,2298,2311,2312,1863,1865,1860,1634,1635,2299,2302,2051] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2230,2233,1608,2224,2301,4352,807,808,809,810,4353,890,2580,2293,2565,2566,2223,4348,4333,4345] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4118,4137,4138,4139,4140,4150,6328,4686,4689,4117,4722,1319,1309,1310,1311,1324,1325,1136,4700,4702,4693,4161,4163,4690,4133] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [775,712,713,714,774,1041,2329,1067,782,85,2327,2328,6184,6185,2319,2409,2326,2408,6177,6165,1055] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2835,2836,2837,5970,5972,6525,6518,2661,6522,6533,5949,5950,5982,5983,6554] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [1288,6287,730,6208,6209,739,6177,6190,6191,6186,6189,713,709,710,722] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [838,830,842,843,846,847,915,916,1470,1471,1472,3288,3271,3273,1346,926,1344,1367,1369,1352] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [830,842,846,848,3271,3812,1368,4734,3328,3330,3802,3804,3258,3269,3263,3267,3329,3250,1369] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6049,6050,6072,6060,6065,6066,6067,6069,6063,6047,5206,5207,5553,5555,5203,5706,5208,5578,5554] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2869,2871,2977,2431,2434,2435,2445,2892,2894,2349,2976,2365,2367,2374,2978] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5652,4869,5647,5669,5667,5670,6232,6233,6218,6217,6096,6087,6092,6095,5673,6099] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [5259,5217,5356,5370,5527,5369,5198,5199,5263,5363,5275] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [6517,2353,2878,6513,6559,5660,6135,6133] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1049,1124,1456,1458,1121,1125,1105,1120,932,934,1101,1100] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [5619,5628,5629,2893,2894,2349,5086,5088,2366,2367,5075,5147,5149,5621] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4386,3830,4263,4268,4264,3847,3850,3852,3853,3056,3856,4267,4402,3052,4255,4260] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [3458,3552,3553,3710,3382,3709,3708,3718,3400,3582,3583,3381,3546] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        