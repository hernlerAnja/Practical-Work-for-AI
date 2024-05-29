
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
        
        load "data/7YSW.pdb", protein
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
 
        load "data/7YSW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9678,9731,9748,9656,9664,9666,9760,9755,9757,8811,9761,8812,8814,6349,6350,6847,6841,6842,6845,8838,8839,6879,8847,8849,8837,10083,10120,9746,9747,6984,6976,6959,6960,6974,6975,6915,6914,6877,6980,10158,6981,6982,6983,9659,9642,9669,6318,6320,8825,6308,9457,8818,6386,6849,6935,6937,6886,6887,6883,6882,6927,6942,6929,3428,3431,3435,3439,3451,3453,3452,3454,3421,6385,9654,9655,3426,3434] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [144,145,10958,10963,10950,10951,10955,10956,10959,169,171,220,223,226,227,228,246,247,113,250,251,217,212,2244,2245,2243,141,772,112,176,183,208,11586,11587,2253,2254,11572,10946,11847,10949,11848,2125,2123,2124,10947,173,11585,11844] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [10295,10296,9422,9424,9425,9426,9961,10380,10382,10379,10381,10303,7133,7135,10353,10360,9420,9421,9423,9434,8783,8770,8426,7124,8037,7117,8034,8035,9722,9721] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [477,478,494,495,496,497,526,528,2164,2165,2186,2194,2196,214,231,562,1881,1883,2248,547,548,251,249,1897,1898,1899,1919,1880,2230] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [2823,10814,10815,10817,10816,2910,2819,2821,2862,2907,2885,2882,2884,3215,2820,2822,3103,2868,2872,2877,2879,2881,2866,3216,3198,3200,10810] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [5901,5906,5893,5894,5895,5883,5410,5412,4802,4915,4916,4950,5592,5597,5600,5599,4951,5619,5620,5926] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [3356,5984,6011,6001,5985,6395,5986,3391,3390,9661,6358,6359,9646,12132,3421,6417,6418,6419,9654,6003,3422,9660,9672,9673] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [8450,8998,9000,8960,8964,9119,8496,8476,8483,8488,8498,8482,12219,12220,8457,12202,12195,9574] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [3587,3885,3550,3554,4008,3998,3818,3820,3596,4177,4179,3980,3981,4001,4222] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [555,320,342,344,410,412,413,504,507,482,486,489,487,488,468,473,492,491,501,550,546,405,414] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [9926,7076,7633,7634,7964,7965,7057,7056,8372,10764,10765,8364,10766,10748,10752,10755,10757] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [8153,8477,8480,8510,8474,8064,8065,8066,8141,8168,8439,8442,8469,8467,8473,8472,8468,8155,8059,8062,8026,8027,8481,8486,8169] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [11872,11873,11596,11614,1063,1064,1066,830,11184,1068,11244,1061,1067,1062] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [9824,8887,8920,8820,8821,8888,8889,8891,8795,8812,8813,8814,9794] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [1079,1080,10871,10872,1316,1352,1103,1084,1375,10880,10878,1376,1344,1366,1368,1348,1353,1362] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [10326,10421,10425,9981,10366,10362,10365,10328,10329,10330,10358,9985,11966,11969,11973,11957,11972,9989,10004,11976,11978,9993] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [11340,11418,11419,11460,11484,11483,11339,11407,11409,11356] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [7205,7212,1396,7483,7490,7466,7447,7441,7210,7491] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [6670,6620,5815,5820,5825,6586,6582,6594,6610,6583] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [2505,2513,2521,2502,2727,2733,2487,2489,853,855,842,844,2523,2723] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        