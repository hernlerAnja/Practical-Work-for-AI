
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
        
        load "data/4QP3.pdb", protein
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
 
        load "data/4QP3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3934,3960,4035,3562,3563,3564,3575,3604,2923,3526,3549,3959,3076,3531,3544,3547,2924,3523,3075,3943,4036,4034,3091,2975,2976,2977,3241,4037,3093,2941,2928,4043,4040,4041,2946,2945,2955,2957] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1174,1274,1275,1183,1280,1281,1282,1276,333,482,1277,1283,179,481,182,186,193,195,197,440,1296,815,844,802,803,804,1199,1200,843,168,164,216,766,217,330,331,332,788,316,795,787,1175] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [962,2418,4525,964,4536,4537,4552,2464,2463,2416,2406,2413,2415,4554,4556,4710,4553,1004,1234,574,575,994,995,1028,1002,2470,1029,1030,2460,582,4559,4562,4563,4564,4590] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1977,1979,1985,1812,1950,1951,1912,2249,1849,2251,1889,1778,1779,1504] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4152,4183,4295,4268,4543,4544,4548,4547,1230,934,938,1229,4241,4542,4166,4168,4142,4143,4148,1221,1224,1223,4271,4278] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4288,4287,4991,4992,4652,4651,4654,4655,4660,4675,4676,4735,4737] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1508,1513,1361,1484,1486,1487,1488,1507,1554,1135,1136,1522,1520,1523,1404,1399,1384] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4440,4488,3629,3590,3931,3936,3592,3594,4229,4231,4487,4219,4195,3921,3923] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [5315,3228,3230,5284,5286,5312,5298,3189,3192,5385,3193,3222,5410,5302,5294,3231,3258,3259,3257] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [869,830,832,834,1159,1170,1163,1176,1161,1433,1435,1447,1411,1445,1637,1684] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4180,4169,4172,3203,3178,3180,2954,2956,2957,3205,4066,889,890,4065] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3722,5161,3724,5159,5205,5154,5156,3342,3343,3764,3994,3335,3754,3789,3790,3755] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4204,4214,4215,4216,4217,4218,4219,4195,923,925,924] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3721,3722,3723,5161,3724,5159,3718,5163,3698,3996] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3258,3259,3267,5265,5263,3292,4089,5277,3254,4083,5282,5284,5293] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        