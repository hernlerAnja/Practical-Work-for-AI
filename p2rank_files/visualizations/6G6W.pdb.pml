
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
        
        load "data/6G6W.pdb", protein
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
 
        load "data/6G6W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4262,5776,5745,1261,1836,5684,5716,5717,4260,4261,5707,5713,5741,5742,4608,4246,5720,4609,4250,4251,4252,4253,4532,4533,4224,1250,1253,4221,4566,1256,5279,5288,5289,5290,5687,5686,5906,4564,5903,5883,1835,5988,5708,5890,5899,5900,4562,5915] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5979,5980,5594,5596,5984,5991,5997,6548,6547,5615,5616,5595,5614,5895,5897,5679,5680,5652,5477,5478,5479,5457,5404,5408,5410,5411,5424,5425,6456,6043,6457,6000,6538,6540,6541,6522,6523,6542,6543,6546,6549,6003] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4098,4119,4120,4121,4102,4126,4414,4097,4101,4083,4090,4096,2645,4099,4100,4072,4081,4404,4407,4409,4413,4149,4151,4366,4367,4368,4329,4361,4350,4351,4352,4108,4110,4109,4039,4037,4047,4043,4327,2634,2635,2872,4382,4384,2848,4398,4375,4379,2632,2633] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [6533,6532,6449,6404,6403,6411,6402,6313,6314,6323,6324,6326,6346,6647,6662,6666,6668,6328,6665,6712,6714,6683] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2897,2926,2928,944,2851,2841,2924,3109,3097,2808,2944,2810,2814,2815,2898,2899,960,3108,4701,3105,930,931,943,945,928,3102,3112,3116,3117] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2977,4674,4675,4676,4680,4681,4667,2975,2982,2984,2985,7743,7744,7706,7750,7775,7776,7747,7749,7782,7777,7752,3125,3124,3137] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [5542,5545,1845,1847,5557,5559,5546,5556,1874,5550,1709,1694,1929,1932,1914,1838,1843,1711,1710,5547,1909,1870,1867,1868,5554,5555] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4522,5262,2018,2019,2020,4855,1723,1233,1722,1222,1185,1186,2017,2044,4816,4819] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3087,3091,3093,3079,3081,3083,3084,2786,3066,3067,3068,2783,4343,4342,2977,4680,4681,2975,2982,2985,2998,3078] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4623,4625,4598,4626,4893,4912,4891,5927,5932,5959,5960,5935,5938,4914,4920,4911,4943,4944,834,842,856] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2768,8457,8458,8459,2979,2980,2983,2985,7742,2774,3159,8420,8422,2220,2227,3125,3163,3166,2214,3171,2960,3167] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [6721,7411,6755,6832,6756,7410,7447,7445,6793,6782,7450,6693,6691,6834,7412,6833] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1867,1868,5862,5886,5868,6504,6474,6503,1864,5885,5806,5807,5845,1274,1273,1862] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [813,816,518,4871,784,837,579,577,621,535,548,549,616] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        