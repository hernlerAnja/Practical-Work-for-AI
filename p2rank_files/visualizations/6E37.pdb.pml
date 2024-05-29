
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
        
        load "data/6E37.pdb", protein
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
 
        load "data/6E37.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1183,930,946,948,908,909,911,916,921,912,5556,913,914,1149,1467,1469,1470,1128,999,1127,1129,5550,5547,5552,5555,5560,1441,1438,1434,1435,1097,1424,1422,653,886,858,1095,867,860,1098,1096,5534,5537,5539,5540,5543,5538,3967,3969,3970,3988,1181,1182,3986,1947,1949,1950,1952,1459,5544,5545,1957,3989,1458,1460,1468,3987,1151,1152,2711,1454,1483,1484,2691,2693,2712,5525,5529,4225,4226,4222,4231,4218,4219,4227,4233,5532,1933,1934,1973,3728,4434,5516,4439,5524,4448,3726,3729,4640,4631,4633,4456,4660,3998,3999,4604,4632,4623,3011,3013,4621,1981,2685,4481,4483,4484,3946,4203,4452,4449,4454,4479,4480,4482,4436] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1668,1669,2573,2574,662,5564,2517,2566,1615,1617,1644,1612,1635,1638,5560,2575,2546] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2717,2720,2723,1554,1555,1557,1529,2714,1447,1484,1477,1476,2709,4768,4771,4774,1481,4773,2907,2893,2894,2898,1527,1530,1532] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1137,1028,1030,1006,1008,1009,1114,1110,1112,1165,1222,1267,1268,1269,1270,1230] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2527,2528,2530,2533,2534,2535,2536,5551,1910,5545,1911,2693,1942,1943,1944,5536] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3180,3193,3195,5081,5047,5048,5050,5051,5082,5085,5086,5080,3191,3221,4546,3899,3900,3907,3909,3897,3202,3203,3204,5078] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3201,3204,3126,3127,3398,5114,4698,5141,5108,5109,5110,5117,5118,5082,5084,5086,5088,3399,5148,3124,5142,5145,5146,5143,3384,3386,3392,3396,4693] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1209,1215,4306,4308,4303,4020,4021,4341,1208] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2521,2490,2564,2565,2755,2728] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4637,4560,4639,3943] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        