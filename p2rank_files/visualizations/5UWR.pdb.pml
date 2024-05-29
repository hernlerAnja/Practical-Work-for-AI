
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
        
        load "data/5UWR.pdb", protein
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
 
        load "data/5UWR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8999,8998,8018,8088,8089,8090,8919,8921,8923,1520,8168,8170,1587,1590,1591,1575,1577,1578,1645,1646,1647,8927,1716,1662,1664,8040,8019,2127,2129,2124,2186,1521,2210,2211,2212,2207,2185,2205,8978,8979,9584,9635,9636,8154,9061,9063,9064,8152,8153,8155,2188,9701,9702,9703] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [1864,460,508,260,431,432,259,482,445,525,502,505,506,507,509,542,198,212,1863,185,191,192,213,214,1847,1849,1848,2360,2370,219,241,245,246,247,254,258,223,227,961,548,553,551,973,1861,1862,1913,1900,2374] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1617,1614,1615,1616,1080,1081,1082,1076,1079,1099,1103,1104,1105,6561,6578,6501,6503,6504,7449,8104,7380,1106,7336,6559,6563,964,986,989,990,991,993,954,1556,1557,1149,1613,1687,6638,6640,7448,7504,6639,6574,1533,8224,1594,8103,8105,1552,1553,1554,1536,1538,1535,1545,178,8222,8223] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [7680,7741,7932,6981,7042,6979,6983,7044,7675,7678,7727,7630,7729,7732,7627,6984,7728,7789,7790,7413,7024,7022,7982,7918,7875] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [176,177,179,184,20142,20146,178,1494,20093,1493,1552,1553,1554,8208,1538,1535,194,185,187,192,21644,21645,964,969,985,973,974,989,990,991,992,993,1556,19280,19281,20104,510,976,19282,1864,508,511,1419,19279,19308,20178,20179,20138,20130,1341,1344,1370,1380,1384,1368,1383,19304,1420,1436] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [15029,15099,15151,15152,15171,16196,16197,15221,15223,15640,15659,15031,16101,16104,15102,15103,16112,16116,15657,15636,15637,15653,15638] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [12115,12112,12114,12063,12116,13667,13668,13622,13728,13726,13666,12942,13680,12943,12941,13627,14359,14309,14362,14358,14403,14361,14413,14400,14363] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [2267,2307,2266,2570,11280,11281,10512,2493,2494,2305,10513,2488,2547,2548,2550,2562,2621,2623,2490,2566,2568,2563,2647,2721,11261] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [14365,14197,14199,14201,22025,14318,14319,14249,14250,14251,14252,13657,22027,22024,13612,13594] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [11320,12177,12187,11294,11295,11296,12150,12152,11292,11288,2427,2444,2493,2494,2495,2279,2298,2318,2445,2303,2305,2267,11280] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [19993,20943,20944,19952,21017,20961,20942,21002,19991,19992,20009,20010,20069,20013,20015,19953] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [1770,1757,1760,2573,10480,10485,2646,2643,2645,10475,1729,1740,1756,1762,2642,10522,10526,10527,10509,2229,10580,10512] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [1714,1715,1716,7246,7247,7248,7321,7905,8806,7964,7320,8872,8927,8925] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [4235,4197,4417,3641,4198,3954,4764,4766] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [19708,19710,19038,18970,19042,19760,19761,19764,19767,19039,19040,19749,19825,19004,19005,19001,19842,19843] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [7072,6418,7155,7156,7157,6276,7006,7058,7061,6295,6299,7068,7119,7059,7228,6300] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [1473,8206,21493,21495,21497,21499,8194,20136,20138,20197,20198,20199,20200,20132,20095,21572,8204,21644,21645,20048,20067,20090,21570,21491,21569,20140,20142,20144,20146] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [8821,7799,7891,7846,7810,7811,7808,7809,8763,8764,8702,8753,8627] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [2375,2393,2395,3279,3277,3299,3621,3877,3878,3921,429,2373,3240] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [8255,21750,8292,21704,21708,21751,8346,8347,8349,21711,8295,8296,8297,8298,8299,6725,7596,21698,21693,6726,7521,21666] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [2047,2323,11320,11374,12174,12177,2285,2279,2298,2318] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [19768,19787,19789,19529,20376,19528] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [20880,20882,20883,20671,20815,20672,19878,19881,19800,20585] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        