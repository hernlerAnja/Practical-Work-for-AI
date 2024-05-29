
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
        
        load "data/7RAM.pdb", protein
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
 
        load "data/7RAM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4862,5104,5106,5130,5138,5139,4899,5278,5279,4863,4901,5353,5382,4845,4848,4846,5375,5060,5131,4935] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [1827,578,577,579,687,696,698,702,691,662,692,575,550,552,1802,6898,547,1815,1826,664,6859,6835,1333,1335,1332,1330,1804] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [1304,1612,1701,1702,1296,1297,1302,1307,1289,1295,1311,1283,1679,1683,1685,1686,1626,1550,1417,1420,1536,1537,1551,1627,1419,1421,1317,1318,1319,1320,1315,1323,1326,1678] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [8712,8714,8715,8716,8721,8722,8705,8057,8079,8052,8062,6012,6013,8046,8723,8671,8684,8681,8682,6020,6011,6022,6347,8066,9615,9616] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [5464,5457,5452,5453,5504,153,5476,472,463,473,476,5645,5640,5641,5643,5644,5597,5590,5596,5600,288,289,5648,151,465,466,467] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5024,3730,5192,5195,5197,5198,5187,3402,3403,5180,5178,5182,5039,5040,3721,3722,3728,3729,3731,3735,5023] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [11874,11867,11870,11875,7823,7837,7838,11450,11451,11452,7822,11868,7789,7790,7793,7794,7797,7801,7802,7803,7624,7625,7626,10687,8173,8175,8172,8179] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [949,950,951,2688,3107,2742,2743,2744,3475,2299,3869,3871,2716,2719,2253,2231] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [8250,8871,9366,9368,8873,8878,8249,9391,9048,9050,9426,9399,8909,8911,8228,9425] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [3462,3890,3892,3463,3464,3775,3893,3850,3852,3837,3838,3803,3770,3800,3424,3766,3767,3768,3894,3895,3432,3435,3436,3439] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [7587,7589,7590,7592,7593,7594,7559,10595,10610,10759,10761,10314,10045,10046,10306] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [3530,3526,3501,3503,3524,4201,4221,4199,4204,4219,3550,3552,4220,2771,2770,2772,2775,2802,2803,2767,2768] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5025,5030,5031,3997,3714,5018,3719,3720,3723,3724,3716,3749,3752,3987,3988,4030,5017,5006] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [2796,2845,2846,2770,2803,2769,2887,2886,3168,3560,3561,3549,4232,4233] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [6277,6289,9480,6280,6281,9478,9486,6273,6276,6278,6282,6288,9510,9487,9485,9544,9509,9556,9552,9550,9551] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4201,4199,4204,3501,3503,2771,2772,2775,2802,2803,2777,2767] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [7325,7341,7576,10656,10621,10622,10655,7368,7568,7565,10646,10648] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [7081,332,7082,6575,6557,6558,342,6570,6576,7044,7074,7075,7080,7048] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6944,6907,6909,6936,6938,6991] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        