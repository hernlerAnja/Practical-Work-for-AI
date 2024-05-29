
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
        
        load "data/3DDP.pdb", protein
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
 
        load "data/3DDP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [100,145,147,96,98,89,91,92,93,94,95,146,692,699,706,691,107,514,655,1091,1092,645,646,647,648,650,248,669,671,675,513,1163,1164,1168,265,1171,101,108,1075,1063] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5610,5611,5222,5225,5191,5194,4617,4613,4614,4615,4619,4620,4622,5033,5682,5683,4789,5687,5690,4631,4632,4634,5164,5165,5166,4772,4669,4670,4671,5174,5582,5594] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [7995,7996,5090,5085,5088,7966,7992,7993,7971,7959,7965,30,31,5099,7962,7561,7562,228,192,545,547,535,544,536,539,4,41,42,19,1,2,3,40,639,242] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2892,1256,1257,1258,1241,1248,2894,2898,2899,2901,4407,2906,2902,3202,1260,1214,3203,1213,3559,3562,3743,3741,3595,3597,1243,2908,2909,2910,3571,2907,1215,3568,1218,1219,1227,1228,3569,3570,3712,3715,3722,4416] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3471,3472,3473,3474,3475,3040,3450,3041,3451,5064,5066,4527,4528,4716,4565,4566,3438,3440,3441,3442,3443,3407,3409,4555,580,4526,4545,4546,4547,4525,4530,585,4552,3410,3411,566,574,579,567,5054,5063,3031,4752,5055,5058,5158] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2426,1432,1438,1449,1846,1837,2202,2203,2204,2411,1851,1852,1853,1879,1881,1445,2195,1395,2196,2425,2417,1455,2194] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [5775,5777,8262,8263,8935,8937,8927,5747,8085,5760,8117,8118,8243,8147,8149,8233,8236,5762,7427,7430,8083,7410,7413,7415,8089,7422,5778,5779] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [521,656,7201,659,1150,7200,7196,539,1108,1121,7216,7217,229,7568,486,488,489,1149,1133,2354,664,233,689,7198] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5643,5627,5640,5207,5196,4757,5183,5040,5175,5178,5669,3047,4753,5058,4750,5180,2675,2695,2694,5007,5652,5008,5005,6873] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6961,8157,8166,8154,8155,8122,7005,8611,8614,8167,8579,8165,8168,7002,7004,7006,6957] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3633,3634,3645,3646,3647,3636,2431,2434,4058,2475,2476,2477,2478,2479,4089,4090,4093,2493] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [6952,5961,5964,5965,5968,6365,6400,5950,5952,5951,6722,6723,6938,6951,6953,6356,5913,6713,6714,5974] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [7478,7481,7484,7450,7475,7477,7512,8318,8373,8359,8308,8312,8057,8067,7129,7132,7133,7143,8387,8357,8358,8367,8368,8370,8074,8075,8431,8310,8409,8062,8065,8068,8410,7142] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2929,2956,2933,2991,3797,3791,3793,3536,3541,3547,3552,3554,3866,3847,3852,3837,3888,3889,3883,3910,3789,3787,2621,2622,2957,2960,2963] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [5747,8085,8116,5746,5760,8117,8118,5771,5776,5777,5737,5738,8091,5797,5779,7724,7427,7428,7429,7430,8089,8090] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [6530,6532,6534,6153,6152,6290,6647,6563] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5809,5705,5707,5804,5825,5711,5712,4918,5807,7737,4889,4896,4888] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4584,4797,4798,4815,4682,5122,5123,5124,5143] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        