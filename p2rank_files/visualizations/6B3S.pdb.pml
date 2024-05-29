
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
        
        load "data/6B3S.pdb", protein
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
 
        load "data/6B3S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3085,3086,3791,9136,9140,3775,3789,3790,4037,4038,4500,4501,4044,4045,9113,9115,9128,3817,9151,4065,9101,4066,9100,9150,3774,4053,3070,3071,3072,9087] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3120,13933,13939,14432,14640,14643,14645,14646,14431,14146,13941,13947,13949,14664,14661,14662,14663,14649,3792,9134,9137,9138,14162,14164,14163] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [13332,13333,13352,13353,12367,12368,13061,13063,13062,13354,13339,13341,12352,12353,12354,18447,18439,18461,18462,18398,18412,18411,13077,13325,13079,13784,13785,18424,18426] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [15661,15662,13431,16942,13415,13414,15696,15699,15700,15701,15702,15703,15824,16941,15836,15837,13702,15684,17671,17673,13422,13423,13426,16956,15704,17645,17651,17657,15690,17660,17654,17656,16952,15686,15683] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [7707,8401,8402,8671,8691,8692,8693,7691,7692,7693,8674,8678,8680,4482,4531,4532,4509,8386,4494,9119,9120,8672,4486,4517,7706,8418,8664] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [13805,13793,13801,13816,17006,13780,13770,13778,18430,17971,17978,17979,17980,17751,18431,17019,17020,17709,17708,17725,17723,17998,17999,18000,17987,17985,13752,17004,17005,13765,13766,13815] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [4139,4130,7629,7628,8349,6513,8338,6379,6385,6388,6389,6390,6393,4142,8350,8353,8347,7643,8344,6391,6392,6526,6525] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [12288,12289,12290,13008,13010,13011,18064,12999,18081,11183,11184,11171,18065,18068,18351,18353,11037,11043,11046,11047,11048,11049,11050,11051,13014] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [1783,3720,3723,3726,1904,3711,3722,3007,3006,3008,1765,1767,1769,1770,1779,1780,1781,1782,1916,1917,8757,8758,8761,9037] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [9585,9586,9587,9604,9372,9336,9338,9340,9327,9332,9361,9521,9522,9523,9525,9561,9321,9331,9564,9588,9343,9358,9371,9373] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [10634,10635,10664,10663,10641,9900,9901,9902,10656,10104,9850,10097,9859,9869,9872,10116,9898] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [8766,8768,8744,8763,8765,3739,3740,3741,3042,3744,3745,3064,3065,8746,8745] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [12324,18053,18051,18052,12347,13028,13032,13033,18072,18075,13029,13027] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4118,4119,8366,4141,8367,8368,4138,7685,7686,8372,7663] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [3686,3687,1072,1073,1199,1227,1226,1234,1202,3685,3221,3198,3223,3197,3192,3693,1246,1250,3196] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [15072,17311,17312,15088,15071,17310,16141,17301,14685,14686,14697,16130] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [17673,17675,13422,13425,13402,13403,16976,17672,17674,17679,16998,16999,16973] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [12505,12981,10427,12973,12974,12975,10462,10430,10455,10478,10292,10294,10481,10293,10474,12478,12479,12480,12474,12488] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [16616,16045,16046,16047,16249,16250,16658,16660,16254,16262,16263,16615,16027] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        