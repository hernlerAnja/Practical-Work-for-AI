
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
        
        load "data/3MJW.pdb", protein
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
 
        load "data/3MJW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3170,3193,3194,3199,3204,3203,3205,3207,3206,3173,460,461,462,994,902,992,993,1009,1011,1029,1030,1031,999,3218,3227,3506,3555,3556,4707,3507,3508,3511,3509,3197,3477,3510,3512,4247,4250,4249,4259,4272,3476,882,883,884,4263,4264,4265,901,3235,3224,3554,4708,4902,4729,4728,4730,4731,4758,4759,4871,4853,1032,1033,1034,4733,4886,4732,4869,4892,4889,4772,4753,4761,4785,4755,4762,4764,4765,4766,4756,4795,4797,1057,4760,4835,4836,4844,4823,4829,1053,1054,1023,1026,538,1055,1056,5928,5952,5953,4804,528,530,5930,5931,5929,476,477,996,998,3157,3174,4796,488,997,1024,3149,2941,3180,3181,3182,2935,2939] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4581,4441,4442,4580,4374,4375,4361,4599,4601,5561,5562,4387,4420,4986,5553,5551,5554,5473,5474,4985,5009,5010,5556,5559,5534,5446,5449,5023,5458,5450,4393,4386,4638,4667,4962,4963,4964,4968,4980,4878,4880,4879,4881,4982] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4273,4274,4268,891,892,894,903,4269,442,893,901,882,883,884,4263,4264,4265,3473,3474,3477,4272,3496,4270,3475,440,3466,3468,423,441,424,912,1154,3463,3464,3798,902,992,993,1000,1009,1011,900,999,1003,460,462,994,3498,4227,4228,4229,3822,3823,4291,4293,1183,3790,3797,1191,3824,3788,3789,3814] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [6003,6107,6083,6086,2097,2447,6034,6002,5972,2707,3012,3013,3014,3015,3024,2706,3007,1456,1457,1458,3026,3001,6035,5976,2436,2437,2680,2671,2669,2670,2976] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3669,2157,2160,229,230,177,183,186,187,198,205,206,196,1985,2152,2153,1895,197,2161,2166,3337,3670,3338,2154,2155,1897,1903,1901,222,1922,1929,3633,3641,2148,3642] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [6017,6019,6024,6027,5995,5997,6026,4654,4689,4691,6018,4659,6051,6055,6075,4655,4656,6099,5577,5590,5591,5588,5385,5400,6097,6095,6096,6124] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [611,626,1092,1093,1094,1095,601,963,700,964,698,688,962,1018,1019,1047,708,846,754,756,757,738,777,778,781,923,1112,919,920,624] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6043,6044,6045,6046,6052,6056,6057,6038,6039,4648,6053,2112,6063,2125,4644,4631,4646,4629,2074,2093,3607,4926,2124,3636,3638,3289,3589,3617,3618,3614] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1848,1378,1558,1559,1560,1860,1859,1351,1352,2230,1570,1563] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [623,661,625,1127,791,622,641,781,789,813,765,672] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [502,712,967,970,708,711,1018,1047,572,601,963,535] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1404,1790,1791,2094,2100,2102,2133,2134,1841,1453,1458,1434,1435,2129] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5401,5363,5572,5334,5336,4723] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        