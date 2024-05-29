
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
        
        load "data/7E72.pdb", protein
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
 
        load "data/7E72.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2322,2334,8064,2363,2365,2342,789,7431,8046,787,393,462,463,2346,778,250,7427,7428,7429,7424,7411,7414,7416,7417] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [9603,5595,5607,8967,5615,5619,8969,4051,4060,8971,8945,8956,8957,8964,8968,5636,5638,9586,9604,3734,3735,3736,8951,3665,8962] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [6751,6572,7168,7169,7170,6755,6814,6816,6749,6563,6568,7185,6744,6758,6778,6578,6579,6583,6584,6587] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1875,792,794,820,774,782,791,2362,2309,267,265,266,289,366,268,755] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [7697,9151,9156,9158,9236,9237,7696,7712,9364,7815,9355,7812,7816,9418,9420,9161,7791,7792,7793,9217,9220,7818,9175,9215,9380,9378,7617,7811,7618] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [9252,9331,9333,9351,7815,7824,9355,9356,9352,7697,9157,7696,7611,7621,7629,7674,7675,7682,7683,7691,7677,7680,7614,7616,7681,7635,7838,7879] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [6751,6572,7169,6755,6815,6816,6749,6730,6739,6744,6583,6584,6587,6719,6721,6833,6834,6578,6579] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [4047,3539,3541,3639,5635,4065,4054,4064,4028,4093,5582,3562,5657,3538] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [977,2519,2516,2536,2537,2538,3228,987,3271,3261,3254,3255,968,972,1612,967,1614,1616,2542,980,981,982,995,3221] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1226,1229,1222,1223,1224,2909,1241,2933,1242,2674,2665,2672,2673,1225,1378,2666] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [7603,7605,7690,7688,9278,7627,7628,7924,9261] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [9462,9143,9145,9227,9229,9167,9168,7737,7738,9203,7721,9460] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [4494,5947,6206,5945,5946,6181,6182,6183,6196,6194,4502,4495,4497,4514,4496,4651] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [5317,5316,9545,5320,5324,5249,5275,9574,5318,5319,9427,9550,9554,9571,9184,9183,5303,4072,4073,4075,4071,9553,9543] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2040,2047,2051,7644,7887,2044,2045,2046,802,8033,798,799,8005,8014,8013,8031,8010,8003,8032,1976] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [6166,6156,6157,6161,4512,4514,6177,6180,6182,6216,6218,5947] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [9566,9569,8949,9563,3508,4044,4049,4075,4041,9570,9573,8942,3501,3512,3518] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [7409,8029,776,777,8030,8034,768,771,8026,8023,802,7406,7402,245,411,224,7388,234] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        