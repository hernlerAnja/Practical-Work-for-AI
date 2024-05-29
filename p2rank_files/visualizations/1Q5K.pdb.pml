
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
        
        load "data/1Q5K.pdb", protein
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
 
        load "data/1Q5K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [231,234,235,236,237,238,240,386,387,372,370,371,480,769,461,473,462,392,404,4825,4826,222,225,230,1338,1220,1232,1329,1330,1248,1249,1332,1335,1336,1337,1331,245,204,210,257,259,207,208,787,258,355,791,774,4577,1209,4601,4602,1208,1192,1359,4593,239,241,4804,4819,4827,1352,1353,1355,1356,1357,1351,1363,4797,466,469,470,4799,4807,1225,1221,846,819,820,807,808,794,801,1468,1182,1443,1458,1371,1373,4794,4795,1437,1442] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2972,2975,3998,4003,3624,2977,3625,3598,4027,3572,4026,4107,4108,2969,2973,3565,3579,3970,3987,3999,4001,4010,4116,4115,3136,3137,3135,3246,4109,4110,4113,3024,3022,3023,4137,3353,3545,3547,3354,3120,3552,1823,1824,3002,2990,2995,2987,2981,3010,1805,1814,1815,3000,3004,1797,1798] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3004,2021,2022,2026,3005,3006,2027,2999,3003,3151,3157,3158,3207,3209,3178,3171,3175,1815,2993,2041,1848,2049,1847,2048,2047,3238,3220,3227,3231,3233,3223,3225,3226,3234,3235,3242,4120,4130,4131,3245,4133,4134,4135,4137,4141] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4584,4585,1523,1524,1525,1552,1454,1447,1449,1486,1833,1807,1832,4232,1560,4610,4301,4302,4303,4341,4338,1795,4260,4264,1801,4251,4225,4330,1806,4229,4579,4580,4611] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1123,1623,1617,1619,1616,1618,1122,1624,1097,2649,2650,1147,1386,1387,2350,2337,1125,2349,2340,2342,1625,1626,1629] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3034,3032,3125,2949,3033,3127,2926,3128,2780,2925,3416,3435,3436,2793,2794,3418,3524,3144,3444,3146,3440,3035] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3903,4401,4402,3901,3925,3899,3900,4397,4164,4165,4395,4394,4396,4403,4407,5083,5053,5072,5101,3875,5089,5092,5094,5401,5402,3907,3908] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3634,3635,4034,4045,4048,4049,3797,3727,3670,3672,3760,3759,3761,4047,3756,3758,4044,4032] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [28,29,160,161,269,379,381,363,746,653,670,671,651,184,265,267,268,270,183] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1267,1270,1289,1269,857,856,1019,982,1261,981,983,892,894,949] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1568,1577,1579,1995,4235,4237,1457,1459,1438,1444,1449,1591,4781,4222,4227,4346,4357,4773,2011,4369,4216] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [5329,5492,5327,5293,5490,5313,5299,5304,5309,5297,5220,5235,5237] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [946,958,959,962,963,940,941,2154,2153,2180,2176,2187,2188,1729,1733,2179,2181] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        