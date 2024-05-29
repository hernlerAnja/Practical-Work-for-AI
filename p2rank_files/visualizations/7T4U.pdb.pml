
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
        
        load "data/7T4U.pdb", protein
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
 
        load "data/7T4U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5318,5151,5152,5167,5168,6084,6086,4997,4999,5000,5001,5023,5022,5021,4970,5631,5614,5634,4973,4968,7277,5290,5291,5939,5956,5968,5280,5253,6099,5255,5256,6110,6085,6111,6112,5278,5286,4998,4976,4979,4995,4996,5213,5204,5206,5257,5568,6077,6083,6078,5967,5613,5996,5135,5573,5584,5587,7251,5420,5588] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [139,146,148,1058,1059,1060,704,729,739,437,438,439,440,172,1033,1035,1037,173,205,959,236,922,924,237,920,879,1088,682,683,150,265,459,680] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4757,4756,4758,4759,4763,4398,4400,4401,4435,4402,4433,4434,4785,3880,4379,3877,4377,4380,4619,4620,4621,4730,4732,4734,4426,4576,4422,4423,4727,3887,3889,3891,4178,4179,4180,4181,3977,3890,4200,3913,3914,3946,3978] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1324,1276,1917,2271,2272,2270,1325,1271,1273,2258,1934,1935,1937,1454,1455,2387,2389,2242,1326,1279,1282,3586,3584,1302,1303,1304,1299,1301,1872,2386,1723,1724,2380,2381,1891,2298,2299,1438,1876,2282] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1559,2402,2413,2415,2242,1454,1455,1470,1471,1596,1621,2387,2388,2389,2259,1507,1298,1299,1301,1509,1302,1303,1304,1560,1516] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [717,706,707,708,713,714,715,779,786,790,764,784,709,696,697,747,774,626,515,644,514,789,805,369,370,692,674,686,689,628,618] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6149,6152,6154,6139,6147,6148,6366,6365,6367,5889,5890,5867,6135,1234,6900,6357,6359,6901,6159,6160,1376,1220,1229,1236,1199,1207,1203,1204,6166,6356,6142,6140,6143] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4405,4404,4413,4414,4476,4481,4483,4486,4394,4410,4466,4471,4461,4111,4502,4256,4393,4386,4371,4325,4255,4487,4315,4323,4419,4473,4444,4453,4415] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3629,3637,3640,3649,3622,3630,1479,6168,6169,6170,3610,3607,3608,6171,6151,1314,1463,1315,1334,1459,1306,1307,1316,1462,1826,1827,1846,1825] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [5141,5143,5046,5160,4938,4917,4918,4896,4895,4899,4898,5543,4940,5544] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [6922,6927,6928,6931,6938,1216,1207,1208,1215,1205,1206,6896,1374,1376,1375,1190,1192,5879,6943,5843,6935,6365,6367,6893,5842,5866,5868,5874,5840,6937,6900,6895,6945,6946] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2275,2784,2811,1929,1963,1964,2823,2824,2274,2549,2575,2576,1962] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [7037,7039,7049,7044,7046,5756,7128,7129,7134,5731,5732,5730] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        