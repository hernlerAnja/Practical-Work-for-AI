
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
        
        load "data/4AE9.pdb", protein
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
 
        load "data/4AE9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4159,4160,3029,3307,4147,4028,4134,4132,4133,3285,3308,3309,3988,4005,4017,3283,3282,4016,4124,4125,4126,4045,4123,3028,3037,3039,3199,3201,3306,3314,3181,3183,3184,3185,3342,3343,3344,3040,3453,3586,3587,3588,3598,3452,4111,3616,3021,3016,3062,3024,3044,3189,3646,4044,3630,3005,3060,3061,3618,3619,3624,3007,3168,3610,3612,3623] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3661,3658,3695,3691,3693,3686,3690,3721,3723,2020,4543,3698,2033,2043,2044,2052,2053,2056,2034,2017,2018,2030,2035,1867,3663,3665,1879,1894,1889,2008,1988,1981,1984,1985,1986,1987,2009,4521,4520,4548,4538,4541,4542,4551,4297,3689,4272,2037,2038,4270,4286,4287,4288,2059,2063,2036,4005,4021,4271,4020,2064] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1446,489,490,491,505,506,507,330,334,335,343,1311,1327,1334,1445,1459,1460,1461,1470,1472,649,650,613,624,611,619,1294,1471,590,345,346,488,327,368,350,487,495] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2750,3886,3887,3888,3889,2712,2713,2732,5027,2701,2707,2708,5001,3420,3858,3862,5158,2734,5160,5025,5120,5132,5136,5138,5156,5157,5159,5119,5131,5121,2729,2730,2731,5161,5162] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2416,2427,2431,1168,2332,27,1194,2451,2452,2454,51,55,16,21,22,26,64,1193,53,726,1164] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [366,367,368,313,311,1446,490,491,1348,1349,1437,1436,1438,1423,904,892,1435,922,925,916,918,474] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1004,971,1834,969,1318,1612,1599,1601,1610,967,1323,1326,1585,1309,1874,1875,1904,1902,1908] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1573,1574,1464,1465,1553,1558,1483,641,615,616,618,1461,1463,1468,1470,590,591,617,1564,1476,1482] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3621,3622,4112,3602,4061,5181,3603,3424,5180,4079,5179,4070] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5314,5315,3545,3546,3192,5304,5309,3042,3045,3033,3206,3209,3052,3053,3202] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1220,1222,1713,1714,1188,1190,1218,1226,1227,1745,1747,2297,2298,2255,2290,2293,2259,2267,2289] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [5198,5149,5151,3792,3793,5093,5097,3802,3804,5203,3768,3799,3798,5108,5109,5103] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4399,4434,4957,4950,4401,3884,3914,3920,4398,4400,3882,4985,4988,4992,4993] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1075,2393,2398,2402,2395,1074,1099,2493,1105,1108,2446,2494,2404,2403,2498] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1771,1893,1992,2011,2013,2197,1772,2177,2191,2195,2196,2028] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        