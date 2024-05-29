
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
        
        load "data/6P69.pdb", protein
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
 
        load "data/6P69.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1277,1278,1285,747,1200,366,375,748,545,1284,512,513,379,381,382,383,250,252,489,251,763,198,367,631,752,629,759,764,767,768,732,730,1185,1171,1201,785,786] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1770,1788,4075,4077,1787,1771,1776,1906,1907,1924,4086,4087,1799,4084,4205,4206,4219,4226,4232,1931,1932,1934,1700,1703,1923,1920,1927,1933,4233,4229,4230,4231,1938,1945,1948,1951,4237,1956,1740,1760,1757,4069,4223,4224,4070,4002,3999,4243,4244] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2675,3051,3055,2673,2506,2574,2559,2560,2676,2678,2683,2507,2853,2934,2935,3050,2691,2687,2689,2819,2821,3596,3066,3067,3070,3499,3500,2503,3576,3577,3578,3585,3583,3088,3035,3033] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3785,4095,3743,1893,1858,1859,4061,4082,1892,4094,4100,3716,3717,3761,3745,1867,4088,4089,4090,4092,1829,1830,1831,1857,4091,4099] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4373,4370,4372,4213,3944,4174,3941,3803,4078,4079,3780,4225,4200,4208,4218] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1875,1504,1642,1779,1481,1675,1645,1780,1909,1919] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1446,1418,1444,1796,1462,1762,1486,4192,1790,1791,4128,4129,4130,4125,4154,4156,1795,1800,1783,1789,1793,4166,4191,4159,4155] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1368,1366,1365,1468,1469,1148,1467,1506,1507,1585,1147,1134,1135,1137,1146,1583,1149] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1598,1599,1601,1603,1609,2146,1082,2158,2162,1054,2141,2144,2147] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1172,1176,1713,1423,1425,1424,810,1437,1451,1449,1453] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        