
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
        
        load "data/6Q0K.pdb", protein
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
 
        load "data/6Q0K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [619,633,634,639,640,690,299,950,625,413,416,967,970,949,436,965,415,680,650,298,269,270,273,689,253,718,252,255,615,600,597,611,612,608,609,616,694,635,698,302,701,704,471,664,431,432,433,528,529,530,531,547,550,933,936,544,545,546,549,561,562,565,564,914,915,916,266,267,590,493,509,511,490,512,510,513,491,496,489] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1288,1292,536,1271,1269,1272,1257,1179,1182,1180,1181,1247,951,952,934,935,936,937,515,529,531,532,533,550,955,938,1202,1246,918,921,501,1152,1164,1167,1307,1289,971,954,495,497,498,500,513,516,496,480,481,1144,1148,1166,972,975,1147,1285,1286,1287,968,970,950,969] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2364,2367,2350,2366,2576,2579,2577,2578,2592,2593,2594,2595,2609,2362,2363,2347,1907,1925,1928,1906,1909,1910,1913,2701,2704,2700,2719,2382,2346,2348,2614,2329,2330,2333,2610,2662,2665,2666,2681,2684,2658,2659,2699,2326,2327,1927,1943,1944,1945,1948,2683,1962,2669,2381,2384,2564,2553,2556,1892,1908,2559,2387] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2052,2101,2102,2031,1957,1959,1962,1927,1940,1943,1942,1944,1945,1664,2002,1977,1961,1973,1974,1976,1992,2024,2027,2345,2326,2327,2348,2329,2330,2008,2009,2012,2328,2001,1828,1921,1923,1922,1925,2360,2361,2362,1704,1707,1710,1685,2092,2045,2046,2047,2028,2105,2106,2113,2116,2110,2130,1665,1714,1667] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1828,1920,1921,1923,1924,1922,2382,2361,2362,2378,2052,1943,2076,2059,2062,2085,2088,2056,2089,2092,1902,2379,1883,1901,1903,1904,1905,2055,2058,1825,2037,1843,1827,1848] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1455,1456,1452,1521,1744,1443,1462,1463,1466,1515,1518,1520,1759,1566,1774,1760,1740,1556,1784,1546,1527,1432] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [50,54,44,322,115,372,368,96,144,347,348,351,154,352,324,328,361,362,332,325,20,106,108,109,134,103] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3019,3297,2950,3001,2979,3281,3402,3004,3003,3318,3319,3322,3321,3295,3317,3302,3298,3299,3384,3387] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4526,4461,4460,4071,4068,4456,4457,4458,4089,4523,4437,4438,4441,4436,4118,4114,4086,4088,4107,4085,4142,4158,4541,4140,4143] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        