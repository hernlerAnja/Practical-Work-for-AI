
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
        
        load "data/7LM2.pdb", protein
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
 
        load "data/7LM2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4303,4304,4305,4614,4616,4618,4584,4585,5955,5331,5332,5340,5952,5341,5342,5343,4298,4307,4314,5796,5797,5942,5951,6040,5935,5770,5736,5758,5764,5768,5769,5760,4339,5967,4342,4660,4661,5738,5739,5958,5772] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5462,5463,5647,5648,5477,5704,5732,5947,5949,6031,6032,5666,6631,5667,5668,5686,5687,5688,6617,6611,6612,6615,6609,6607,6525,6526,6095,6498,6610,6616,6618,6087,6116,6043,6047,6049,5531,5530,6036,6052,6080,6078,6591] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [4148,4150,4151,4171,4172,4142,4135,4124,4152,2704,2693,2694,2940,4160,4162,2692,4418,4420,4381,4419,4465,4095,4091,4412,4413,4402,4403,4426,4404,4133,4425,4431,4434,4436,4421,4450,4456,4459,4461,4466,2916,4379,4089,4099] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [6414,6415,6601,6602,6581,6472,6473,6518,6368,6397,6745,6792,6763,6794,6746,6748] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3045,3043,3053,3052,4733,4719,3050,3193,3192,4726,7920,7922,7955,7916,7917,4707,4715,4727,7958,7923,7925,7887,7888,3205,7947,7948,7949] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [2966,2967,2994,3012,2992,2996,1005,1008,2909,2913,2919,2882,3167,2876,4435,993,991,992,2999,3002,3175,3180,3184,3185,3177,3165] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [1329,5855,1330,1331,1318,1320,1321,5856,5857,5859,1322,1334,1918,1919,1862,1863,1343,1893,1889,1890,1891,1892,5797,5821,1915,1921,1924,5937,5938,5920,1888,5894,5896,5897,1946,1948,5914,1939,5917,1350,1347,6573] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [4872,4873,1270,1281,1779,1780,2076,2077,4574,4907,5314] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [1895,1898,1900,1902,1904,5613,5611,5605,1966,1925,5363,1767,1768,1764,1765,1766,1746,1759,5597,5598,1751,1758,5628,1788,1789] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4972,4945,4963,4964,4966,4996,6012,6011,4677,4678,4650,5979,5978,5981,5983,5984,5987,890,882,904,893,4911,4943,4944] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [3047,3048,2833,2836,2842,3051,3052,8692,8693,3035,3053,3235,3239,2273,2279,3028,3193,8654,8656,3227,2286,7917,8691] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [3152,2851,3050,3136,3043,2854,3053,3155,3159,4732,4733] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [6872,7527,6862,7530,6913,6915,7492,6801,6914,7491,6800,6803,6804,6771,6773,6775,6835,6836,6911,6912] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [7145,7260,7170,7118,7120,4113,4103,4120,4114,4072,4074,4100,4076,4079,3832,4119,4130,4131,7299,7108] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [7411,7413,7448,7449,7450,7451,7406,7408,7409,7412,6725,7414,7309,6711,6712,6713,6714,7303,7304,7326,7016,6720,6710,6425,6427] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [2118,2119,1161,1262,1263,1159,1171,4852,4868,4874,4864,2101,2082] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [646,648,76,78,220,709,710,77,682,21,685,684,705,706,711] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2851,3050,3058,3059,3060,3065,3133,3134,3135,3136,2854,2849,3063] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [5378,5640,5559,6023,4959,5304,5277,5281,4967,4989] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        