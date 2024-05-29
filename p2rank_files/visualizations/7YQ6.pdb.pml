
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
        
        load "data/7YQ6.pdb", protein
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
 
        load "data/7YQ6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7875,7210,7368,7341,7342,7366,7565,7304,7876,7313,7519,7538,7539,7540,7573,7483,7496,7499,7296,7315,7401,7367,7420,7644] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [961,864,982,770,875,963,904,1436,1435,926,928,1125,1134,901,1098,1100] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [5019,5021,5023,5024,5025,5027,5339,5340,4845,4846,4844,4847,5432,5431,5433,4791,4792,5003,4861,4864,5322,5323,5326,5278,5412,5351,5407,5408,5410,5613,5353,5356,5358] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [1505,1507,1511,1539,1569,1533,1546,1489,1502,1492,1494,1111,1115,1485,1116,1516,1651,1655,1656,1547,1561,1565,1657,1658,1660,1562,1665,917,1550,908,909,911] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [7947,8001,8002,8009,7929,7351,7932,7934,8096,8097,8098,8099,8095,7973,7979,7986,7925,7551,7357,7348,7349,7987,7990,7556,7941,7555,7936,7942] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [9013,9215,9096,9098,9083,9184,9185,9397,9099,9410,9408,9158,9113,8952,8945,8951,8961,8944,8950,8948,9115] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [11459,11829,11830,11303,11301,11805,11806,11808,11285,11286,11287,11304,11326,11847,11441,11443,11845,11325,11720,11737,11738,11460,11756,11724,11676,11721,11722] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [4121,4123,4512,4513,4113,4633,4635,4117,4134,3193,3195,3196,3197,3687,3667,3670,3684,3674,4553,3411,3666,3412,4124,4527,4000] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [6718,7058,6717,7069,6599,6813,7010,6572,7034] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [736,737,726,734,286,527,529,791,793,795,524,526,528,776,509,725,777,510,796,971,972,970] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [10952,10953,10124,10125,10126,10127,10107,10109,10110,10114,10567,10568,10564,9635,9847,11073,10123,10119,11075,10440,10991,10993,9637,10103,10106,10576,9636,10967,10957] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [373,618,619,277,570,158,418,278] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [628,630,418,278,159,618,619,277,158] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [6969,7235,7236,7165,7166,7174,7176,7177,7410,7411,7412,7216,6963,6964,7231,7233,6966,6968,7217,6950,7232] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [9611,9607,9608,9851,9852,9842,10099,3155,3169,2883,2687,2688,2902,2903,2904,2905,2906,2907,10590,9619,2683,2684,2886,2887,2888,2679,2677,2678,2680] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [2775,2957,2641,2643,2656,2659,2970] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [5963,5965,6167,6179,6163,5791,6255,6253,6381,5808,5809,6401,6403,5806,5719,5950,5952,6060,6166,5788,6165] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [3307,3290,3306,3514,3305,3116,3117,3119,3121,3111,3337,3341,3526,3482,3484,3480,3515] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [9366,9367,10571,10572,10542,10543,10544,10548,10597,10618,9162,9163,9194,9368,9373,9374,9388,9149] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [8231,8235,8237,8458,8460,8426,8400,8409,8410,8411,8417,8241,8246,6490,6496,6497,6662,6462,6481,6463,8238,8249,8254] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [6718,7068,7070,6599,6700,6597,6625,6626,6856,6858] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [12361,12363,12206,12457,12560,12565,12653,12188,12803,12577,12580,12801,12350,12561] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [23,1795,1797,1798,41,22,2021,2022,2020,1969,1961,1960,1971,56,1814,1977,1986,222] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [10593,2906,10591,10589,4159,2694,4164,4158,10603,10592,9134,4155,9346,9353] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [9118,9119,9120,9342,9343,9344,9345,9346,4150,4151,3179,4153,3167,3171,3412,3661,9122,9123,9323,3168] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [10632,10655,10439,10440,10628,10627,10580,10575,10577,10562,10564,10574,10635,10633,10457,10459,10563,10953] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [11669,11670,11416,11893,11925,11435,11942,11436,11890] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [2795,2996,2997,2998,2798,2799,2805,2643,2821,2850,2820,2807] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [591,517,570,618,516] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [9155,9352,9115,9153,9159,9156,9158,9360,9185,9398,9160,9154] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        