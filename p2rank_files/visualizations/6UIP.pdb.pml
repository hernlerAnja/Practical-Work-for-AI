
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
        
        load "data/6UIP.pdb", protein
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
 
        load "data/6UIP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1350,1379,1471,970,1378,1469,1470,955,950,779,930,944,1351,341,1473,488,490,1468,486,922,925,924,920,921,923,340,1362,1476,1477,1479,1338,977,959,954,306,307,473,943,947,303,309,310,312,315,359,360,361] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4660,4661,4662,4663,4664,7674,4650,7740,7742,7746,7741,5255,5184,5234,5239,5240,5254,4668,4675,5187,7345,4696,7342,7343,7344,7368,7369,7706,7707,7708,7751,4694,4769,4770,4695,7671,4670,4671,7648,3848,7222,7235,7236,7237,7238,5175,5176,5177,7820,7805,7747,7223,7749,7804,5143,5141,5142,5186,5188,5181,5182,7234,7245,7246,7247,7248,7249,7270,7752,4794,4795,7269,6492] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [6772,6883,6886,6887,6889,6878,6879,6880,6881,6760,6788,5869,5870,5872,5875,5882,5901,5898,5900,5066,5067,5068,5885,6732,6749,6748,6761,6410,6403,6005,5890,5921,5865,5867,5919,5920,6353,6789,5988,6363,6377,5868,5864,6380,6388,6387,6392,5863,6003,6354,6355,6356,6357,6358,6359] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3092,3098,3150,4139,3095,3766,3148,3149,3104,3279,4242,4245,4246,3129,3130,4151,4248,3277,3712,3714,4236,4241,4240,3738,3739,4167,4238,4239,3737,4166,4168,3262,3719,3568,3709,3710,3744,3733,3731,3736,3763] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [6289,6287,6286,6288,6290,6285,6270,5837,5835,5813,5995,5996,5816,5802,5803,6013,6333] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [325,330,331,338,340,1362,1478,1479,335,612,1322,1338,1339,1621,1492,1493,1494,1495,1496,1499,1500,1617,1616,1602,328,329,332,553,555,578,550,334,506,579,322] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3119,3124,3118,3127,4111,4247,4248,4262,4263,4264,4268,3342,3344,3339,3367,3368,3372,3373,4261,3376] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [6559,6560,6564,8106,8107,6534,6567,6594,7884,7918,7889,7877,7878,7883,7849,7887] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1637,1638,1639,1640,1641,1642,1643,1630,1857,1901,1337,1355,1346,1354,1653,1654,1345,994] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [5887,5890,5891,5895,5888,5892,6069,6071,6005,6127,6902,6903,6093,6094,6095,6096,6098,6099,6102,6065,6732,6888,6889,5898] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [6359,6232,6233,6159,6161,6195,6338,6130,6134,6255,6168,6240,6243,6345] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1371,1832,1150,1841,1185,984] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        