
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
        
        load "data/4CRL.pdb", protein
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
 
        load "data/4CRL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1392,1395,1388,290,292,293,1259,1260,1267,885,887,890,264,1248,1247,456,458,558,819,315,314,252,253,257,258,261,256,663,1387,1283,1284,902,869,871,870,2769,2770,903,664,441,840,2768,843,834,884] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [1494,1495,1519,1518,1530,1532,886,888,891,1520,1246,925,926,883,920,921,924,1790,1791,918,1746,958,956] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [2815,1177,546,547,578,1189,1193,1195,1221,1407,1414,1200,1201,1459,1460,2811,3648,1427,3649,3650,3647,1458] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [4087,4095,4098,4140,4141,4139,4442,4446,2860,4447,4448,2846,2848,2861,2863,4439,4441,4132,4165,2827,4090,2845] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3539,4941,3831,3838,3839,3841,4939,4937,4938,4965,3855,3834,3850,3851,3854,3837,4918,3538,3524,3525,24,25,4978,3885,3886,4988,4969,4974] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1598,2087,2479,2480,1562,1561,2050,2032,2051,2054,2076,1613,1636,1637,1638,1660,2488,2473,1595,2075,1599] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [4778,4780,3146,3106,3148,4818,4372,4375,4377,4378,4754,4817,2971,2972,4755,3005,3032,4383,4385,3180,4380,4386,4382,4414] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1006,1007,1008,2629,2640,1010,1011,1040,2596,1041,2594,2624,1762,2336,2331,2335,2337,2324,2380,2365,2366] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3331,3378,3247,3248,3249,3354,3218,4355,4353,4352,4328,4326,4329] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2463,2464,2020,2021,2023,1968,1967,2246,2248,2252,2425,2447,2458,2459,1971,2423,1975,1988] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4621,4624,4584,4508,4510,4712,4676,4677] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1643,1648,1649,1652,2519,2522,2524,1674,1647,1155,1161,1645,1124,1127,2530,2502] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [670,1331,1373,1374,687,824,825,827,1330,1332,669,662,665,820,823] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1985,1990,2191,2143,2005,2068,2070,2071,2114,2061,2142] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3475,3477,3481,3051,68,63,3508,3503,41,62,66,58] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [4828,4830,3188,4368,3226,4876,4857,4827,4822,4825,4853] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [359,696,808,435,358,682,683,434,416,399,189,694,200] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        