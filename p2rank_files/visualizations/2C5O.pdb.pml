
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
        
        load "data/2C5O.pdb", protein
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
 
        load "data/2C5O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4608,4610,4552,4558,4609,4554,4556,4553,4711,5105,5104,4570,4571,5623,5627,5628,5622,5626,4563,4564,4727,4728,5106,5108,5107,5161,5164,5130,5549,5550,5133,5128,5621,5521] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [3418,3419,3420,5002,5003,5005,3395,3386,4494,3388,5019,5018,4470,4486,4502,4504,4505,4485,4993,4994,4691,4655,2985,2986,571,572,563] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [511,1161,1088,1089,1160,1067,1060,688,689,696,703,729,510,407,647,645,1072,1165,103,110,1166,1168,266,644,646,148,149,93,95,92,94,90,91,96,97,652,669,250,672,680,642,643] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [6850,6857,6862,6863,6855,6657,6646,6652,8006,8014,6890,8045,8046,5696,5697,5700,5701,6917,5683,6885,6918,6878,5678,5679,5681,5921,5924,5926,5932,5911,6858,6861,6880,6691,5931,5925,5933,5937,6647,6671,5677,6688] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1239,1240,1450,1460,1463,1464,1470,1472,1476,2422,2427,2395,2398,2399,2417,2196,2186,2387,2400,2392,1216,1217,1218,1219,1220,1222,1236,1461,1465,1471,1242,2455,3582,3551,3552] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [7881,7882,7883,7849,7851,33,7858,7,24,42,44,194,8,30,558,6,532,541,542,544,533,636,557,7449,7439,7448,230,5024] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [7306,7309,7302,5694,5718,7300,8152,5695,7971,8005,5702,8006,8037,8119,8120,8121,8126,8035,8124,8149,8150,8127,8131,8822,8824,8826,8810] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [7946,7951,7954,7365,7368,7337,7364,7020,7029,8297,8298,7963,8206,8198,8246,8275,8319,7012,7016,7030,7371,6987,7362,8196,8200,7158,8202,8245,8247,8255,8256,8224,8258,7399,8261] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3572,3574,3543,3661,4347,3508,2851,2847,2837,2843,1233,3542,3507,2846,3689,3687,4359,4361,4363,3635,3668,3656,3657,3658,1241,1257] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2553,2557,2567,3835,3812,3830,3856,2899,2936,3737,3743,3500,3735,2566,3798,3793,3782,3783,3784,3733,2548,2549,2908,3483,3834,3833,2905,3488,3494,2874,2902,2524] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [5118,5566,5591,5607,5608,6808,5122,2639,2640,2641,5578,5581,5582,2624,2620,4944,4946,4947,4957,5352,6807,4979,4980,4692,2992,5114,5119] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [5899,5882,5886,6648,6649,5885,6334,6335,6333,6342,6658,6291,6300,6294,6642,5887,5925,5924,6305,6306] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1874,1844,1846,1872,1873,1833,2197,2188,2181,2182,1839,1830,1387,1425,1438,1421,1424,1426,1430] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [359,368,373,374,362,366,367,3161,3184,1274,1276,1191,1277,396] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1147,485,1120,496,1105,1130,1146,1117,1121,2347,518,483,486,655,657,661,653] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5673,5446,7934,7935,7936,7937,7601,7978,7979,5672,7350,7318,7610,7941,7980] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [1626,1764,2029,2008] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        