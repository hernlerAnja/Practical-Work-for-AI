
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
        
        load "data/2ZM3.pdb", protein
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
 
        load "data/2ZM3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1318,1320,1323,1325,1327,582,782,659,778,212,799,209,211,208,214,1243,220,796,794,415,416,418,557,227,230,242,244,235,775,776,264,401,215,263,265,1214,823,1242,830] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [6115,5028,5040,5377,5595,5596,5031,5221,5032,5029,5403,5598,5238,5085,5047,5050,5070,5036,5350,5054,5055,5062,5234,5235,5083,5084,5236,5237,6107,6003,6112,5646,5650,5652,5479,6031,6032,5619,5620,5642,5643,5602,5616] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [7348,7377,7972,7973,7351,7957,7958,7657,1997,2005,966,967,968,969,1784,1783,7949,7950,7951,2001,2000,1993,1994,1769,1767,974,977,1013,918,919,7492,928,7389,7395,7394,7396,7493,7494,7473,7642] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7993,7994,7877,7636,8485,7445,8492,8491,8494,7775,8408,8483,8484,8486,8487,8381,8395,8490,7634,7448,7452,7633,7635,7460,7427,7482,7483,7425,7426,7431,7438,7429,7619,8000,8041,8044,8409,8050,8048,8017,8014,8019,8410,7430] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3720,3718,2645,2638,2639,3201,2826,3207,3219,3221,3638,2636,2637,2634,3007,3713,3203,3224,3248,3251,3637,3609,3255,3258,3619,3620,3618,2842,2843,2690,2652,2640,2982,2655,2840,2841,2689] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [7853,7854,7864,9522,8457,8224,9521,9469,9483,9485,8198,9486,9491,8435,8439,8456,9472] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [5764,5761,5751,5740,5741,5748,5788,5790,5791,5826,5827,5828,5686,5687,6066,6067,6068,6070,6065,5816,5817,5792,5793,5795] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [4039,4048,4046,3520,3514,3540,3487,3490,4594,4601,4606,4607,4038,4072,4597,4589,4580,4588,3513,3519,3515,3489,3523] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [7634,7748,7448,7452,7454,7632,7777,7743,7772,7776,7460,7462,7636,7445,8492,7775,7483,7468] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [1005,1006,1002,1003,1004,1027,1028,1001,972,975,976,900,962,1279,1281,947,866,867,1276,1277,1039] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [8311,8588,8589,8590,8286,8291,8292,8295,8259,8261,8262,8287,9370,8814,8815,9364,9366,9377,9382,9383,9365,8824,8826,8550] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [4745,4746,4708,4709,4715,4707,3667,4696,4693,3060,3061,4706,3452,3684,3663,3426] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [1128,1092,1120,2199,1642,1643,1644,1122,2202,2190,2193,2195,2185,1651,1653,2211,2212] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [4023,3950,3976,4005,4025,3949,3902,3862,3863,3864,3865,3866,3874,3884,3885,3886,3887,3577,4004] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [2312,2313,2314,2351,2311,1057,1289,646,635,636,1272,2297,1031] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [6297,6347,6348,6284,6285,6286,6294,6299,6300,6423,6403,6260,6261,6262,6272,6283,6374,6380] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [1492,1504,1467,1468,1610,1507,1182,1555,1581,1587,1554,1591,1489,1490,1491,1493,1479] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [5466,5846,5455,6079,6078,7094,5820,7144,7105,7107,7104] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [6094,5607,6044,5454,5456,6095,5611,6061,6077,6078,6059,6060] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [6854,2869,2925,2891,2892,2927,2883,3158,2449,2895,2444,2447] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [2304,2307,2551,2579,2306,2329,2332,2333,2580,2547,2288,2289,2297,2262,2290,2318,2389,2275] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        