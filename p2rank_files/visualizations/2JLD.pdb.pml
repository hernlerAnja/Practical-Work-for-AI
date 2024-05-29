
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
        
        load "data/2JLD.pdb", protein
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
 
        load "data/2JLD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1330,1161,1163,1180,1203,1303,1306,1307,1308,1309,1302,461,1322,1323,1324,1325,493,441,446,494,228,229,4504,4505,4486,227,4529,4715,4716,1437,1435,1329,1153,1326,1328,449,450,1425,1427,4495,4496,4497,1410,4696,4697,4700,4699,4480,1192,1194,1195,1179,4705,4707,226,230,231,234,258,369,371,745,742,744,569,749,256,257,354,215,221,224,235,236,237,238,239,240,1191,1301,1219,1220,1300,769,203,206,207,209,1196,795,821,823,776] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [2943,2944,2945,2947,2948,2946,3077,2914,2917,2915,2964,2965,2966,3075,3533,2911,3890,3891,3914,4017,3903,3904,3905,3906,3907,3505,3902,3931,3493,3930,4012,4013,4014,3279,4011,3166,3452,3459,3062,3454,3470,3472,3479] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3890,3891,1794,1795,3874,3914,4020,2934,2938,4019,2935,4033,4034,4035,1770,3903,3905,3906,3907,2939,2945,2947,2941,3099,3146,1775,1776,1786,1787,4037,4039,4040,4041,4145,4119,3864,4120,3154,3155,1984,1767,1784,1819,1988,1996,2007,4135,4137,1998,2936,2006,2005,1768,1809,1813,1844] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1778,1804,1777,1534,1531,4131,1762,1764,1765,1766,1772,1773,4474,4472,4514,1457,4476,1494,1529,1532,1533,1803,4482,4487,4488,1418,1421,1440,1413,1414,1496,1523,1416,4204,4243,4513,4124,4205,4206,4239,4241,4126,4128,4159,4161,4167] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1096,1587,1588,1590,1594,1595,1093,1094,1100,1101,1118,1357,2590,2591,1104,1589,1358,1592,1596,1597,1600,1624,2262,2273,2279,2284,2290,2291,2253,1066,1068,1069] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4996,4304,4305,4987,4989,4298,4300,4306,4307,4310,4297,4299,4948,4953,4955,4958,4068,4967,4978,5296,5295,4294,4069,3804,3805,3829,3812,3807,3777,3779] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [362,380,721,361,159,160,651,655,631,633,650,41,5429,267,269,264,266,268,183,27,28,14] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2976,3069,3070,3088,3341,3343,3431,2866,2868,3361,2752,3360,2972,2973,2974,2975,2977,2889,2891,2738,2739] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [952,954,1238,1241,1240,831,832,786,788,785,874,875,953,990,920] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4680,1562,4679,1548,1416,1550,1950,1949,1962,1972,4258,4249,4260,4657,4669,4126,4272] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3541,3577,3579,3578,3567,3663,3665,5154,3664,3638,3701,3949,3951,3938,3542,3952] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4181,4183,4441,4398,4195,4196,3888,3519,3521,3523,1770,3903,3904,3899,4442] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [5193,5191,5186,5198,5384,5386,5132,5224,5222,5388,5380,5115,5130] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4529,4715,4716,4496,4519,4705] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3242,3236,3251,3255,3256,3248,3250,3759,5275,3789,5233,5229,5250,5251] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        