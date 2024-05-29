
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
        
        load "data/1Q3D.pdb", protein
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
 
        load "data/1Q3D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1770,1787,1789,1780,1781,1788,2932,2933,2934,2935,2939,2926,2947,2949,2948,2950,2951,2946,1763,3882,3884,3924,4028,4029,4030,4050,4043,4044,4045,4047,4051,3082,3190,4160,4049,3917,3915,3916,3900,3901] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1197,1301,1302,1303,1186,1189,372,1157,1324,1317,1316,1173,1174,225,4514,4515,4516,237,239,223,224,222,4497,230] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1197,1300,1301,1302,1303,1213,1295,588,1294,1296,1297,785,1185,1214,370,371,372,481,513,734,732,258,259,355,739,204,210,208,752,759,766,756,1304,224,222,221] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2968,2969,3065,3924,4024,4027,4028,4029,4030,3082,3080,3081,2916,2918,3512,3912,3486,3299,3940,3941,4022,4021,4023,3298,3466,3461,2914,2920,2932,2931] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1771,1772,4139,4143,4215,4216,4217,4146,4244,4141,1419,4252,1760,1766,1767,4178,4525,4498,4524,4499,1488,1489,1490,1517,1528,1412,1416,1414,4487,1438,4493,1797,1798,1451,1525] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1813,1968,1969,1985,4150,4152,1964,4134,4135,1778,1780,1781,4160,1923,1924,1974,1805,1806,1536,1538,1540,1803,1807,1836,1838,1879,1880] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3090,3091,3381,2978,2980,2977,2979,3072,2738,2869,2871,3073,2739,3361,3363,3380,3439,2975,2976,2894] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [670,363,159,161,42,29,15,28,267,183,184,265,269,270,651,712,362,653,266,268,381,379] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1425,4265,1424,4263,4565,4695,4711,4712,4696,4699,4702,4530,4532,4267,4651,4606,4607,4649,4600,4650,1407] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3641,3548,3549,3710,3711,3584,3585,3586,3946,3948,3958,3959,3962,3963,3981,3670,3672,3673,3674,3675,3648,5171,3953,3961] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [822,1236,1234,1235,1232,982,984,1221,821,857,946,947,948,859,1219,1254,1257] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2278,1594,1581,1582,1583,2267,2256,1590,1588,1589,1088,1090,2273,2276,2285,1584,2586,1086,1087,1351,1352,2585] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4507,4508,1433,240,241,1407,1408,1318,1320,4695,4711,4712,4540,1423,1425] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        