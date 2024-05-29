
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
        
        load "data/8EXV.pdb", protein
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
 
        load "data/8EXV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5423,5167,5210,5402,5403,5421,5178,5179,6321,5842,5840,6322,5232,5164,5814,6412,6401,6404,6405,6406,6409,6296,6403,5168,5883,5884,5859,5486,5714,5716,5793,5794,5715,5798,5713,5817,5815,5810,5811,5805,5809] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4329,4330,4279,4280,4281,4282,4283,4284,3963,4247,4246,3964,4248,522,5036,5037,5045,5535,3962,3966,3968,3994,3999,4000,5532,3965,5026,5734,5030,5719,5722,5027,5802,5038,4001,5498,5725,5494,5531,5521,5523,5527,5528,5709,5558,5559,5522,5560,5702,5799] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [4239,4550,489,4240,1430,1450,4543,4582,478,480,1447,452,453,387,390,391,4552,4578,4580,5007,5008,5009,4579,4581,498,500,488,1443,1437,1429,451,486,450,1111,1113,5068,1112,5002,4992,4545,4536,4544,4540,4533,1459,1462,1463,1477,1473,4529,4524,366,365] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4083,234,232,233,2370,2360,2363,4095,4097,2596,2602,2604,2607,2608,2595,2601,2443,2329,2332,2333,2357,2412,2439,2438,2411,2437,2336,2326,2328,4107,216,217,218,4426,2372,4106,4108] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3972,3973,5595,5633,5594,3950,3940,538,3949,540,544,3969,523,1232,1234,539,1231,522,5557,5558,5559,5560,5586,5634] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2577,2576,2587,2306,2566,2583,2584,2585,2586,4054,2590,2592,4402,4403,4404,2481,6990,4067,4065,6982,7039,7040,7041,2501,2502,2473,2303,2486,2479,2565,2522,7036] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5595,5633,5593,5594,538,5622,609,1292,1232,1234,539,1230,1231,1270,537,1261,1266,1267,1293,5584,5585,5586,5587,5626,5662,5557,5558,5560,1271,1300,5677,5686] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4319,4622,4644,4655,5751,5754,5745,4346,128,4347,4624,4342,4656,4680,4681,5774] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5342,5341,5038,5059,5060,1105,1122,1236,1241,5037,523,1228,1235] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3556,3559,3531,3547,3550,2919,2921,2929,2932,3327,3021,2951,3034,3035,3036,2952,3008,3009] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [6605,6688,6689,7343,6606,6735,6737,6559,7311,7312,7314,7310,7330] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4112,2367,4096,4098,4080,4089,2161,2162,3801,2389,4078,4118,4121,4125,4130,4131,3799,3800] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [5301,743,5293,5294,5295,1081,1082,1355,1133,1371,1369,1112,1435,5296] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [4434,4106,4108,4426,4410,4401,4427,4431,4422,2592,4053,2596,4083,4435,233] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2344,2404,1649,1667,2409,2711,2716,1654,2403] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [37,1511,1510,69,151,70,1521,186,185,1519] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        