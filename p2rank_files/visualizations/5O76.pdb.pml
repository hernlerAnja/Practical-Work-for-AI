
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
        
        load "data/5O76.pdb", protein
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
 
        load "data/5O76.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6828,6831,8239,8186,8240,6813,6823,6826,6827,3525,3341,3352,3355,3529,3338,3521,3523,3559,6817,3527,3570,3572,8453,3556,3557,3558,3607,8161,3599,6808,6810,3597,3608,3354,8222] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5012,5013,4964,5630,5632,5634,5635,6336,6332,6334,6337,6333,6351,6354,6350,6077,6080,6065,6066,6081,6082,6107,6095,6088,6090,6086,6087,5626] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1135,2213,2214,1133,1787,1793,1749,1753,1755,2507,2212,2459,2189,2203,1756,1758,1086,2208,2211,2204,2470,1974,2457,2460,1991,1992,2501,1926,2514,1936,1937,1940,1781,1789,1099,1815,1084,1057,1059] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3646,3649,3650,3651,7813,3647,7805,3230,3485,3486,7814,7804,7810,3483,3480,3229,3331,3396,3397,7822,3477,3479] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [5074,5796,5768,5804,6380,6381,5187,5189,5766,5190,5076,5185,5149,5067,5109,5180,7563,7564,7565,7537,7540,5194,7315,5196,7539,5842] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [7343,7326,7328,7337,7342,7507,7340,7334,8578,7505,7508,7503,7504,7336,8586,7095,7096,8573,8571,9215,7150,7254] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3707,3708,1313,1317,1303,1308,1310,1312,1272,1273,1231,1232,1965,1925,1919,3706,2503,2504,3682,3683,1163,1162,1890,1891,1927,1884,1888,1197,1199] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6848,6028,6029,8264,8261,8265,8266,8270,8271,8272,8246,8273,8022,6849,8160,8161,8162,8240,8125,6854,5987,5988,5992,6893,8274,6866,5979,6030,6031,5981] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [9012,7198,9010,8950,7195,7384,7416,7456,7427,7429,9238,8924,8926] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4154,4877,4880,4161,4164,4145,4148,4889,4923,4924,6144,4919,4955,4956,4196,6132,6135,4185,6112,6142,6143,6130,4199,4189,4183,6131,4832,4833] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3263,8206,8207,8211,8399,3272,3273,3259,3361,3267,3327,8428,3332] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2713,2681,2688,2711,3836,3844,2684,3843,3821,3822,3620,2712,3577,3588,3593,2497,3823] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [7186,7218,8970,8971,8976,7189,7130,7120,9212] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        