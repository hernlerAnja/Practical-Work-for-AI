
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
        
        load "data/7SZ1.pdb", protein
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
 
        load "data/7SZ1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5337,5338,10164,10189,10191,5349,5314,10092,10093,10094,10095,5185,5200,5201,10061,10072,5238,5239,5241,5277,5315,10066,10069,10070,5340,5342,10165,10205,5306,5312,5313,5305,5311,5187,5324,5440,5291,10162,8304,10073,10203,5172,5351,5180,5352,5182,5186,5193,10180,10181,10182,8300,8301,8302,8303,10144] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [6992,7293,7291,7294,7295,7296,7297,7299,1978,7298,1879,1882,1896,1900,1902,1885,1893,6989,6995,6999,7135,7303,6972,6973,6974,1883,1908,1907,6993,6975,6978,6979,2181,2184,2187,2183,2198,7088,2047,2048,7023,2193,2025,7003,7006,7012,7019,2189,1862,1864,1868,1869,7018,1913,7157,7158,1903,1905,1909,1921,1935,7308,7153,6903,6904,6963,6966] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4984,128,131,206,4961,204,205,63,70,77,62,236,239,240,241,242,91,129,82,83,78,88,90,92,72,75,5079,5081,231,232,5084,213,211,203,207,208,167,331,332,349,330,112,180,181,179,5032,5034,4987,3191,3193,4983,4985,4982,4962,4963,4969,5052,5053,5054,5055,3194,3186,3188,3190,3192,5070,5072,3183] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2250,2256,2177,2179,2172,2178,2347,2349,2166,2169,2171,2161,2233,2230,2227,2235,2236,7009,7081,7085,7086,2188,2186,7079,7010,2247,2364,2351,2352,2359,7285,7453,2366,2367,7286] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2259,2262,2270,2273,2917,2634,2635,2913,2915,2916,2332,2255,2421,2424,2228,2229,2216,2225,2234,2274,2275,2277,2157,2932,2426,2648,2232,2904,2905,2629,2628,2404] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [7282,7286,7287,7288,7289,7276,7281,1900,1899,7366,7367,7457,1967,7337,7340,7343,7345,7459,1975,1974] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5032,5034,5024,2661,2945,3165,3170,2678,2679,5035,2947,3177,3183,2464,82,83,2454,2509,2513,2515,2516,2456,2676,2448,2660] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [8342,8411,8449,8633,8918] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [8433,8959,8941,8942,8943,8969,8201,8202,8159,8413,8414,8417,8914,8151,8158,8403,8404,8934] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2067,2068,504,306,7052,693,694,7042,7043,7044,1802,1776,1777,680,1766,1775,1761,1778,1801,678,679,491,290,291,1767] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [5614,5788,5790,5804,5803,5401,5416,5601,5400,5602,1932,7178,7177,6911] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [8293,7771,7788,10144,10145,7563,7564,10134,7626,8280,5192,5193,7786,7561,7623,7625,7558] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [359,555,4871,4870,4855,4865,812,556,4879,4851,123,152,154,357,378,552] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [9981,9980,5262,5263,5264,5233,5467,5469,5488,5661,5662,5666,9960] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [7328,7329,8263,8274,8276,7331,8275,7574,7573,7763,8041,8264,7756,7757,7760,7761,7326,7327] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [6668,6753,6772,6655,6659,6662,6755,6880,6881,6882,6064,6274,6278,6597,6599,6600] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        