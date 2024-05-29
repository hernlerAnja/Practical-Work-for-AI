
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
        
        load "data/6RCH.pdb", protein
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
 
        load "data/6RCH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [395,1175,1177,1178,1179,1061,1180,1183,1184,1186,654,434,435,628,125,165,166,167,168,272,274,615,646,648,257,259,653,627,634,112,115,117,260,262,268,651,652,659,1081,697,667,671,672,1051,1053,1050,1080,113,119] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [3562,3563,2598,2600,2604,2607,2599,2602,2610,3543,3660,3532,2652,2755,2650,2651,3668,3115,3533,3535,3152,3156,3182,3119,3136,3133,3144] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1825,4648,1824,4676,4708,4705,1742,1745,1750,1751,1730,4706,4707,1438,1451,1452,1749,1448,1444,1865,1439,1443,1834] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [724,4775,4776,689,733,696,735,686,4737,4735,4736,4708,4709,4828,4830,4831] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1046,1438,1464,1044,1045,1451,1452,1465,1671,1673,1749,687,689,756,1054,688,4708,4706,4707,4709,4747] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1750,1751,4706,4707,4709,4747,4710,4711,4716,4678,4676,4705,1452,1671,1673,1749,689,756,1705,1710] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [825,827,831,2393,2395,2368,2374,2376,820,2266,2267,2306,2307,2309,2275,2280,2276,2278,849,819,852,850,851,2282,858,861] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [4744,4747,4711,4713,4716,4785,4783,4482,1703,1704,1705,1710,1711,755,1749] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [666,1086,1101,1125,1093,1127,665,705,2433,2431,2446,1134,2428] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4101,4429,4387,4398,4403,4405,3950,4204,4364,4373,4103,4558,4562] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [132,1022,1038,1039,133,137,1023,1208,1428,1416,1426,125,129,130,131,1186,1051,127] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [696,697,667,671,672,1051,1052,1053,1054,1050,724,113] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [405,549,415,416,445,443,519,376,548,545] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4289,4330,4215,3904,3908,4299,4288,4290,3916,3917,3913,4207,4211,3903,3909] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [4887,3150,3190,4885,4883,4900,3568,3575,3151,3607] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3498,3499,3506,3490,3504,3897,4080,3965,3489,4013,3964,3936,3933,3894] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [2107,1739,1893,1636,1972,1919] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        