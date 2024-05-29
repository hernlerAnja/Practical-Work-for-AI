
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
        
        load "data/5VND.pdb", protein
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
 
        load "data/5VND.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [744,748,368,755,760,231,230,232,179,176,759,1258,1287,1288,763,781,383,514,384,546,547,627,626,1364,1365,1372,1371,212,211,371,376,380,726,728,743] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1782,4322,4329,2017,2024,4326,4333,4325,4332,4339,4340,4319,4315,1864,1866,1867,4171,4173,4301,2030,1985,1986,2003,2004,2002,4182,4180,4183,1849,1850,1855,1878,2009,2010,2013,2006,2011,2012,4165,4098,4135,1819,1839] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3035,3152,3156,3168,2791,2792,2922,2788,2775,3151,3136,2954,2955,3702,2776,2593,2594,2591,2646,2647,2784,3605,3606,3171,3689,3690,2589,2590,2595,2596,3682,3683,3684,3691] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1579,1580,1581,1664,1458,1440,1425,1441,1221,1417,1428,1663,1235,1540,1233,1234,1236,1543,1541,1542,1445,1402,1405,1408] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4466,4468,4070,4037,4040,4269,4270,3893,4470,4471,3870,4233,3863,3868,3869,4321,4174,4314,4296,4304,4175] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [4317,4442,4405,4407,4408,4306,4307,4334,4336,4337,4377,4378,4379,919,921,900,928,886,927,929,4328,2035,881] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1954,1577,1721,1724,1554,1754,2005,1980,1988,1859,1998,1858] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3754,3755,3756,3794,3757,3552,3553,3554,3857,3858,3539,3551,3795,3723,3980,3738,3767,3761,3896,3859,3860,3897] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1519,1517,1490,1491,4254,1523,1841,1535,1559,1869,4224,4225,4253,1862,1865,1868,4262,1852,1870,1872,1874,1875,1879,1880,4226,4287,4288] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3851,1938,3807,3833,3835,3806,4157,3875,1946,1972,1936,1937,1908,1909,1910,1971,4178,4181,4184,4188,4191,4185,4186,4195,4190,4196,4199] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2791,2792,2921,2790,2892,2893,2888,2891,2808,2863,2865,2866,2868,2899,2628,2631,2619,2620,2629,2630,2646,2616,2612,2617,2608,2609,3710,3712] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1792,805,806,1255,1259,1261,807,1497,1263,808,1524,1526] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1810,1062,2080,1028,2347,2348,1030,1026,1029,2042,1054,2045,2050,2056,2039,2041] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        