
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
        
        load "data/2YA3.pdb", protein
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
 
        load "data/2YA3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1753,1754,3032,3033,2577,3593,3597,3598,3599,3601,3156,3611,1887,2431,1749,1751,1752,2433,2434,2558,2409,2420,2421,2419,2416,2422,2423,2556,2557,2573,2576,1893,3163,3161,1888,3157,3165,1901,3031,1885,1886] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1149,1150,1152,1243,1244,1247,1252,1339,1059,1058,1063,1106,1090,1091,1093,1094,1353,25,1241,1148,19,20,21,23,18,1074,1242,1253,1337,1338,1573,1561,1574,1575] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3725,3738,3739,3737,3724,3745,3746,3747,3033,3602,3709,3710,3711,3712,2827,2828,2829,3610,3608,3607,2367,2375,2400,2401,2402,2403,2404,2568,2373,2378,2411,2424,2425,2567,3027,3028,3034,3037,3022,3026,3013,2856,2866,2863,2862] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [49,51,56,58,794,796,54,57,61,1235,1143,1160,772,797,1164,840,1180,1182,1175,1217,1219,1220,1398,798,799,802] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1868,1908,1909,1910,2242,2243,2244,1886,2248,2239,1857,1862,1900,1902,1937,2258,2260,2266,2429,2413,2415,1869,1870,2402,1887] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1372,1212,1667,1701,1704,1172,1187,1189,1696,1700,1698,1725,1209,1668,1186,1196,1669,1671,6,8,1726,1724,1167,1227,1373] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3156,3611,3137,3138,3591,3592,3606,1754,2577,3593,3597,3170,3173,3369,3370,3371,3421,3414,3422,3401,3403,3428,3184] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [826,55,57,570,592,795,73,74,820,127,159,573,130,125,88,89,818,825,830] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1858,1859,1860,1624,2163,2161,2162,1803,1827,1826,2231,2233,2235,2171,2174,2159,2157,2158,2166,2167,2210,2129,2126,2128] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2507,1258,1261,695,696,698,694,2495,624,632,2474,2496,2523,1279,1267] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [753,1834,1836,750,365,386,1835,367,392,393,781,233,235,212,779] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [820,159,573,791,57,592,795] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        