
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
        
        load "data/6GJO.pdb", protein
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
 
        load "data/6GJO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [229,240,4221,4222,216,222,225,241,4568,213,1221,1222,1348,1350,1351,1367,1368,1372,1203,1204,1205,1245,832,833,1233,1234,1262,1343,807,4566,4567,204,210,4578,814,859,232,368,370,372,481,1365,1366,1364,355,780,782,783,787,1261,1342,1344,588,589,205,208,257,259,258,798,800,514,230,1466,1476,1481,4248,4251,4252,1490,1493,1235,845,848,1238,858,4557,4563,860,861,4243,4244,1483,1486] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [3019,3010,3012,3013,3018,3971,3970,3994,3022,3026,3027,3028,3953,3954,4100,4121,1471,4235,4239,4242,4243,4232,4234,1472,1473,1502,1503,1819,1818,1829,3001,3007,3983,3582,3982,1808,3984,3987,3597,1814,1817,3608,3581,4228,4230,4225,3056,3168,3169,3167,3042,4097,4098,4091,4093,4107,3038,3037,4099,3278,3035,3005,3055,3556,3002,4011,4092,3553,4010,3563,3529,3311,3386,3536,3531,3152] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4216,4210,4211,4212,4353,4204,4205,4194,4200,228,393,394,395,743,389,392,245,234,243,244,376,378,741,251,379,4782,4783,381,4780,4768,4769,219,220,224] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [4386,3884,3885,5129,5131,5439,5138,5139,5130,5438,3892,3859,4383,4384,4388,4391,4415,5109,5119,5120,5126,5125,5090,4379,4381,4387,4392,4378] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3173,2033,2034,3490,3492,1604,3190,3191,3192,2020,2021,2022,3031,3040,2032,3041,3043,3048,3025,1463,1467,3021,1461,1462,3016,3017,1455,1445,1451,1454,1457] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3159,3450,3176,3178,3508,3449,3160,2826,2956,2958,2825,2979,2980,2981,2812,3177,3467,3468,2028,3066,3067,2025,3065,2039,2047,3063] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1632,1634,1635,1637,1638,1639,1630,1666,2382,1136,1138,2377,2380,2389,2690,1134,1135,1142,1143,2689,1110,1146,1629,1642,2371] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [670,759,381,4768,4777,182,184,266,268,270,183,4799,362,265,267,269,29,652,653,159,161] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [869,870,891,905,907,993,994,995,996,2548,969,992,1032,906,1280,1283,1282,1270] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1513,1514,1515,1516,1494,1493,1495,1506,1527,1511,4252,847,849,851,1237,1238,4557,1774,1528,1729,1730,1773,1499,1222] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4248,4263,4264,4265,4553,4262,4261,1513,1514,1515,1516,1511,1238,4243,1502,1503,1499,3987,3598,1804] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1586,1588,1972,1854,2056,1886,1927,1928,1921,2075,2076,2072,2042,2052] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3633,4522,4523,3987,3596,3598,3600,4478,4479,3978,4264,4262,4243,3986,4276,4277] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3618,3743,3744,3745,3781,3619,3654,3656,4031,5307,4019,4032,4029] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1632,1637,1638,1630,1135,1626,1629,1631,1418,1400,2350,1642] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3346,3342,3343,3348,3349,5419,5394,3350,3358,3362,3355,3839,3363,5376] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3524,2955,3446,3448,2852,2940,2939,3099] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        