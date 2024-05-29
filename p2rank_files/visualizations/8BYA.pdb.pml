
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
        
        load "data/8BYA.pdb", protein
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
 
        load "data/8BYA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6340,6342,6547,6555,6557,6548,6551,6552,6553,6554,6354,6173,6338,6528,6529,6530,6531,6541,6537,6539,8040,6764,6765,8137,6158,6160,8164,8165,8166,7849,7850,7851,8022,8028,8031,8033,8145,8143,8319,8320,8037,8142,5970,5976,6159,6163,5980,6169,6154,6155,6543,6544,6753,6751,6744,8017,8170,8178,8299,8300,5973] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [914,923,924,927,768,905,910,911,912,823,433,4339,4341,4343,312,894,900,313,216,916,245,246,919,4393,4387,4390,4373,4374,97,98,110,111,415,185,186,187,223,189,192,398,932,933,1034,797,798,782,778] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [1883,1884,670,1907,1910,635,1278,1943,1944,1945,1946,597,1940,1928,1942,1254,1956,1909,1904,1762,1775,1761,1771,1774,1760,1763,1764,1732,1733,1749,1260,1794,1803,1277,1279,1785,1786,1788] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [4993,5260,5257,5258,5263,5267,5271,4872,4874,4967,4873,5352,5488,5351,4875,5299,5303,5306,5324,5329,5485,5332,5326,4974,5104,5103] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [5569,5413,5419,5421,5425,5213,5205,5214,5500,5501,5443,5520,5720,5687,5688,5721,5521,5525,5228,5698,5201] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [5755,5946,5961,5962,6033,6055,6056,5705,5673,5674,5997,5644,5773] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [4523,4533,4536,4540,4914,4905,4907,4567,4924,4925,4926,4927,4522,4889,4886,4627,4629,4630,4656,4884,4885,4887,4888,4579,4582,4585,4588,4612,4614,4615,4869,4941,4648,4535] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [1564,1530,1531,1539,1546,1548,1562,1566,1576,1151,1561,1565,1569,1150,1164,1853,1860,1533,1113,1116,1851,1852,1189] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [959,2062,2064,2052,2054,3105,2088,2089,964,953,962,957,1190,2037,2038,977,978,3093,3094,3123,3124,1196,1186] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [8031,8032,7537,6338,6526,6533,8047,6726,7538,8046,6154,6155,6512,7567] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [7551,7553,6918,6920,7125,7126,7128,7124,7544,7545,7539,6933,6936,7538,7332,7334,7123,7143,7333,7316,7317,7509,7510,7524,7533,7536,6915] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [2717,2702,2466,2467,3028,2708,2709,3024,3025,3030,3031,3068,3069,3070,749,948,945,949] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [1944,1945,1946,596,597,598,577,600,601,1729,1732,1733,1277,1279,1299,1301] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [7597,7599,7979,8010,7603,7528,7530,7974,7592,7593,7585,7594,7595,7596,7545,7588,7590,7535,7521,7523,7524,7525] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [2487,2195,2196,2197,3323,3327,3328,2453,3279,3045,2481,2484,2190,3342,3313,3325,3041,3047,3053,3036,3363,3364,3386,2515,2179] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [2368,2350,2659,2636,2638,2639,2315,2338,2340,2824,2643,2794] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [3892,3634,3642,3895,3896,3423,3425,3452,3431,3432,3433,3662,3430,3428,3399,3664,3893,3874,3875] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [4523,4537,4540,4914,4484,4504,4507,4567,4428,4429,4433,4415,4425,4522,4498,4474,4501,4656,4632,4557,4539] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [3560,3574,3572,3498,3116,3559,3561,3393,3369,3370,3611] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [694,696,697,721,1902,1905,719,1894,1197,1223,1225,671,1888,1880,1899,1884,1910] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [634,1249,1264,1270,1273,1294,491,493,600,804,619,620,831,663,632,1289] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [200,166,2967,398,3005,397,2945,2943] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [6936,6950,8046,7334,7142,7143,7330,7156,7157,7514,8089] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [421,89,88,4173,4175,4270,4140] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [1008,1029,1182,1183,1123,1125,1124,1044,1043,1208,1180,1181,1178,1179,775,1005] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [1712,1277,1279,1808,1802,1804,1733,1258,1331,1705,1706] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        