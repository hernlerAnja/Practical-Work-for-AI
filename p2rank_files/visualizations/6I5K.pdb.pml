
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
        
        load "data/6I5K.pdb", protein
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
 
        load "data/6I5K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1208,1460,1465,1466,1468,1458,1459,1461,1196,1224,1225,806,808,815,1184,1185,1197,847,628,629,799,800,801,795,798,477,178,179,177,227,228,229,173,175,171,172,208,209,346,348,771,772,775,777,776,774,332,181,184] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3543,3124,2987,2951,2957,3005,3006,3007,3110,2953,2950,2949,2955,2956,3126,3548,3544,3546,3553,3567,3570,4244,2962,2984,2986,4237,3968,3969,3970,3980,3619,3571,3996,3997,3578,3580,4234,4235,3573,4236,3572] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6990,6993,6752,6992,6301,6991,6753,5888,5890,6304,5769,5770,5771,6302,6309,6323,6300,5874,6163,6327,6329,5750,5751,7000,6725,6724,6736,6374,6347,6348,6375,5720,5721,5722,5723,5726,5713,5714,5719,6343,6334,5715,5717,6326,6011,6994,6303,6305] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [413,410,436,438,439,440,443,476,362,403,404,415,194,198,203,206,208,348,363,1168,1467,1481,1482,1483,1488,1489,1592,1596,1608,1587,1591,1184,1185,1197,1208,1468,7657,7658,7659,7660,7662,1564] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3181,4243,4244,2976,2984,2986,2306,2309,2310,4259,2308,3216,3140,3191,3193,2981,2972,3177,3179,3188,3217,3254,3126,3125,3141,2292,2288,2291,4261,4263,4264,4361,4363,4265,3938,3939,3940,3957,4374,4355,4351,4357,2319,2290,4340,2314,2317,2346,2344,2345,3182,2313,2304] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1617,1619,1620,1926,4906,4915,4916,4917,4935,4937,1906,1907,1873,1886,1909,4902,4903,4910,4900,4901,4918,836,1831,1832,1868,1884,866,865,903,905,1604,1602,1611,1629,1631,1183,1185,1200,837,838,1201,4929,1599,1601,4922,4923,1829,1867,1870,1880,1827] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [7693,1578,7704,7672,7673,7474,7207,1673,2172,2140,2141,2161,1675,2139,7108,7110,7111,7173,1922,1937,1641,1942,7691,1583,1573,1576,1579,7103,1590,1668,1935,2160,2159,7140,7454] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5955,5952,5980,5981,5982,5985,6010,5905,6694,6999,7013,7021,5957,7121,7119,7120,5904,5736,5745,5746,5748,5750,6695,6696,7000,6712,6713,6736,5889,5890,7130,5740] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4920,4922,181,184,4921,4953,4967,5015,178,179,177,227,229,173,171,172,845,846,847,875,884,4929,4930,820,835,837,1197,1198,1225,808,814,815,1196,1224] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [6366,7416,7417,7363,6364,7152,7150,7151,7162,6728,6729,7163] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4607,4661,4662,3608,3610,4405,4407,3973,3606,4395,4392,4394,4396] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4976,4978,4979,4980,26,30,4977,4975,51,63,68,61,62,160,162,167] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1634,1638,1157,1746,1586,1670,1671,1585,1744,1781] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3683,3701,3690,3691,3696,3706,4152,4161,3739,4166,3710,3711,3664,4167,4171,3703] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [924,934,919,1372,929,1376,939,1389,967,1391,1385,892] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        