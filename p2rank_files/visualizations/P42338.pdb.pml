
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
        
        load "data/P42338.pdb", protein
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
 
        load "data/P42338.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6588,6803,6807,6815,5463,5465,6162,5460,5462,5464,5466,5467,5432,5435,6167,6173,6169,6171,5186,5189,5509,5510,6618,6619,5155,5185,5153,5154,5156,6617,6644,6647,5158,5165,6643,6784,6799,6800,5164,1453,6172,5193,6585,6607,6610,6806] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [6318,7533,7525,6303,6304,6515,6516,6579,6580,7526,7529,7531,6877,6496,6798,6876,7521,7524,6372,6373,6900,6882,6894,6892,6929,7442,7443,7506,6934,6918,6928,6956,7416,7418,8595] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [8126,8129,8130,5568,3768,3770,3752,5248,5587,5245,5246,8128,5569,8121,3753,3737,3741,5580,3858,3861,3863,3559,5576,3838,3849,3850,3855,3837,3853] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [156,155,6057,135,367,370,363,194,196,6056,197,5847,5848,830,151,5822,5824,807,376,378,806,808,6078] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1394,2086,2088,2090,2092,1360,1362,1363,1364,1970,1988,1968,1777,2094,1781,1811,1784,1788,1972,1787,2095,2104] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [8123,8191,8192,4919,4921,8075,8099,4672,8071,4403,8068,4404,4414,4950,5262,4942,4944,4945,4946,3852,3853,2924,4964,8100,8074,5259] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [3668,3886,3691,3694,3700,3711,3663,3871,5276,3869,3586,3588,3582,3583,1147,1149,1144,3623,1139,1140,3612,3617,5287,1133,3887,3879,3880,3881,1156,5296] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5814,5784,5789,780,1020,1022,5791,5792,5793,812,813,5756,5759,997,5758,5760,779,756,5794,778,1000,783,1001,752] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [5805,5807,5831,6156,5774,5798,6135,6868,6869,6487,6157,6208,6380,6400] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3514,3515,3005,3007,2984,2986,2987,2856,2857,2992,3478,3480,3460,2876,3459,3512] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5420,5712,2373,2374,2372,5746,6142,6144,6139,1431,2053,2054,2075,2018,6201,5736,5737] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5803,5806,6828,6826,5523,5500,6857,5839,6830,6833,5815,5841,5784,5526,5529] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6671,6709,6710,2206,6708,1472,1473,2194,2191,2225,2227,6744,1500,6707,6678,2164,2166] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [6318,7533,6532,6515,6516,6534,6535,6536,6316,6541,6579,6580,7532,7546,7531,6877] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [3851,3852,3853,2924,3789,3782,3784,2922,8123,8186,8192,3844,3845,3796,3794,3810,8177,8181,8183,3783] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8234,8236,8238,8267,8265,8258,8264,7596,7343,7345,8403,8404,8366,8405,7695,7689,7693,7696,8260,8259] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [7875,7770,7879,7881,7882,7877,7878,7771,8446,7739,7741,7880,8442,8445,7848,7804,7852,7832,7805] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [6388,6479,6387,6468,6473,6478,6267,6469,6892,6372,6370,6898,6902,6904] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        