
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
        
        load "data/5YF9.pdb", protein
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
 
        load "data/5YF9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3996,3588,3084,3605,3608,3056,3057,3059,3060,3062,3581,3980,3971,3967,3066,3204,3205,3206,4099,4101,4102,4103,4107,4110,3083,3995,3562,3423,3189,3190,3560,3425,3567,3591,3563] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [560,561,4226,4216,4217,4384,4208,202,1435,1503,1508,1438,1491,1496,1515,1518,1521,1545,1219,1514,4230,4231,4232,4227,4234,4240,201,596,193,192,569,570,1424,1418,1420,4382,4362] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [356,357,1260,1261,1262,1390,1290,1292,897,353,351,373,349,894,478,1391,479,493,495,851,852,849,846,847,372,1398,1392,1387,1389,712,714,856] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3271,3272,3307,4149,3930,4132,561,4226,4215,1496,3270,1503,4220,1504,1505,3281,1669,1671,3280,1670,1515,1518,1521,1514,4244,4136,4230,4231,4233] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1535,1536,1537,1600,1933,4248,4249,1930,1942,1943,1944,2170,1624,1632,1644,4270,4274,4311,4312,4652,4653,1528,1645,1650,1648,1649,4245] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1416,1424,1422,1423,1414,1415,1417,1396,1397,1398,606,492,494,499,511,565,566,564,571,576,4363,518,542,519,520,505,512,540,1229,1557,1244,1245,1259,1261] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1535,1536,1537,1600,1933,4249,1932,1558,1599,1562,4650,4653,4663,4664,4889,4662,1550,1553,1565,1566,1926,1530,1531,1532,1533] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1437,1438,1491,1492,1469,1470,1471,171,173,560,202,193,192,164,181,201,1443] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3205,3206,4109,4110,4126,4134,4135,4136,3940,4127,3252,3253,3231,3067,3068,3223,3227,3279,3275,3276,4128,3317,3277,3282,3222,3250,3287,3980,3956,3955,3968,4269] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2899,2901,2902,2873,2904,2909,2912,2880,2885,2890,2882,3272,4149,4204,4203,4181,4183] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4425,4429,4411,2748,3873,4417,5266,5284,5306,5301,5304,5307,2752,2765,4426,5256,4452] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2959,3480,3531,2956,3288,3289,3235,3261,3481,3262,3263,3297,3298,2933,2938,2954,2941] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1576,1578,932,1864,923,1865,1241,1556,1242,1243,1245,1590,1257,1252,1591] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1740,2586,2592,2598,2595,2597,1699,1717,1713,1714,1705,49,1162,1160,2603,1136,57,59] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [820,821,769,770,549,550,524,551,250,577,232,247,584,586,587,547] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        