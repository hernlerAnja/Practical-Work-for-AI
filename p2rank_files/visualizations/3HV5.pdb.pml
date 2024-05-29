
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
        
        load "data/3HV5.pdb", protein
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
 
        load "data/3HV5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4213,4215,4216,4618,4619,4596,4621,4210,4212,4229,4191,4631,4526,4527,4571,4700,4724,4194,4570,4702,4691,4195,4493,4494,325,326,4491,4465,4467,4468,4469,4725,199,4660,4662,4643,4663,164,4687,4688,4689,4692,4693,168,163,197,198,200,169,170,4167,4168,4171,4240,4952,4965,4970,4597,4958,4963,4232,4237,4248,4254,4255,4976,4977,4978,4160,4954] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [1016,1018,1276,3144,3141,3143,639,2421,2424,2422,1052,1054,648,636,1078,1079,1080,3173,2380,2382,2383,2367,1044,2376,2399,978,979,980,981,1294,2974,2996,2832,2833,3121,3119,3120,3125,3136,3516,3505,2369,2370,2371,2825,2839,2826,2838,3517,2840,2971,2968,2969,3131,3134,3135,2965] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [391,393,1340,1358,661,839,549,584,1325,1327,1329,1341,1342,1343,1345,662,1332,1338,663,838,843,865,858,861,867,868,869,377,283,284,389,282,821,232,233,234,235,236,238,856] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [574,575,577,536,537,1332,1333,1334,1335,1336,610,611,1322,1323,1329,662,543,546,547,548,549,550,583,585,393,654,1159,1164,1170,1172,1173,1123,1177,1178,1176,1174,1175] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3267,3268,4052,4053,3112,3269,3266,3256,3258,3262,3264,3265,3293,3296,4070,4054,3381,4048,3302,3304,3329,4055,3891,3889,3894,3896,3883,3878,3879,4041,4042,3841,3373,3840,3842,3330] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [4057,4062,3577,3580,3582,4064,4046,3562,3382,3557,3558,3001,3003,3002,3096,3095,3104,2955,2951,2952,2953,3575,3108,3540,4059,4051,3112,4077,3110,2957] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [1474,1475,1476,1941,1497,1907,1442,2225,2224,1441,2222,2226,1848,1849,1979,1875,1874,1909,1978,1980,1772,1769,1804,1805,1771,1747,1969,1967,2002,1444] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1442,1441,2235,2240,1452,2222,2233,2247,2248,1491,1493,1494,1496,1497,1512,1874,1899,1448,1449,1515,1518,1526,1533,1507,1444,1510,1531] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [158,700,703,710,713,41,2677,39,716,175,22,23,695,2666,2668,2673,690,691,2687] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3356,3357,3358,4011,3763,5106,5154,3735,3737,5110,3761,3797,3798,3355,3366,3367,3799,3772,3773,3771] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [840,844,849,665,847,1311,1312,624,625,608,622,614,671,2714,2713,682] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4263,4271,5018,3849,3817,3819,3847,5014,5019,5023,5008,5011,5013,5012] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [2289,2288,2281,2284,2293,1128,2282,1130,1541,1542,1102,2283,1098] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2745,2877,3422,3432,2762,2746,3414,5421,3409,3410,3419,2894,2896,3054,5436,5437,5438] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [4191,4199,4225,4637,4632,4205,4209,4210,4211,4212,4214,4213,4215,4216,4642,4643,4663] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [864,1309,1310,1311,845,846,844,863,847,853,1263,1295,1260,1290] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1674,1675,1688,2089,2090,1810,1691,2100,1823,1700,1702,1785,1821,1817,1818,1662,2087,1672,1661] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [5266,5268,3246,5238,5239,5241,3286,3248,5392,5355,5356] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        