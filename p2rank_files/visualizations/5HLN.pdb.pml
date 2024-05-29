
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
        
        load "data/5HLN.pdb", protein
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
 
        load "data/5HLN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1813,3206,1812,3227,3159,3165,3173,3177,3162,3160,1804,1805,1806,3962,4222,1808,1807,1811,1837,1838,3208,3210,1827,1832,1833,1862,1863,1847,1872,1563,1828,1830,1831,1826,3205,3212,3237,4151,4152,4153,3215,3216,3217,2065,2066,2060,2038,2039,2043,2055,2057,1786,1789,1814,1846,1795,3222,3169,4137,4132,4133,4135,4138,4131,2995,2996,4223] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [443,445,442,449,452,464,232,4585,1339,453,1341,391,396,228,4594,4595,1168,1428,1427,4855,4856,4829,4833,4850,4828,4847,4827,1343,1357,474,1359,447,4627,4628,4618,4621,4622,4653,4601,4602,4603,4637,444,446,4636,4660,414,4661,4662,397,399,4578,4579,4604] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4012,4000,3008,4110,3024,3025,3026,3002,3003,3005,3007,3004,4109,4111,4112,4115,3138,3137,3549,2971,2974,2977,4001,4002,3600,3581,3574,4029,2975,3565,3567,3580,4028,3122,3550] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [806,832,1235,780,787,212,1234,766,777,208,211,213,214,220,771,1208,1206,1207,1218,833,239,240,242,244,245,263,374,375,1315,1316,592,593,755,261,262,359,760,1317,1321] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3972,4134,4135,4138,4139,4117,4118,4131,2995,3139,3153,3154,3155,3971,3988,3989,2997,2994,2996,2998,2999,4132,4133,3247,3169,3172,4005,1785,1791,1794,1795,1796,1804,1805,1806,4245,1808,1807,1811,3227,4252,4253,4256,4257,4260,4261,4262] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [878,880,969,942,966,964,968,843,1253,1255,1256,967,1005,965,842] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3660,3662,3636,3637,4035,4036,4050,4047,4049,5325,3730,3760,3762,3763,3672,3674,3761,3798,3799] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3129,3146,3147,3148,2794,3526,3420,3437,3438,3032,3033,3035,3036,3037,2950,2808,2810,3419,2926,2928,3130,2795,2951] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [269,270,272,273,274,188,385,732,675,366,367,655,657,32,33,165,46,187,163] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1985,1998,1999,2000,4359,4773,4775,4782,4774,4787,4788,4789,4781,1586,1587,1588,1984,4790,1568,1569,4348,1575,1581,4799,1580,4361,4763,4365,4370,4378,4377,4379] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2354,2359,1111,2366,2666,1613,1614,1109,1108,1615,1616,1619,1607,1606,1608,1609,1643] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [234,232,464,462,1339,460,466,477,459,1323,1337,1338,391,376,484,406,409,236] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1211,1470,1471,1210,1504,1505,1707,822,1488,1489,1490,1491,1492,1493] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        