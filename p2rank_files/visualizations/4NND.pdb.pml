
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
        
        load "data/4NND.pdb", protein
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
 
        load "data/4NND.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [663,1918,1888,1885,668,669,670,671,681,657,654,1653,1655,1848,705,1703,691,694,1710,1699,1685,1682,6576,6577,6578,1689,6561,6558,5314] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2989,2994,2995,2996,2997,3007,4036,3017,2980,2983,3020,3031,4211,4214,4235,3979,3981,4174,4244,4029,7604,7606,8869,4024,4025,4026,4027,4011,7607,8849,8851,8852,7602,8868,4015,4008] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4855,6700,6739,6740,6743,4853,4854,6736,4852,5059,6422,5068,5069,5070,5065,5071,4884,4916,4885,4931,6759,6761,4833,4856,4886,4887,4888,4834,4835,4838,6971,6972,6733,5096,5074,4917,5094] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [7144,7145,7147,7148,8991,9024,9027,9030,9034,7363,8713,7352,7169,9050,9261,9263,7149,7126,7127,7128,7131,7177,7178,7179,7146,7150,7180,7181,7209,7224,7367,7387,7389,7364] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [7608,7609,7610,7620,7593,7596,7630,7633,8636,8643,8588,8821,8818,8618,8851,7602,7644,8781,4261,4260,4262,8634,8632,4244,4245,4242,4254] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [6295,6530,6297,6490,6527,5351,6324,6327,6345,5327,6352,5337,5340,5300,6560,5309,5314,5315,5317,5316,5303,6292,1916,1920,1926,6331,6341,1914,1918,1919] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2049,2326,2328,2329,2330,2325,2082,2044,424,2088,2092,444,446,2085,421,409,2321,266,234,235,236,237,238,281,203,207,204,205,201,226] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2735,4660,4661,4417,2750,2770,2747,4420,2563,2564,2607,2530,2528,2529,4379,2531,2552,2772,2560,2561,2562,2592,4423,4663,4665,4427,4656,4664] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1574,1561,1562,1554,1585,1587,1279,1586,1277,1278,2636,2638,1575,1576,2619,2805,2806,2823,2908,2907,2664] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [6216,6227,6203,6204,6229,7396,6196,5921,6228,5919,5920,6198,7397,7231,7229,7393,7394,7395,7422,7440] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [9,13,15,14,6303,5,6329,1900,1903,1935,1932,1916,1920,6330,6331,1928,1,19,6292] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [7599,8793,7595,8828,8829,8883,8882,8791,8940,8945,8906,8914,8950,8911,8970,8971,8972] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [6537,6538,6500,6502,5302,5306,6592,6591,6659,6623,6615,6620,6649,6679,6680,6681,6654] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        