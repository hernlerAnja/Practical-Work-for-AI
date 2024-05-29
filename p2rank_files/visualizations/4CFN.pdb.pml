
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
        
        load "data/4CFN.pdb", protein
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
 
        load "data/4CFN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5576,5648,5577,4876,5649,5650,5539,5116,5117,4719,4980,5111,5112,5114,4617,5167,5168,5175,5182,5166,5141,5149,4563,4564,5653,5654,5656,4582,5560,4616,4618,4571,4578,4579,4736,4592,4560,5541,5542,5543] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [1093,103,157,108,657,259,1092,637,654,629,628,632,158,630,111,104,651,665,683,698,1071,1165,1169,1164,1076,1055,1172,495,496,276,392,633,119] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3678,3648,3651,3562,3564,3532,1281,1242,1219,1220,1228,1229,1253,2857,2858,3154,2859,3497,3498,2861,3533,3504,3505,3506,3507,1257,1258,1259,1261,2843,2853,3679,2845,2849,3653,3658,4349,4351,3677,4337,4342,1215,1216,3153,3627,3625,4363] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [6873,5962,5963,6722,6884,6886,5956,5964,5968,6683,6689,6678,6867,6896,6898,5724,6866,5710,5711,6923,5735,5736,5930,5931,5940,5951,5955,6679,6680,6682,5727,5730] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5741,7994,5726,5728,7315,7319,7960,5743,5745,5742,7305,7959,7311,8140,8141,8024,8026,8113,8120,8811,8813,7995] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2198,2199,1484,2195,2196,2202,2205,1478,1479,2413,2422,2408,2409,2412,2410,1472,1240,1243,1246,1226,1231,1251,2433,2435,1238,1446,1456,1467,1252,1445,1447,1471,2194,2201] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2883,3490,2881,3733,3725,3846,3773,3802,3772,3783,3727,3729,3723,3774,3782,3722,3478,3481,3483,3484,3819,3824,3825,2880,2907,2908,2905,2942,3788,2572,2573,2911,2914,3473,2530,2559,2555] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [8195,7342,7345,7952,7367,7404,7369,7370,8184,8185,8187,8308,8236,8250,7163,7021,7025,7034,7035,8264,8286,8287,8234,8235,7935,7940,7943,7945,7376,7373,8191] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4499,4511,4513,4663,4699,4502,5002,4512,5105,4465,4464,5011,5013,4468,4469,5010] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2197,2195,2196,1446,1456,1443,1445,1447,1433,1838,1847,1852,1853,1854,1880,1882,1432,2189] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [5721,6862,6893,6894,6895,6872,6865,8492,8493,7999,8000,8032,8045,8004,8034,8044,6900,6903,6904,8489,8490,6899] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [7319,7616,7960,5743,5745,5742,5737,5741,7994,5726,7320,7321,5765,5763,5704,5703,5712,5713,7962,7966,7967,7995] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [68,67,169,184,266,25,47,46,56,63,604,284,606,285,605,21,22] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [6331,6679,6680,5879,6673,6322,6325,5930,5931,5940,6366,6373,6364,6336,6338,5927,5918] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [4744,5071,5089,5090,4624,4625,4626,4627,4629,4530,4506,4523,4524,4527,4644,4623,4507,4726,4481,4482,4485] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1106,1109,1134,661,671,1122,641,1151,638,659,646,1121,2355,471] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [2434,3569,3570,3572,3581,3583,3537,2431,4031,3582,4027,2414] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        