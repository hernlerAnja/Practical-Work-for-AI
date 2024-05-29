
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
        
        load "data/7SZ7.pdb", protein
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
 
        load "data/7SZ7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5181,5183,5186,5189,5191,5193,5194,5174,8297,8299,8301,8303,10215,10216,5173,5351,5352,5187,10140,10142,5242,5195,5200,10143,10144,10147,10151,5202,10213,5343,10197,10200,10212,8305,10141,5188,5319,5323,5324,5353,5290,5317,5201,5442,5223,5292,5441,5350,8296,8294,8302,8304,7789,10183,10185,10186,10176,10187,7620,7630,8056,8058,8281,7565,7566,7772,8277,7567,7787,7624,7626,7559] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [3191,62,5104,5031,5029,5030,5086,5089,5102,232,82,83,5036,5033,5032,70,78,77,80,84,89,90,91,131,242,204,203,205,229,206,208,207,2945,2947,3170,3183,3184,3193,3185,3192,3186,3187,3188,3189,3190,5083,3166,2676,2678,2509,2515,2519,5065,5066,5073,5075,5072,5074,5076,2456,2454,2492,2661,2448] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1879,1885,2025,2183,2193,6996,7004,7008,6993,7007,7089,2185,2187,2184,2181,1864,1862,1863,1865,1868,1869,6994,6995,7019,7024,2199,2048,7020,7023,1792,1794,1882,1893,1896,1883,1902,1905,1909,1913,7304,6990,6980,7136,6979,7158,7159,6976,6974,6973,6975,7292,7295,7296,7297,7298,7294,7300,7309,1978] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1900,1899,7299,7300,7288,7289,7290,7280,7281,7321,7322,7323,1975,1976,1973,1974,1970,7476,7477,7478,7361,7362,7462,7470,7368,7458,7460,7367,7341,7344,7346,7347] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2251,2235,2236,7081,2233,2166,2169,2171,2349,2211,7085,7086,7087,2212,7010,7011,2179,2188,2189,2172,7089,2250,2366,2367,2257,2256,2347] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [6810,6759,6653,6657,6740,1532,6811,1602,6719,6720,6734,6646,6713,6641,6723,6731,6735,6736,1530,1628,1629,1632,1633,1642,1698,1699,1623,1700,1639,1537,1540,1624,1542,1544,1545,1547,1548,1549,1646] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [7178,7184,6889,7179,6874,6910,6912,6913,6914,5790,5791,6873,5789,1960,7172,7173,7175,1932,1931,1936,1933,5161,5417,5611,5615,5804,5805,5145,5401,5402,5146,5603,5602,5599] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [6749,6810,6740,6735,6734,1530,6751,6760,1629,1633,1637,1642,1699,1640,1641,1722,1655,1639,1646,1649] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [7345,7370,7336,7339,7366,7340,7343,7387,7388,7381,7385,7759,8268,8043,8028,7373,7740,7517,7516,7536,7537,7535,7745,7746,7327] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [5263,5264,5265,5468,10009,9876,9875,9873,5663,5489,5664,5938,5933] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2067,1801,1802,50,290,306,679,504,2064,2068,680,1756,491,492,34,1803] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [357,4762,4764,4765,553,123,154,4751,822,824,825,570,378,552,153,377] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2414,2421,2424,2426,2634,2633,2255,2259,2262,2270,2275,2273,2274,2278,2635,2915,2917,2628,2648,2228,2238,2232,2234] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3786,3867,3870,3871,3869,3328,3326,3327,3317,3332,3811,3318,3808,3346,3348,3335,3541,3806,3863,3784,3502,3551,3540] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2748,2772,5049,2541,2507,2501,2512,2516,2517,2518,2709,2708,2520] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3460,3461,3487,3668,3664,3667,3671,3690,3691,3470,3472,3495,3720,3727,3730,3732,3699] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        