
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
        
        load "data/6HN5.pdb", protein
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
 
        load "data/6HN5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5848,5849,4517,5832,4363,4364,5360,5362,4876,4877,4486,4487,4488,4498,4500,4504,4511,4514,4515,4516,4383,4012,5824,5829,5833,5562,5564,4340,4891,5358,5359,5561,5579,4518,4521,4007,4008,4041,4917,3804,3808,4875,4881,4051,4973,4893,4896,4914,4899,4916,4036,4029,4032,4037,4013,4015,3984,3976,4000,3988,3985,3986,4025,5850,5847,6064,4557,4559,4578,4579,4580,4883,4553,4556] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [6337,5874,6089,6090,7469,7492,7493,7491,5854,5856,5858,7470,7450,7467,7451,7447,6696,6697,6860,6893,6678,5875,5605,5873,6800,6822,6823,6791,7445,7444,5606,7156,7159,7146,7147,7145,7151,7162,6348,6350,7144,7166,7187,7526,6334,6345,6349,7169,6341,6344,7518,7161,7525,7527,7186,6335] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3548,3549,6338,6339,7501,3762,6330,3760,3755,3758,6089,7469,6079,6080,4023,4024,4025,5850,5847,6065,7468,7470,6063,6064,4016,3778,3779,5848,5832,6327,3531] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [7586,7623,7590,7592,7593,7595,7620,7624,7661,6609,7587,7588,7189,7192,7193,7194,7226,7198,7199,2875,2876,2878,2893,2894,2872,2877,7201,6639,7249,6599,6606,6598,7250,1114,7625,7628,7630,7632,2919,2942,2943,51,53,56,28,18,7658,7659,47,49,189,7668,3053,3057,3058,3059,7594,3040,3044,7200] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [6348,6350,6118,7144,6373,6124,6127,6370,7146,7145,6790,7268,7269,6154,6341,6344,6103,6104,6352,5870,6801,5879,5886,5875,5872,5873,6802,6791,6085,5874] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [7219,7177,7181,7184,7186,7528,7529,7522,7523,7557,7535,3061,3258,3260,3259,3531,3265,3532,7174,7524,7525,3280,3546,3547,3548,3549,6339,7500,7501,6337,7492] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1368,1375,1376,1377,1596,7571,7614,6627,6624,6613,6619,6620,6622,6625,6626,214,215,1182,6941,6947,6931,6617,6936,6948,6952,6955,6956,6655,7577,1597,7573,6643,6932] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [6808,6809,6812,6865,6866,6810,6814,7397,5387,5402,5431,5403,5406,5401,7389,7390,7391,6718,6739,7388,6767] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1078,1080,2914,2943,7634,870,1099,1101,868,7667,7668,628,629,630,647] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [432,434,399,418,2185,2172,2174,2175,400,2346,2354,2348,2363,2338] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3089,3092,3111,3112,3113,3114,1546,1549,1333,1118,1119,1325,1328,1326,1327,1518,1523,1324,1314,1332,3083,1525,3105,1524] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [169,185,204,220,223,225,6614,6616,6610,6954,6955,172,6578] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [7544,1553,3068,3069,3070,3072,1548,1573,1569,7565,7567,7509,3071,3073,1536] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1219,1220,1223,1224,1229,1231,1232,1415,1660,1425,1667,1426,1427,1664] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [6314,6329,7216,6322,6290,6111,7217,6298,6343,6320,6355,6356,7239,6105,6109] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [233,7651,18,19,48,7622] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        