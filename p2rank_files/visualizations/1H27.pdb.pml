
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
        
        load "data/1H27.pdb", protein
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
 
        load "data/1H27.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2989,2990,3431,3399,3422,3423,4506,5017,4503,4516,4498,4479,5032,5030,4477,3426,4517,4667,3424,3420,3421,5016,5005,5006,5014,5015,2980,5009,4703,5109] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [1,2,4,31,41,42,7827,7417,192,7418,23,228,242,539,542,530,534,531,533,634,7813,7821,7822,7859,7848,7408,5037,7850,7851,7852,5,5035,5036,5043,5044,7818,7820,5045,5050,5051,5054,7815,7816] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [1087,89,92,698,701,726,650,1086,667,670,263,641,643,642,248,147,145,146,98,100,101,95,93,1158,1070,1058,265,645,1159,1160,108,264,1163,1164,1166] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5561,5633,5562,5169,5173,5640,5641,5176,5533,5161,5201,5202,4983,5120,4740,5115,5116,5117,4739,5118,4723,5125,4621,4620,4622,4582,4583,4575,4576,4564,4567,4570,5137,5142,5145] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [7057,653,654,655,1145,651,1103,659,2349,1128,1115,1116,516,514,7071,7072,7073,229,473,481,484,483,469,494,7048,7056,7052] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [3542,3546,3547,3544,3578,3665,1238,1239,1236,3662,3666,3641,1223,1252,1253,3512,3514,4356,2848,2850,4363,4365,3693,3667,3672,3692,4377,2841,2843,2851,2847,3511] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [3816,3504,3833,3838,3839,3860,2557,2571,3799,2940,3802,3739,3786,3787,3788,3736,3737,2570,3487,2878,3492,3498,2882,2912,2909,2906,2905,2903,3747,3741,2528] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [7969,7970,7973,7974,8092,8093,8094,8090,8088,8095,8096,8100,8779,8791,8006,8068,7936,7939,7940,7278,8120,8793,7269,5727,5728] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [7915,7920,7925,8266,7932,7310,7926,8288,8175,8164,8165,8167,8169,8214,8216,8244,7331,7333,7368,7340,7306,7334,7337,8230,7127,6990,6992] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [5129,5620,5575,5578,4958,5619,5603,5149,5593,6777,4991,4956,4959,2624,2625,2643,2644,2645,2996,5126,2622,5134,4993] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [6307,6323,6349,6350,6316,6321,6341,6625,6626,6627,6619,6612,5915,5925,5902,6618,5901,6617,5916] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [2197,2198,2199,2182,2183,2184,2189,1440,2190,2191,1427,1847,1848,1870,1874,1875,1830,1832,1835,1841,1441,1432,1439,1846,1450] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1213,1223,1252,1253,1255,1273,1222,1275,2857,3512,3514,3518,3151,3152,3519,3520,1214,3546,3547,1236,2856] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [6859,6819,6822,6823,6825,6861,5720,5941,5707,6862,5709,5940,6824,6848,6887,5695,5696,5948] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [370,371,282,377,404,118,124,111,116,1179,265,108,264,1165,1166,280,120,130,372] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4879,4740,4590,5654,4586,4591,4845,4846,5640,4737,4738,4593,4595,4583,4605,4597,4755,4744] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [2432,2402,4045,3595,3597,3551,3583,3584,3586,2429,2435,3596,4041,4042,2439] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2580,4940,4942,4943,4944,2627,4991,4945,2626,4947,4955,2974,2978,2980,4992,4993,2629,2625] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6151,6155,6156,6191,6181,6179,6222,6223,6376,6379,6382,6383,6362,6374,6368] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        