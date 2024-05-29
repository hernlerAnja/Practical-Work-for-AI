
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
        
        load "data/3VS1.pdb", protein
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
 
        load "data/3VS1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3253,3254,3255,6750,6751,6752,3351,3352,6848,6834,6843,6619,6621,6588,6555,3286,3276,3277,3307,3310,3281,3285,3306,3337,3275,3278,777,779,3376,599,598,786,3375,778,6849,6872,6873,3058,3091,3097,4213,6883,3093,3122,3124,3216,3098,6775,6776,6777,6778,6783,6807,6773,6774,6799,6803,6804,6755,6596,6781,6594,6595,6713,6782,4204,4205,4206,4025,4026,4033] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5137,5138,5139,5981,5350,5985,5471,5472,5456,5909,5496,5516,5519,5910,5523,5548,5515,5493,5977,5978,5885,5892,5893,5894,4971,4966,4969,4964,4965,4970,5022,5021,5135,5123,4968,5492] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2413,2026,2480,2388,2396,1525,1640,1642,2484,2018,2019,2022,1472,1474,1524,1468,1469,1471,1523,1852,1854,1853,2412,1974,2486,1975,2481,2485,2488,1959,1626,1634,1638,1996,1999,1991,1993,1995] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4352,4363,6823,6787,4056,4057,4058,4059,6795,6836,6824,6826,6812,4367,5679,5646,5657,5680,5682,4037,4092,4094,4036,4055,4061,4065,5645,5650,5647,5651,6837,4343,6898,4377,4378,6862,6866,6868] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2161,630,631,667,2148,2149,2150,2160,2159,925,931,609,638,2183,2184,2185,2182,610,3298,3290,632,3326,3327,3328,3329,3331,916,934,936,3311,3325,3339,3322,634,627,937,940,2176,2151] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [985,989,988,990,992,1096,1003,1006,1095,1097,997,999,1030,1046,3396,967,978,970,838,1168,1008,1131,1132,1133,3416,1184,3417,1007,3411] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [5137,5139,5982,5981,6001,6002,6005,6007,5154,5224,5225,5226,5274,5367,5243,5250,5253,5244,5985,5472,5366,5456,5999,6000,5455,5457] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1753,1756,1870,1959,1958,1729,1752,1728,1871,2485,1776,1777,2502,2503,1747,1640,2484,1657,2510,2504,2505] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3490,3492,4757,3924,3925,3478,3480,4753,3491,4752,3947,3954,3928,3852,4773,4774,4775,3981,3940,3972,3949,3995,3991,4078,3984,3987,3989,3994,4011] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [589,779,606,778,2238,618,590,617,3273,3302,2235,2236,2237] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [53,1256,51,63,64,65,497,54,1277,425,520,522,1255,526,513,1260,560,545,554,564,501,498] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [6770,6798,4043,4044,5733,5734,5735,4017,4045,4034,4016,4206,6797,6799] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1327,1330,114,115,287,289,113,142,393,394,129,133,136,396,286,284,1331,1323] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6639,6235,6204,6343,6342,6432,6641,6470,6474,6635,6637,6640,6480,6642] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3140,2846,2978] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        