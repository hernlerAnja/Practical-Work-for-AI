
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
        
        load "data/3HPN.pdb", protein
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
 
        load "data/3HPN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4357,7136,7138,7139,7140,7841,7842,7844,7845,7123,7839,7840,4330,4325,4331,4322,4328,4306,4299,4300,4301,4303,7128,7122,7124,4359,4362,7146,7147,7141,4364,4355,4381,7392,1555,1556,1557,1558,1559,7153,7154,7155,7156,7157,7158,7159,1528,1530,1525,1522,4323,4398,4399,4400,4403,4404,4409,4414,4415,4517,4412,4407,4518,4285,7851,7876,7877,7878,7879,7880,7395,7393,7855,7864,7867,7871,7872,7881,7848,7852,4416,7889,7886,7888] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [229,232,1629,1648,287,2478,2475,2479,2481,2456,2457,286,1318,1320,1097,605,1098,1095,2459,1645,1646,1079,1080,1081,1075,1056,1057,1078,1686,2718,1059,248,1687,2497,1058,2005,2495,2498,246,245,2480,1632,1060] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [4448,4118,3086,3087,3879,3880,3881,4445,4446,4486,4487,3032,3029,3405,3897,3898,4120,5258,4429,3048,3045,4805,5518,3857,5297,5298,5295,5279,5280,5278,5281,5275,3858,3859,5291,3875,3891,3895,3878,5256,5257] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [6656,6658,6681,7248,6657,6678,6679,6675,6205,6680,6695,7232,7287,7286,7229,5832,5846,5848,8080,8079,8081,5887,6918,6919,8057,8075,8078,8055,8056,6698,6697,8059,5845,5829,8095,8097,7605,8318,8098,6659] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2255,7197,7198,7199,7200,7203,7204,2251,7207,2271,2264,2265,2267,2272,2277,2278,2280,2276,2281,2285,2245,2248,2224,7212,7216,7231,7219,5839,5840,7213,7214,7215,2288,2289,5824,5863,1536,1538,1540,1541,1547,2279,1792,1793,1524,2256,1523,2240,2241,2244,2252,1528,7181,7131,7317,7193,7196,7177,7103,7085,7318,7092,7099,7130,7155,7157,7159,2242,7106,7161,7162,7163,7166,7164,7167,7168,7125] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [4336,4338,4339,4340,4341,4349,5052,4323,5041,5042,5043,5039,5040,5044,5045,5048,5072,5055,5064,5076,5077,5078,5079,5081,5086,5080,1581,1593,1597,1598,1599,1615,1600,1603,1604,1717,1718,1499,5051,1607,1612,1613,1609,1619,5071,1614,239,240,5088,5089,1555,1557,1558,1559,1562,1564,1561,1563,1568,1530,1531,1525,1503,1506,4322,4324] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [2996,3014,3015,3137,4463,4464,2999,4457,3125,3136,3146,3127,3132,3133,2977] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [4478,7899,4496,4270,4271,4272,4273,7795,7827,7829,7831,7811,7812,7898,4290,4275,4298] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [1577,1746,264,1733,1736,1737,1596,1599,1615,262,263] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [1490,1696,1698,5011,1623,1624,1677,1678,1679,1497,5012,5098,5027,5029,5031] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [7071,7072,7089,7090,7298,7296,7223,7277,7278,2211,7097,2229,2231,2298,2212] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [215,1663,1664,177,333,336,346,196,199,168] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [4396,4399,4415,3063,3064,4527,4533,4536,4537,4523,4546,4377] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [46,47,1340,1341,1342,2443,2450,569,570,586,587,1326,2449,2444,2453] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [4770,5540,5541,5542,4787,4769,3844,3843,4246,5526,3850,3853,4247] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [1043,1042,1446,1049,1987,1050,1053,1969,1970,2740,2741,2742,1447] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [3387,4126,5243,5250,3369,3370,3386,4141,4142,4140,2846,2847,5242,5249,5253] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [4435,4439,3125,4436,4449,4457,3014,3015,4463] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [8185,8193,7493,7494,8178,7803,7497,7498,8197,8198,7490,7500,8194,8196] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [858,435,898,433,908,910,828,830,825,847,826,853,863] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [3049,3036,4506,4525] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [3233,3708,3710,3647,3626,3628,3630,3235] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [7847,7910,7908,8223,7828] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        