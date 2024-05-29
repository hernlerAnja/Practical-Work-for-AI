
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
        
        load "data/4WWO.pdb", protein
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
 
        load "data/4WWO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4786,4787,4788,4924,4941,4784,4785,4926,4927,1006,1008,1010,4724,4726,3311,3268,3269,3270,3273,3552,4763,3583,3584,3585,3586,3587,3588,4305,3274,443,444,4315,4319,4320,4321,3553,850,979,981,4762,3632,3275,3630,4955,4947,4944,4727,4813,4814,1002,1005,4809,4810,4811,4815,4852,1031,1032,1033,993,4783,4816,4817,4820,4850,4878,4888,495,516,524,514,3249,3282,3283,968,966,967,994,992,1001,3246,3279,3281,4851,472,996,998,4908,4889] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4426,4429,4430,4431,4432,4492,4494,4470,4443,4656,4472,5660,5661,5650,5652,5653,5572,5573,5064,5545,5079,5041,5023,5037,5040,4636,4937,5654,4933,4934,4936,4938,5018,5019,4654,4635,4482,4634,4486,4935,5043] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6126,6159,2162,2163,2165,2166,2167,6206,6232,6127,3083,3089,3091,6102,3077,3090,2498,6096,2499,2509,6204] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1130,1159,1157,3542,3544,3872,3874,3897,3900,3866,3867,3864,3865,3868,4285,4324,4325,4326,4283,4284,860,4348,4349,421,423,424,859,422,405,406,879,880,1131,3538,3539,3545,3540,856,4327,4329,4330,3546] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1956,204,188,2215,2217,2218,2216,1954,2038,1950,1948,3413,2220,3414,206,165,169,168,187,2224,3745,159,177,179,180,171,212,211] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3009,474,471,473,4859,2998,3015,3017,3294,3000,3293,3225,3257,3258,3002,3011,4823,4819,6052,6054,6078,4797,4827,4818,4821,4822] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2733,3052,3100,3102,2531,2765,2767,2768,2769,2741,2498,2513,2499,2743,3088,3090,3087,3089,3091,6102,3077] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3133,1782,1786,1788,3116,2880,2882,2883,2010,2012,1776,1779,2849,2850,2851,2822,1770,1243,1246,2820,2824,1973,2853,2856] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [6168,6169,6170,4703,6162,3665,3365,6163,2174,6155,2186,2187,2188,3693,3690,3694,3712,3683,4686,6184,6185,6183] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [444,4320,442,866,867,868,869,3553,4329,4330,850,979,973,423,962,963] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4744,4746,5484,6119,6121,6151,6150,6220,6223,6246,5690,5689,6176,6177,6178,6175,6192,5490,5492,5499,6247] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1770,1242,1243,1244,1246,1240,1241,1235,1786,2010,2012,1972,2007,1233,2006,1973,1227,1231] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4455,4457,5685,5686,4443,4656,4431,4432,5556,5659,5660,5661,4444] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4904,5398,5400,5401,5402,5403,5369,5370,5372,5357,5364,5365,5368,5399,5360,5362,4890,556,557,4887,510,509,1030,1033,1028] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [5532,5126,5124,5125,6564,6566,6568,5151,5160,5162,5533,5091,5549,5089,5092] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        