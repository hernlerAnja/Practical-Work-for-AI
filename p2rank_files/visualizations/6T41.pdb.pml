
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
        
        load "data/6T41.pdb", protein
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
 
        load "data/6T41.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1156,1155,1094,888,890,2857,1634,1636,2845,601,559,602,486,489,499,500,501,5694,2896,2863,2866,2592,2852,2856,2858,2851,2579,2580,1784,1785,561,886,1631,1633,1635,857,509,506,1315,1314,2625,2626,1682,1726,1727,1728,5636,5637,1630,1679,1664,1666,1762,1756] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3666,1897,1898,3576,3638,1818,1758,1760,1761,1755,1831,1832,1835,2567,2568,3141,3142,3120,3079,3080,3119,2546,1763,3721,3723,3667] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4861,5354,4828,3609,4765,4766,3605,4761,4776,4829,4741,2114,2116,1999,5295,5297,2126,2065,5380,2133] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [8456,5774,8401,5782,5784,5807,9009,9013,5809,5828,5830,5831,5833,9014,9015,5806,8321,8304,8307,8324,8403,8402,8378,8379,8999] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2454,2492,2493,2455,2986,2987,3334,2985,7439,7441,7443,2419,2421,2412,5708,5709,5714,5722,5748,2439,2434,2437,2438,2449,2452,1136,1070,7426] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [6167,8885,8887,9695,9696,9697,6040,6041,8947,8870,8872,9638,9640,9641,9636,8880,8884,6463,6391,6395,6396,6397,6398,6399,6400,6401,6402,6403,6328,8867] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [7192,7193,7194,35,7166,7167,7168,7169,10017,7798,7811,7813,9971,10015,7843,7901,7902,7842,7831,7839,7094,7163,7180,10070,10083,10099,10014,10067,10066,10013,34,10122] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [8287,5715,5747,8271,8272,5711,5712,8249,8284,7411,6784,6785,6786,6848,6783,7392,6748,6849] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3160,3161,3006,3008,3009,3341,3404,3222,3134,3158,3135,3077,2487,2509,2510,2488,3339,2515,2521,2524,3136,3220,3812,3815] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [5067,4155,3205,3206,4190,3281,3284,4267,4242,4268,4243,5082,5056,3358] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1034,1035,555,558,2907,2910,1033,2866,2854,2881,2887,1093,890,1090,2925] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4036,4053,4586,4138,4139,4140,4142,4078,5003,5033,5037,5038,4037,4040,4590,5025,4947,4950,5040] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [9141,9143,9546,9472,9473,9368,9299,9367] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1361,695,841,781,842,694,1362,381,1381,1383,1614,382] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        