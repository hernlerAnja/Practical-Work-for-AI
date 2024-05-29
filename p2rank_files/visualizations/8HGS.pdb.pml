
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
        
        load "data/8HGS.pdb", protein
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
 
        load "data/8HGS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7215,7216,7217,7229,1865,1866,1867,1851,7241,1879,1891,1885,1888,7201,7198,1845,1846,1847,7196,7195,7197,7380,7381,7526,1896,1892,7126,7202,2170,7520,2167,2166,7517,7516,1776,7235,7242,7246,1848,1852,2030,2031,7311,2176] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [2210,7303,2152,2154,2149,2213,2216,2217,2239,2240,2327,2330,2331,2214,2218,2215,2219,2233,7308,7309,7304,7307,2162,2349,7512,7510,2234,2169,2171,7232,7233,7509] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [2162,7512,7680,2160,7589,7699,7583,7584,7677,7681,7567,7566,7568,7563,7564,7565,7569,7519,1882,1883,1958,1959,7521,1954,1957,7502,7504,7499,1953,7560,2159,7590] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [1607,6957,6958,6866,6867,6956,1516,1517,1518,1608,6962,6972,1622,7032,6863,6879,6880,1683,1513,7033,1529,1530,1606,1612,1616,1625,1682] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [8498,8499,7994,7796,7781,7789,7787,7825,8497,5273,5275,8011,7842,7846,5264,7849,8503,8278,8280,8516,8517,5395,6034,6035,5394,5225,5274,5272,5237,5415,5416,8518,8519,8524,5406,5407,5411,5403] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [4887,4889,4888,4851,3153,3166,3168,3169,3167,3174,4839,4886,4878,44,301,53,56,57,61,65,66,291,685,684,45,2431,2437,2475,2492,2659,2496,2499,2644,2928,2930,3148,2661] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [2044,2047,7265,7266,2051,2035,2050,661,1745,1746,473,474,475,662,663,1741,1738,1735,1739,2058,1784,1785,1786,18,677,676,7293,289,272,273,274,33,16,17,487] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [7401,5639,1915,5837,5623,6011,5823,5824,5825,6012,6013,7085,7088,7089,6027,6026,7408,5366,5367,5368,5383,5622,5624,7397,7400,1916,7091,7095,7096,7134,7135,7136,7385,7394] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [7603,7606,7607,7592,7595,7757,7759,7665,8249,8250,7966,7967,7968,7758,7588,7610,7549,8265,7558,7561,7978,7981,7982,7562,7565] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2617,2618,2899,2315,2900,2407,2408,2409,2616,2242,2245,2253,2256,2238,2260,2915,2628,2631,2632,2212,2257,2215,2208,2211,2199] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [5565,5535,5537,5564,5540,5538,5539,5464,5508,5294,5295,5224,5561,5319,5575,5410] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [2670,2835,3063,3040,2981,2834,3055] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [8020,8405,8413,8331,8390,8184,8185] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [1942,1943,7391,7392,5398,5399,5638,7394,8485,8508,8712,7481,7482] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [4838,190,114,158,188,189,185,214,215,211,225,4933,187,4909,4908] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [3296,3227,3215,3397] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [8646,8577,8747,8565] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [8883,8668,8679,8882,8884,9141,9144,9205,9204,9117,8840,8651,8681,9200] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [3329,3331,3854,3850,3791,3855,3301,3532,3533,3534,3794,3318,3490,3767] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [215,4947,180,150,148,151,153,4814,189,112,4816,4909,4930,4944,4945,4946,4810,4823] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        