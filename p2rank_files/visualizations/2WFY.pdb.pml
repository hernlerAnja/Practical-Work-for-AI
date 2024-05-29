
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
        
        load "data/2WFY.pdb", protein
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
 
        load "data/2WFY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3412,4468,4492,4502,5016,5000,5001,5003,3410,3411,556,3378,3380,5017,4483,4484,3419,3387,3376,2977,2978,4653,4689,4990,4991,4992,4994,4995,4503,5095,554,563,555] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [524,533,534,536,551,7905,7454,7462,7463,7464,7873,186,525,35,36,628,222,527,25,16,1,17,528,5023,7896,7897,7898,5022,7863,7865,5031] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [5547,5131,5548,4550,5162,4551,4554,5139,4553,4969,4970,5619,5626,5627,5519,5520,4562,4725,4726,4606,4607,4608,4569,5104,5106,5101,5102,4709] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1158,1160,102,141,95,661,664,1080,1081,680,695,721,1159,259,502,644,637,639,634,139,140,83,85,89,90,242,87,1152,1153,1064,1052,1053,1056] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [5675,5701,5695,5698,5699,5909,6876,6896,6897,6877,6878,5919,5922,5923,8027,8028,6905,5684,5686,8029,5694,5700,6859,8061,8018,8021,8060,6932,5679,6933,5681,5924,5929,5931,5935] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1462,1442,1452,1455,1457,2195,2408,2387,1464,1468,2185,2391,2392,1228,1231,2405,2390,2447,1212,1214,1208,1209,1463,3574,1233,3543,3544,2419,2446,1219] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2900,3826,3827,3804,2891,3729,3735,3821,3825,3848,3486,3492,3727,3775,3790,3725,3776,3731,3785,3787,2866,2897,3475,3480,2558,2559,2894,2928] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [7352,7971,7966,7969,7972,7978,8290,8313,8334,8311,8312,8261,8211,7377,8221,7414,8276,7383,7386,7380,7379,7031,7045,7027,7044,7028,7961] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1233,3534,3535,3564,3679,3680,3566,3648,3649,3655,4351,4353,4355,3660,4339,3650,2835,2836,2838,1226,3499,3500,1232] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [6327,6340,6289,6298,6303,6304,6332,6331,6656,5923,6647,5849,5846,5847,5883,5884,6292,6333,6655,5897,5885,5880] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2610,2613,2614,4978,5112,5116,5606,2612,2631,2632,4942,4944,4945,5120,5135,6806,5564,5589,5579,5561] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [7985,8020,8052,8165,8167,8021,5692,7315,5700,5693,7986,7321,7322,7324,8839,8841,7317,8135,8136,8142,8146,8139,8837] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1094,1097,1112,1113,7098,512,653,649,1139,645,7118,475,477,478,1122] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1430,1418,1456,2196,2186,2187,1379,1822,1860,1865,1866,1873,1416,1413] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [8481,8515,8516,8512,8070,8071,6869,6870,8058,8518,6913,6914,6915,6916,6871,6906] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        