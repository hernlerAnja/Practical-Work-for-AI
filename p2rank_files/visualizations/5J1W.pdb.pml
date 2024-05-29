
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
        
        load "data/5J1W.pdb", protein
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
 
        load "data/5J1W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5697,5835,5836,6926,6682,6924,6925,6927,5834,6917,6918,6919,5928,5926,6940,6941,5956,5851,5898,5931,6108,6246,6248,6250,6245,6109,6658,6659,7078,5686,5687,5691,5682,5694,5696,5679,6947,6948,7066,6642,7050,7055,5901,5903,5905,6670,6671,6672,6698,6699,6675,5667,5665,5666,5669,5671,5672,5715,5717,5663,5716,6255,6269,5820,5660,6289,6321,6280,5659,5661,5664,6272,6942,5892,7051] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4181,4182,4183,3946,4188,4189,4190,4191,3962,3929,3930,3547,3551,3579,3509,3093,3094,3109,3214,2950,2952,2955,2954,2973,2974,2975,2919,2917,2918,2924,3108,3366,3367,3503,3504,3506,3508,3533,3078,3531,3532,3963,3530,3538,3540,2921,2922,3513,3527,3147,2949,3159,3161,4212,3898,3899,3900,3916,4321,3917,4204,4205,4206,3156,3184,3145] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1163,1193,1194,1434,1436,1176,1177,794,798,1209,826,1435,780,760,1210,787,1208,774,777,785,1465,1145,1147,1457,1458,1460,1438,1442,1444,1443,1437,1563,1564,1565,1569,1574,1146,1164,1459,1461,198,202,340,220,221,222,337,753,755,171,164,165,170,166,168,325,751,772,187,191,192,196,197,199,201,177,433,436,356,461,341,394,403,406,408,431,355,432,430,429] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3842,6155,5935,5971,5964,3815,3817,3810,3843,3809,3808,5974,5933,5936,5937,5938,5940,3343,3341,3286,3293,3291,3295,3296,5965,6156,5912,6217,6219,6174] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [6675,6308,7090,7290,7344,7287,7339,6674,6665,7328,7329,7330,7332,6377,7326,6340,6339,6310,6312,6379,7074,7075] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3286,3289,3293,3311,3291,3295,3296,3310,5882,3319,5911,5937,5938,5940,5877,5879,6199,6201,6174,5867,5868,5912,6217,6219] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [815,817,1185,1183,1181,813,1594,1596,1606,1607,1807,1170,1171,1861] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [903,898,913,918,919,1348,946,1366,1365,871,1352,835,1361,1367,1371,908,1373] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4354,4352,3938,3566,3568,3570,4608,3637,3639,4341,4342,4343,3923,4609,4554] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [6403,6330,6398,6408,6441,6837,6841,6844,6849,6850,6413,6414,6393,6366] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [7205,7204,7130,7045,7043,7034,7173,7175,7172,6631,7240,7203,7103,7093] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4251,4252,3858,3262,3263,3264,3265,3266,3847,4231,4233,4235,4230,3261,4232,4234,3856] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [6173,6174,6159,6162,6169,6156,3858,3295,3264,3265,3266,3850,3847] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        