
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
        
        load "data/4BCQ.pdb", protein
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
 
        load "data/4BCQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5116,5541,5542,5543,5119,5514,5141,5142,5143,5157,5183,4553,4594,4595,4552,4549,4555,5111,5113,4712,5616,5619,5620,5622,4561,4571,4572,5099,5090,4957,5614,5615,5094,5095,4713,4714,4854,5091,5093,5089,4697,5092,4710,4596,5522,5521] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [3,4,9,12,52,53,514,517,505,17,42,506,508,509,203,204,217,609,7420,167,7410,7419,7829,7830] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [5006,4464,4488,4501,4502,4491,2970,2971,3386,4641,4983,4677,4678,4980,5083,4982,2961,4979,4988,4991,5004,3407,3409,3418] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [2538,2534,2551,2552,3726,3774,3820,3826,3847,3786,3803,2541,2542,2859,2886,3491,2860,2862,3734,2887,2890,2893,3723,3724,2884,2921,2680,3789,3775,3474,3484,3479,3482,2535,3485,2507,2509,3819,3825] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [616,617,618,620,621,483,240,380,1134,1138,1139,1141,122,100,102,103,104,121,223,615,625,1045,1033,1040,1062,484,1133,1061,632,642,637,639,645,644,660,237,238,239,236] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [7928,7308,8161,7312,8230,8252,8253,8274,8201,8151,8153,8155,7917,7922,7927,7934,7000,7336,7339,7342,7370,7335,7333,6993,6983,6991,7001,7129,8216,8213] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [3132,2837,2838,3133,1184,2840,3469,3506,3507,3508,1189,1188,3123,1185,3463,3464,958,3499,1228,1230,2836,1227,3501,3503,3504,3505,3533,1201,1197,1198,1211,1222,1248,3534] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [5669,5670,5679,7948,7949,7950,5665,5678,5709,5729,5731,7288,7942,7909,7912,7951,7322,7286,7289,7285,7287,7905,7908,7906,5438,5439,5666,7571,7581,7582] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [1401,1840,1883,1885,1733,1776,1821,1367,1721,2158,1731,1368] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [456,458,459,1120,629,1078,1103,1075,648,647,7074,658,634,1091,1090,2339,7054] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [6389,6356,6358,6386,6247,6245,6408,5838,6292,5872,6202,6204,6241,6311] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [2372,2389,2399,2402,2379,2383,2378,1451,1457,1200,1209,1220,1206,1207,1212,2440,1195,1196,1458,2391,2394,2396] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [3054,3058,3059,2731,3250,3075,2762] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [5893,5896,5906,5882,6304,6302,6655,6639,6647,6331,6303,6288,6291,6297,6332,5845,5846,6645,6646] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [1450,1451,1457,1459,1435,1436,1446,1460,1463,2174,2372,2379,2383,2378,2202,2173,2184,2394,2396,1458] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [5929,6833,6834,5922,6847,6850,5928,5688,6889,5676,5677] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [7662,7664,7179,7180,7693,7211,7212,7523,7524,7189,7503] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [1422,1408,1411,1861,1859,1426,1860,1820,2176,1817,2182,2183,2184,2168,1425,1435,2174,2175,1374,1375,1826,1833] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [6230,6464,6466,6609,6579,6222,6085] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [3377,319,318,272,295,321,275,276,273,3336,3337,3341] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [2108,1751,2016,2138,1614,1625] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [582,327,3444,3378,3379,583] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [5103,5600,5601,5559,5108,5123] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [7277,7941,7280,8101,8104,8105,8106,7969,8128,8103,7313,7314] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [7662,7664,7211,7240,7241,7243,7244,7245,7649,7650,7623,7661] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        