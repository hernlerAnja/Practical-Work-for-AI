
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
        
        load "data/6N46.pdb", protein
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
 
        load "data/6N46.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [11968,11970,1645,11967,11969,11955,11956,11989,1643,1644,2706,2708,11957,3207,1641,3234,11450,11931,3210,3212,3214,2693,2694,1654,2695,3177,11461,11463,11462,11929,3206,3201] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [11622,11623,11611,11628,11630,11631,8093,8091,11629,8127,8129,11595,8109,8120,8121,8087,8090,7976,8088,8085,8086,7972,7974,8084,8112,8114,8098,8107,11586,11587,11600,11614,11616,11474,11476,11643,11588,11590,11593] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [3133,7830,7864,7866,3134,7804,3024,7141,7122,7806,7826,7837,7832,3126,3115,7107,7862,7834,2995] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [11756,11757,11766,11758,11754,11761,11623,11759,8092,3107,3110,3121,8006,8073,8072,8145,7990,8089,8090,7976,7859,7861,7862,7863,7864,3135] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [7643,7645,7665,7666,7638,7005,7649,7747,7669,7713,7715,7708,7711,7673,7035] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [3586,4512,5111,3561,3575,4527,4389,5057,5186,5084,5085] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [9616,9617,9823,9824,9843,9990,12594,12595,12596,9896,9615,12783,12782,12776,12777,12780,12781,9913,9911,9974] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [9278,9279,9274,13345,13398,13492,13119,9093,13117,13326,13413,13415,13325,13476,13477,9280] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [2761,1835,2776,1823,3370,2638,3334,3360,3437,3435] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [2413,2416,2385,2412,2457,2494,1783,2390,1752,2460,2462,1775] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [84,1609,887,1583,72,1555,59,1010,1025] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [6689,6351,6687,6204,6205,6207,6209,6374,6690,6206,6208,6210,6675,6712,6714,6676,6679] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [9990,12596,9844,9896,9894,9989,9843,12612,12614,12600,12616,12776,12777,9974] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [10218,10178,10181,10189,10190,10191,10192,10183,10187,9708,10216,9710,9705,9857,9869,9873,9874,9876] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [13212,13209,13210,13211,13213,13214,13689,13691,13692,13693,13694,13378,13680,13683,13716,13717,13678,13679,13718] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [12896,12898,12258,12891,12289,12966,12968,12970,12971,12972,12919,13013] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [10441,10338,9642,10307,10308,10310,10337,9780,8827,8814,10364,8824,8839,10439,9641,9765,9597,9761] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [3176,3177,11942,11456,11457,11460,11604,3205,11624,11625,11627,11620,11612] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [11531,10565,10576,10577,10578,10590,11517,12058,12059,12115,11393,12061,12088,12089] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [2962,3103,3067,3069,3073,3074,3056,3125,3196,3197,3228,3227,3195,3070,3095] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [13460,13118,13119,9093,13413,13415,13476,13108,13109,13306,13459,13110] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [8556,8557,8587,8613,7891,8015,7088,8690,8559,7063,7076,8029,8010] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [1121,1437,1423,1426,955,951,952,953,954,956,957,1098,1100,1436,1421,1422,1427,1428,1459,1461] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [6937,6862,6939,6140,6808,6836,6278,5325,5337,6263] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [9467,8787,9464,9466,8756,9420,9498,9394,9504,9461] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [13281,13290,13294,13789,13790,13291,13292,13756,13757,13811,13284,13287,13251,13298,13297] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [10528,10529,11214,11215,11247,11168,11171,11213,11167,11175,10532,10537,11145,11249,10507,11140,11212] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [12356,12355,12364,12372,12375,8902,12358,12394,13089,13085,13090,13087,13115,8877,8901] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [2705,2707,11920,11930,11921,2701,2702,11931,2849,2869,2870,2872,11894,11895,11893,3187] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [4208,4213,3534,4251,4252,4255,4243,4245,4167] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [502,364,353,354,356,358,313,315,316,317,318,312,314] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [10652,10653,11031,10849,10851,10633,10779,11036,10873,10690,10794] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        