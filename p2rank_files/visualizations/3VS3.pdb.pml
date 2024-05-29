
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
        
        load "data/3VS3.pdb", protein
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
 
        load "data/3VS3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3345,3347,3368,3370,3371,3372,3378,6850,3346,6948,6949,3373,3377,3398,3399,3429,3369,3189,3214,3216,3180,3150,3367,6720,6721,6852,3402,3467,3468,3394,599,598,606,6687,786,3478,3483,779,777,778,6719,6872,6873,6874,6875,6878,6896,6934,6972,6973,6903,6904,6907,4118,4297,4305,3183,6883,6696,6882,3443,3444,6655,6851,6685] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [6037,6038,6046,6040,5197,5198,5199,6039,6044,5953,5517,6049,5577,5579,5968,5969,5970,5583,5945,5026,5028,5081,5191,5080,5082,5195,5031,5556,5575,5576,5552,5029,5531,5516,5427,5532,5286,5313,5411,5553,5183,5513,5548,5428,5335,5410] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2483,2458,2088,2089,2090,2092,2096,2097,2121,1923,2550,2044,2482,2049,2070,2071,2066,2069,1593,1594,1595,1544,1538,1539,1696,1699,1541,2559,2551,2552,2558,2557,2580,2581,2030,1708,1710,1711,1712,1704,2045,2566,2568,1849,1939,1940,1941,2029] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3407,3382,610,3390,2252,2253,2254,3421,2219,2255,925,2231,2246,2220,917,3418,3431,934,936,940,950,931,937,599,3401,596,3432,3457,630,631,632,3463,962,634,667,665,960,597] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4129,4150,5741,5742,5739,5740,4186,4444,4450,4456,4149,4146,4153,4157,5717,5718,6895,4151,6887,6908,6919,4117,6923,6936,4436,4453,4455,4459,6937,6962,4479,6968,6926,6928,5705,5706,5707,5708,5733,6924,5711,5716] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1724,2003,2007,2008,1723,1794,1795,1793,2601,1773,1757,1725,1754,1731,2610,1727] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [5915,5917,5934,6041,5198,5199,6042,6043,6045,5914,5953,5058,5060,6098,6099,6065,6068,6069,6070,6073,5945] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2447,2466,2467,2586,2612,2430,1573,1569,1571,2427,2629,2583,2611,2558,2581,1711,1712,2582,2458,2459] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [501,1347,53,425,51,65,497,554,564,557,499,522,545,560,562,563,1326,64,526,513,652,1325,1330] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [6198,6201,6203,6228,6243,6245,6246,6247,6127,6128,5907,6172,5902,6075,6071,6072,6073,6123,6124,6125,6126,6095,5915,5917] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [114,116,288,289,1397,1401,142,113,282,284,286,394,396,1393,115] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3365,2306,2307,2308,606,590,618,3394,779,589] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3070,2938,3232,3234,3235,3236,3237,2830,3075,2937] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        