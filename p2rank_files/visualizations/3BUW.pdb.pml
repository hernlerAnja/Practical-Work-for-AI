
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
        
        load "data/3BUW.pdb", protein
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
 
        load "data/3BUW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1918,1887,4072,4073,1908,1909,1911,1913,1914,1915,996,1917,1921,1936,1938,1934,2148,2133,994,1885,1888,2004,2504,1551,1552,1553,1550,4076,4081,4083,1919,1926,1928,1582,1583,1555,1557,1560,2137,1905,1916,2136,1930,2134,1031,1030,4103,4104,4074,4075,3983,3984,4097,3982,2517,4055,4062,4063,4066,4067,4068,4069] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1523,1524,1517,1493,1494,1495,1496,1492,1478,1482,1486,1487,1488,1489,1483,1475,4499,4482,4484,4495,4478,4493,4494,4467,4500,4516,4468,1404,1402,1437,1438,1434,1435,1436,5097,5095,4584,5084,4133,1501,1503,1433,1408,1412] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4497,4501,4496,4499,4485,1523,1496,4132,4133,4130,4131,4135,1503,4139,4508,4510,4498,4713,4714,4717,4716,4514,3610,3611,4137,4162] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2302,2228,2230,2285,78,80,2442,2441,2443,2455,2457,53,54,2316,2384,2383,2312,2468,2469,2300,2301,61,68,2405,2344,2410,2342,2318] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [4880,4881,4882,4808,4810,5048,5049,5035,5037,5038,4990,5021,5022,2641,2648,2658,2660,5023,4896,4964,4963,4892,4898,4922,4924,4985,4886] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [328,928,888,889,890,929,311,1960,1961,1966,1967,1971,1995,325,319,329,334,322,332,327,1962,337,336,987,362,988,378,372,960,964,965,1974] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3545,3536,3544,2917,3538,2908,3470,2914,2916,3509,2899,2909,4575,4524,4551,4542,3540,2942,2944,3567,3568,3508,3468,3469] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [407,409,1021,1044,1045,1047,1078,432,2147,2153,2151,1049,1052,1076,2154,2156,356,357,4,398,401,366] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1530,1865,4445,4453,4085,4088,4089,1863,1873,4091,4101,4102,1526,4107,4110,4079,4100,4106,4418,4420,4419,4443,1510,1511,1522,1499,1521,1527,1839,1840] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4731,2936,2937,4734,4736,2946,2987,2981,2978,4733,3599,3601,4727,3625,3658,2989,3012,3627,2950,2925,2584,3628,3632,3629] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1691,1655,1657,1685,1720,2171,1051,1080,2172,1172,1174,1176,1082,1180] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4271,4751,3754,3756,3760,4265,4237,4235,3660,3662,4300,4752,3752,3757] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2517,4018,4055,4014,4016,4015,4017,4013,3988,3984,4097,3982,2004,2504,2031,2503,2515,1914] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [973,760,761,735,1596,1597,1002,981,982,736] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4508,4152,4173,4176,4177,4156,4132,4129,4131,4127,4506,3553,3554] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4176,4177,3340,3315,3316,3341,3552,3562,3553,3582] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        