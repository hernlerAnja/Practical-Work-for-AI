
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
        
        load "data/8AUZ.pdb", protein
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
 
        load "data/8AUZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [301,245,246,247,248,252,299,1248,4648,300,815,841,1277,812,1276,822,250,806,808,810,397,788,790,791,795,801,280,282,283,412,413,414,410,264,258,4288,267,1236,1360,1363,1364,1365,1366,1260,1357,1358,1359,523,1373,555,630,1387,1502,1220,1218,1219,1379,1380,1381,4627,4633,4630,4636,4637,856,866,867,840,4292,4322,1504,1505,1237,1513,1249,1250,1253] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3641,4048,4049,4046,4060,4076,4157,4158,4159,4077,1836,1837,3667,3046,3052,3100,3047,3048,3050,3590,3591,3356,3430,3197,3595,3612,1827,1833,4051,4052,4053,3615,3622,3080,3082,4166,4164,3064,3058,3083,3213,3212,3323,3101,3575,4179,4180,4181,4187,4020,4160,4163,4165,3354,3355,4173,1492,1522,4293,4304,4305,4308,4035,4037,4309,4312,4313,4019] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1599,1600,1608,1477,1609,1592,2081,3066,3086,3062,3059,3085,3093,3094,3221,3112,3223,2061,3042,1478,1584,1482,1484,3041,3549,3551] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4325,4318,4322,4331,4333,4330,4335,4627,859,4314,4035,4037,4312,4313,1518,1533,1534,1535,1525,1530,1532,1547,857,1749,1514,1513,1512,1546,1253,1792,3659,1827,4332,4334,4592,3657,4051,4052,4053,4346,4347,4548,4549] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4276,4277,4278,4410,4411,4409,749,751,4271,4272,4423,4827,270,285,4282,266,4392,4399,4881,4400,4861,4859,312,422,423,286,287,262,259,294,418,421] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1962,1991,2098,2071,2075,2082,2091,2094,2095,2083,1905,1940,1946,1947,2052,2053,1605,1607] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [4852,4871,4875,4882,4883,4891,4894,4869,4405,4407,4791,4853,4760,4762,4746,4705,4740,4747,4895,4744] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3512,3513,3567,2812,2871,2884,2060,3110,3108,3111,3112,3223,3107,3205,3026,2870,3001,3003,3025] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [310,312,712,713,423,4860,70,71,201,203,225,224,226,311,694,767,404,405,695,716,717] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3809,3810,3811,4097,3847,4084,4117,4120,3678,4098,4095,3677,3720,3721,3722] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4458,4461,4456,3951,3954,3950,3957,5199,5201,5208,3923,5508,5509,3925] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1661,2396,2399,2401,2408,2708,2709,1648,1649,1154,1656,1657,1658,1151] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        