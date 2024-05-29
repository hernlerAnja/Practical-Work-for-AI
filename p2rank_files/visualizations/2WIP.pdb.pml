
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
        
        load "data/2WIP.pdb", protein
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
 
        load "data/2WIP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [253,1058,1151,1154,135,628,638,629,630,631,632,497,236,134,115,117,119,114,113,655,653,393,634,1147,1148,658,1075,682,673,689,1046,1074,1146,133,252] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4589,4590,4568,4569,4574,5513,4848,5086,5089,4707,4708,5084,5085,5087,5602,5603,5606,5607,5609,4706,5088,5530,5137,5141,5144,4951,4952,5529,5601,5508,5501,5083,5093,5110,4691,5113,4572] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [530,518,527,622,528,545,7840,7405,7406,7815,180,65,66,217,7400,7407,216,519,521,7396,27,30,55,52] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4671,4976,4974,5077,4520,4521,4634,4635,4507,4510,4485,4481,2991,3426,2992,3401,4973,4983,4985,2982] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2433,2404,2405,2406,2428,2431,1221,1227,1425,1222,1225,1226,3558,1202,2423,2425,1449,1450,2421,1208,2461,1203,1204,1206,1436,988,1446,3588,3589,3549] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6845,5904,5905,5906,6833,6841,6842,6875,6829,5663,5911,5912,6847,8002,5677,5683,5891,5901,5680,5681,5682,7963,7972,5657,5658,5659,5661] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [3548,3549,3575,3578,3580,3667,3668,2849,2850,3514,2852,3695,4367,4369,2845,2851,3674,3664,3641,3669,3643,3693,3662,3663,4353,4365,1227,1219,2843] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [7263,7264,7259,7257,5681,5682,7963,7961,5674,7962,7928,7927,8107,8108,8109,7266,8781,8783,8076,8083,8088,7958,7992,7994,8078,8081] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [7920,8203,8276,8153,8155,8157,8159,8255,8254,8232,6986,6987,7356,8215,8213,8218,6973,6977,8214,7325,7322,7328,7321,7911,7913,7294,7297,7319,8163,7903,7908] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [554,555,288,3391,286,285,315,340,330,331,332,334,3383,3385,3386,3389,3352,3354,3363,3364,3356,566,296,3353] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2573,2572,2942,3804,2907,2880,3749,2905,3745,2563,3840,3841,3818,3835,3494,3500,3506,3789,3862,3741,3799,3739,3743,2555,2559,2914,2908,2911,3489,3499] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [647,660,671,641,643,1133,471,1132,1116,1091,1103,1104,1106,469,472,639,504] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1860,1858,1859,1373,1376,2174,1449,1450,1816,2167,1424,1445,1407,1410,1412,2183,1825,1830,1832,2182] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [6309,6313,6314,6315,6322,6285,6286,6287,5876,5879,5865,5867,5871,5828,6622,6636,6638,6271,6274,6630,6280,5904,5905,6637,6629,5829,5831] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2626,5094,5098,5102,5126,4959,4926,5587,5588,5546,5571,6788,5096,5543] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [4043,4044,4047,4009,2434,3596,3598,3599,2398,3597,2399,4040,2403,2442,2443,2441,2444] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [919,952,942,2419,2422,944,2230,2227,2216,2218,2223,917] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [5665,7935,7936,5652,5653,7558,7937,7275,7567,7892,7559,7898,7893] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        