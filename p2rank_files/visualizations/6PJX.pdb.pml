
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
        
        load "data/6PJX.pdb", protein
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
 
        load "data/6PJX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1743,2156,1642,2611,2694,2612,2577,2695,2031,2692,2161,2173,2176,2581,2595,2700,2702,2697,1607,1643,1756,1587,1593,2579,2220,1596,1599,1605,1606,2587,1588,2172,126,2182,2183,2184,2187,2193,1590,1591,3873,2194,2195,2197,3859,2201,2202,2203,3921,3879,3880,3881,3854,3856,3872,3874,95] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1681,1694,1522,1521,1481,1517,267,4203,1698,1705,255,258,259,2063,1444,1472,1473,1474,1452,1491,4164] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1607,1609,1610,2545,2546,2563,2839,1612,1888,2721,2722,2723,2581,2595,2701,2702,2562,2703,1775,1611,1757,1758,1620,1622,1917,1621,1850,1623,2577,2713,2714,2715,1599,1605,1606,2585,3950] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4955,4489,4952,4491,4493,1542,1561,86,87,4477,4516,1541,64,85,1556,1566,1567,1570,1577,3897,32,62,65,33,36,4956,3896,59,61,1548,1557,1555,4478,4482] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4220,4186,1997,2040,4153,2035,2036,2053,2037,2678,2679,1989,4152,1722,1733,2159,2163,2165,2171,1717,1718,2625,2164,2628,1735,4219] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3538,3539,2788,3500,2966,2776,2501,3574,3575,3577,3545,2965,2964,2956,2957,2960,2968,3537,3540,2973,2972,3492,3493,3494,2936,2945] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1542,1563,86,4509,4510,4511,84,113,1564,1674,1540,117,114,143,144,146,147,184,200,1687,1688,186,196,197,4479,185,190,157,1686,1684] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2579,2219,2260,2221,2583,2585,3143,3144,3116,3073,3104,3112,2261,3154,3152,2570,2559,2860,2862,2840,2844,2561,2571] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1550,1551,1552,1654,1765,1766,1767,1504,1506,1507,2081,2134,2080,2097,2098,1527,1500,1502] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [41,4698,4696,4699,53,4709,4710,4712,3889,3890,3849,3852,3855,70,73,102,3871,4695] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [549,550,661,688,468,511,513,1201,458,540,542] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [466,467,468,513,1202,685,686,711,708,743,744,745,1170,688,689,709] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1997,1998,2000,2007,2405,2659,2009,2661,2662,3752,3732,1995,2628,2657,2658,2660] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        