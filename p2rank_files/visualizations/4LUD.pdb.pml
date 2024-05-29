
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
        
        load "data/4LUD.pdb", protein
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
 
        load "data/4LUD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6483,3272,6548,6549,6573,6534,3174,3175,3176,6450,6451,6452,6289,6290,6323,6324,6325,6327,3273,3295,3296,3297,6262,6291,6294,3173,3200,3201,3207,3199,3228,3231,3197,3198,3223,585,3202,3206,577,578,581,574,756,757,758,765,3307,3136,3163,3165,3017,3018,3023,3047,3011,3048,3013,3022,2983,3016,6572,3049,3137,6472,6473,6475,6499,6478,6481,6474,6482,6480,6503,6504,6507,6496,3947,6295,6296,6300,6301,6302,6261,4126,4127,4134,3946,3954] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1846,2391,2392,2459,1541,1643,1963,1968,1985,1988,1989,2008,1996,1646,1488,1651,1655,1657,1658,1659,1945,1948,1964,1861,2460,2461,2464,2367,2370,2015,2011,2040,1540,1542,1485,1486,2375] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [5611,4861,5228,5253,4745,4862,5198,5060,5176,5177,5202,5610,5161,4860,4858,5685,5589,5586,5686,5059,5678,5679,5220,5221,5201,4695,4744,4691,4692,4693,4697,4698,4743,4845,4846,5193,5209,4696,5158,4849,4850,4854] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3978,3980,4015,4253,4259,4265,3958,3982,3986,5346,5347,5357,5358,5359,5380,5381,5383,5348,4240,5382,3979,6506,3947,6536,6537,6562,4268,4262,4264,4280,4278,4244,6522,6523,5374,6487,6508,6512,6519,6528,6495,6526,6568,4281,4288,4290,4273,3945] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1671,1672,2485,2486,2502,1691,1694,1722,1928,1929,1670,1741,1740,2483,1771,1721,1886,1749,1724,1730,1720,1723,1884,1948,1947,1949,1863,1678,2501,1674] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [915,3260,609,610,611,888,894,897,899,588,3219,589,2161,3243,3247,3248,3250,900,903,913,923,925,576,578,606,613,646,644,2168,2169,2163,2164,2133,2134,2135,2138,2167,2170,2139,2144,2145,3261,3286,3290,3292] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [5097,5099,5161,4860,4933,4935,4858,5060,5176,5177,5610,4861,5694,5696,5697,5059,5679,5685,4984,4962,5077,5708] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4875,4931,4874,4930,4876,4877,4899,4900,4901,4929,4897,4898,4894,5707,5709,5734,5723,4873,4881,4888,5139,5140] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [546,543,547,481,533,630,524,539,541,501,542,1272,506,562,53,478,476,492,631,1279,64,1277,63,65,1293,1294,51,425] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [956,959,960,961,944,6293,6257,942,6316,6318,762,767,770,785,950,6284,6282,6201,6205,6208,963,6317,6285] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2221,2223,3194,569,568,2222,597,586,620,596,555,757,758,3223,585] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4420,4163,4166,4369,4371,4372,4341,4145,4148,4306,4316,4295,4092,4093,4342,4339,4340,4323,4326] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [6222,3335,1014,1035,1036,6204,6208,6209,962,3330,941,1019,955,1013,959,961,6256,6257,942] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3999,4488,3910,3911,4487,3413,4492,3875,3773,3845,3861,3401,3846,3793,3912,3847,3916,3843,3902,3893,3931,4000,3905,3908] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3636,3464,3632,3634,3635,3637,4551,4559,3461,3462,3743,3741,3744,3477,3481,3746,3490,4552,3629,3630] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        